


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."dashboard_total_enrollment_payments"() RETURNS numeric
    LANGUAGE "sql"
    AS $$
  select coalesce(sum(amount),0)
  from payment_table
  where is_voided = false;
$$;


ALTER FUNCTION "public"."dashboard_total_enrollment_payments"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_total_expenses"() RETURNS numeric
    LANGUAGE "sql"
    AS $$
  select coalesce(sum(revenue),0)
  from revenue_detail
  where transaction='EXPENSES'
    and type='expense';
$$;


ALTER FUNCTION "public"."dashboard_total_expenses"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_total_revenue"() RETURNS numeric
    LANGUAGE "sql"
    AS $$
  select coalesce(sum(total_revenue),0)
  from revenue_day;
$$;


ALTER FUNCTION "public"."dashboard_total_revenue"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_total_service_payments"() RETURNS numeric
    LANGUAGE "sql"
    AS $$
  select coalesce(sum(fee),0)
  from extraservices_table
  where is_voided = false;
$$;


ALTER FUNCTION "public"."dashboard_total_service_payments"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_total_students"() RETURNS bigint
    LANGUAGE "sql"
    AS $$
  select count(*) from student_table;
$$;


ALTER FUNCTION "public"."dashboard_total_students"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_totals"() RETURNS json
    LANGUAGE "sql" STABLE
    AS $$
select json_build_object(
  'total_students',
  (select count(*) from student_table where deleted_at is null),

  'total_service_payments',
  (select coalesce(sum(fee),0) from extraservices_table where is_voided = false),

  'total_enrollment_payments',
  (select coalesce(sum(amount),0) from payment_table where is_voided = false)
);
$$;


ALTER FUNCTION "public"."dashboard_totals"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."dashboard_totals_fast"() RETURNS TABLE("total_students" bigint, "total_service_payments" numeric, "total_enrollment_payments" numeric)
    LANGUAGE "sql"
    AS $$
  SELECT
    (SELECT COUNT(*) FROM student_table WHERE deleted_at IS NULL),
    (SELECT COALESCE(SUM(fee), 0)
     FROM extraservices_table
     WHERE is_voided = false),
    (SELECT COALESCE(SUM(amount), 0)
     FROM payment_table
     WHERE is_voided = false);
$$;


ALTER FUNCTION "public"."dashboard_totals_fast"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."generate_student_id_int"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  current_year INT := EXTRACT(YEAR FROM NOW())::INT;
  next_no INT;
  new_counter INT;
BEGIN
  /*
    1. Try to find the smallest missing student_no for the year
       (reuse gaps)
  */
  SELECT (current_year * 10000 + gs) INTO next_no
  FROM generate_series(1, 9999) gs
  WHERE NOT EXISTS (
    SELECT 1
    FROM student_table s
    WHERE s.deleted_at IS NULL
      AND s.student_no = (current_year * 10000 + gs)
  )
  ORDER BY gs
  LIMIT 1;

  IF next_no IS NOT NULL THEN
    NEW.student_no := next_no;
    RETURN NEW;
  END IF;

  /*
    2. Fallback: generate new number using counter
  */
  INSERT INTO student_year_counters (year, counter)
  VALUES (current_year, 1)
  ON CONFLICT (year) DO UPDATE
    SET counter = student_year_counters.counter + 1
  RETURNING counter INTO new_counter;

  NEW.student_no :=
    (current_year::TEXT || LPAD(new_counter::TEXT, 4, '0'))::INTEGER;

  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."generate_student_id_int"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."ligmon data"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$DECLARE
  sid text;
BEGIN
  -- stable student identifier as text: prefer non-empty NEW.student_id, else use NEW.id
  sid := COALESCE(NULLIF(NEW.student_id, ''), NEW.id::text);

  -- If mode is ligmon -> upsert into ligmon
  IF lower(coalesce(NEW.mode_of_enrollment::text, '')) = 'ligmon' THEN

    INSERT INTO public.ligmon (
      student_id,
      lastname,
      firstname,
      middlename,
      date_of_birth,
      age,
      contact_no,
      email_address,

      payment1, payment2, payment3, payment4, payment5,
      mode_of_payment1, mode_of_payment2, mode_of_payment3, mode_of_payment4, mode_of_payment5,
      date_of_payment1, date_of_payment2, date_of_payment3, date_of_payment4, date_of_payment5,
      balance1, balance2, balance3, balance4, balance5,
      remarks1, remarks2, remarks3, remarks4, remarks5
    )
    VALUES (
      sid,
      COALESCE(NEW.lastname, ''),
      COALESCE(NEW.firstname, ''),
      COALESCE(NEW.middlename, ''),
      NEW.date_of_birth,
      NEW.age,
      COALESCE(NEW.contact_no, ''),
      COALESCE(NEW.email_address, ''),

      NEW.payment1, NEW.payment2, NEW.payment3, NEW.payment4, NEW.payment5,
      COALESCE(NEW.mode_of_payment1, ''), COALESCE(NEW.mode_of_payment2, ''), COALESCE(NEW.mode_of_payment3, ''), COALESCE(NEW.mode_of_payment4, ''), COALESCE(NEW.mode_of_payment5, ''),
      NEW.date_of_payment1, NEW.date_of_payment2, NEW.date_of_payment3, NEW.date_of_payment4, NEW.date_of_payment5,
      NEW.balance1, NEW.balance2, NEW.balance3, NEW.balance4, NEW.balance5,
      COALESCE(NEW.remarks1, ''), COALESCE(NEW.remarks2, ''), COALESCE(NEW.remarks3, ''), COALESCE(NEW.remarks4, ''), COALESCE(NEW.remarks5, '')
    )
    ON CONFLICT (student_id) DO UPDATE
    SET
      lastname = EXCLUDED.lastname,
      firstname = EXCLUDED.firstname,
      middlename = EXCLUDED.middlename,
      date_of_birth = EXCLUDED.date_of_birth,
      age = EXCLUDED.age,
      contact_no = EXCLUDED.contact_no,
      email_address = EXCLUDED.email_address,

      payment1 = EXCLUDED.payment1,
      payment2 = EXCLUDED.payment2,
      payment3 = EXCLUDED.payment3,
      payment4 = EXCLUDED.payment4,
      payment5 = EXCLUDED.payment5,

      mode_of_payment1 = EXCLUDED.mode_of_payment1,
      mode_of_payment2 = EXCLUDED.mode_of_payment2,
      mode_of_payment3 = EXCLUDED.mode_of_payment3,
      mode_of_payment4 = EXCLUDED.mode_of_payment4,
      mode_of_payment5 = EXCLUDED.mode_of_payment5,

      date_of_payment1 = EXCLUDED.date_of_payment1,
      date_of_payment2 = EXCLUDED.date_of_payment2,
      date_of_payment3 = EXCLUDED.date_of_payment3,
      date_of_payment4 = EXCLUDED.date_of_payment4,
      date_of_payment5 = EXCLUDED.date_of_payment5,

      balance1 = EXCLUDED.balance1,
      balance2 = EXCLUDED.balance2,
      balance3 = EXCLUDED.balance3,
      balance4 = EXCLUDED.balance4,
      balance5 = EXCLUDED.balance5,

      remarks1 = EXCLUDED.remarks1,
      remarks2 = EXCLUDED.remarks2,
      remarks3 = EXCLUDED.remarks3,
      remarks4 = EXCLUDED.remarks4,
      remarks5 = EXCLUDED.remarks5;

  -- if NOT ligmon, delete from ligmon
  ELSE
    DELETE FROM public.ligmon WHERE student_id = sid;
  END IF;

  RETURN NEW;
END;$$;


ALTER FUNCTION "public"."ligmon data"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."revenue_summary_all_time"() RETURNS TABLE("total_revenue" numeric, "total_expenses" numeric)
    LANGUAGE "sql"
    AS $$
  SELECT
    (SELECT COALESCE(SUM(total_revenue), 0) FROM revenue_day),
    (SELECT COALESCE(SUM(revenue), 0)
     FROM revenue_detail
     WHERE transaction = 'EXPENSES' AND type = 'expense');
$$;


ALTER FUNCTION "public"."revenue_summary_all_time"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."revenue_summary_range"("from_date" timestamp with time zone, "to_date" timestamp with time zone) RETURNS TABLE("revenue" numeric, "expenses" numeric)
    LANGUAGE "sql"
    AS $$
  SELECT
    (SELECT COALESCE(SUM(total_revenue), 0)
     FROM revenue_day
     WHERE created_at BETWEEN from_date AND to_date),
    (SELECT COALESCE(SUM(revenue), 0)
     FROM revenue_detail
     WHERE transaction = 'EXPENSES'
       AND type = 'expense'
       AND created_at BETWEEN from_date AND to_date);
$$;


ALTER FUNCTION "public"."revenue_summary_range"("from_date" timestamp with time zone, "to_date" timestamp with time zone) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."sweep data"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$DECLARE
  sid text;
BEGIN
  -- Determine stable student identifier
  sid := COALESCE(NULLIF(NEW.student_id, ''), NEW.id::text);

  -------------------------------------------------------------------
  -- CASE 1: Mode is SWEEP → INSERT or UPDATE
  -------------------------------------------------------------------
  IF lower(coalesce(NEW.mode_of_enrollment::text, '')) = 'sweep' THEN

    INSERT INTO public.sweep (
      student_id,
      lastname,
      firstname,
      middlename,
      date_of_birth,
      age,
      contact_no,
      email_address,
      session_schedule,
      status,
      test_type,
      testing_partner,
      country_of_destination
    )
    VALUES (
      sid,
      COALESCE(NEW.lastname, ''),
      COALESCE(NEW.firstname, ''),
      COALESCE(NEW.middlename, ''),
      NEW.date_of_birth,
      NEW.age,
      COALESCE(NEW.contact_no, ''),
      COALESCE(NEW.email_address, ''),
      COALESCE(NEW.session_schedule, ''),
      COALESCE(NEW.status, ''),
      COALESCE(NEW.test_type, ''),
      COALESCE(NEW.testing_partner, ''),
      COALESCE(NEW.country_of_destination, '')
    )
    ON CONFLICT (student_id) DO UPDATE
    SET
      lastname = EXCLUDED.lastname,
      firstname = EXCLUDED.firstname,
      middlename = EXCLUDED.middlename,
      date_of_birth = EXCLUDED.date_of_birth,
      age = EXCLUDED.age,
      contact_no = EXCLUDED.contact_no,
      email_address = EXCLUDED.email_address,
      session_schedule = EXCLUDED.session_schedule,
      status = EXCLUDED.status,
      test_type = EXCLUDED.test_type,
      testing_partner = EXCLUDED.testing_partner,
      country_of_destination = EXCLUDED.country_of_destination;

  -------------------------------------------------------------------
  -- CASE 2: Mode is NOT SWEEP → DELETE from sweep table
  -------------------------------------------------------------------
  ELSE
    DELETE FROM public.sweep WHERE student_id = sid;
  END IF;

  RETURN NEW;
END;$$;


ALTER FUNCTION "public"."sweep data"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_revenue_day_total"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
begin
  -- INSERT: add NEW.revenue to the corresponding revenue_day
  if (TG_OP = 'INSERT') then
    update public.revenue_day
      set total_revenue = coalesce(total_revenue,0) + coalesce(NEW.revenue,0)
      where id = NEW.revenue_day_id;
    return NEW;
  end if;

  -- UPDATE: adjust totals for affected days
  if (TG_OP = 'UPDATE') then
    -- If revenue_day_id changed: subtract OLD.revenue from old day, add NEW.revenue to new day
    if (NEW.revenue_day_id is distinct from OLD.revenue_day_id) then
      -- subtract old revenue from old day (if old id not null)
      if (OLD.revenue_day_id is not null) then
        update public.revenue_day
          set total_revenue = coalesce(total_revenue,0) - coalesce(OLD.revenue,0)
          where id = OLD.revenue_day_id;
      end if;

      -- add new revenue to new day (if new id not null)
      if (NEW.revenue_day_id is not null) then
        update public.revenue_day
          set total_revenue = coalesce(total_revenue,0) + coalesce(NEW.revenue,0)
          where id = NEW.revenue_day_id;
      end if;

    else
      -- same day: adjust by (NEW - OLD)
      if (NEW.revenue_day_id is not null) then
        update public.revenue_day
          set total_revenue = coalesce(total_revenue,0) + (coalesce(NEW.revenue,0) - coalesce(OLD.revenue,0))
          where id = NEW.revenue_day_id;
      end if;
    end if;

    return NEW;
  end if;

  -- DELETE: subtract OLD.revenue from the parent day
  if (TG_OP = 'DELETE') then
    if (OLD.revenue_day_id is not null) then
      update public.revenue_day
        set total_revenue = coalesce(total_revenue,0) - coalesce(OLD.revenue,0)
        where id = OLD.revenue_day_id;
    end if;
    return OLD;
  end if;

  return null;
end;
$$;


ALTER FUNCTION "public"."update_revenue_day_total"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."app_users" (
    "id" "uuid" NOT NULL,
    "role" "text" DEFAULT 'user'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()),
    "username" "text",
    "fullname" "text"
);


ALTER TABLE "public"."app_users" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."branches" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "branch_name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid"
);


ALTER TABLE "public"."branches" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."student_table" (
    "id" bigint NOT NULL,
    "lastname" "text",
    "firstname" "text",
    "middlename" "text",
    "date_of_birth" "date",
    "contact_no" "text",
    "email_address" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "edited_by" "uuid",
    "edited_at" timestamp with time zone,
    "created_by" "uuid",
    "student_no" integer,
    "deleted_at" timestamp without time zone,
    "photo_url" "text"
);


ALTER TABLE "public"."student_table" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."daily_enrollees" AS
 SELECT "date"("created_at") AS "date",
    "count"(*) AS "count"
   FROM "public"."student_table"
  GROUP BY ("date"("created_at"))
  ORDER BY ("date"("created_at"));


ALTER VIEW "public"."daily_enrollees" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."daily_enrollees_fast" AS
 SELECT "date"("created_at") AS "date",
    "count"(*) AS "count"
   FROM "public"."student_table"
  WHERE ("deleted_at" IS NULL)
  GROUP BY ("date"("created_at"))
  ORDER BY ("date"("created_at"));


ALTER VIEW "public"."daily_enrollees_fast" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."enrollment_table" (
    "id" bigint NOT NULL,
    "program_type" "text",
    "session_schedule" bigint,
    "status" integer,
    "review_fee" integer,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "test_type" "text",
    "testing_partner" "text",
    "country_of_destination" "text",
    "student_id" bigint,
    "mode_id" integer,
    "edited_by" "uuid",
    "edited_at" timestamp with time zone,
    "created_by" "uuid",
    "batch_no" integer,
    "branch" "text",
    "review_setup" "text",
    "validity_start" "date",
    "validity_end" "date",
    "branch_id" "uuid",
    CONSTRAINT "branch_check" CHECK (("branch" = ANY (ARRAY['TAGUM'::"text", 'DAVAO'::"text"]))),
    CONSTRAINT "review_setup_check" CHECK (("review_setup" = ANY (ARRAY['FACE TO FACE'::"text", 'ONLINE'::"text"])))
);


ALTER TABLE "public"."enrollment_table" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."daily_program_enrollees" AS
 SELECT "date"("s"."created_at") AS "date",
    "e"."program_type",
    "count"(*) AS "count"
   FROM ("public"."enrollment_table" "e"
     JOIN "public"."student_table" "s" ON (("e"."student_id" = "s"."id")))
  GROUP BY ("date"("s"."created_at")), "e"."program_type"
  ORDER BY ("date"("s"."created_at"));


ALTER VIEW "public"."daily_program_enrollees" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."daily_program_types" AS
 SELECT "date"("s"."created_at") AS "date",
    "e"."program_type",
    "count"(*) AS "count"
   FROM ("public"."enrollment_table" "e"
     JOIN "public"."student_table" "s" ON (("e"."student_id" = "s"."id")))
  GROUP BY ("date"("s"."created_at")), "e"."program_type"
  ORDER BY ("date"("s"."created_at"));


ALTER VIEW "public"."daily_program_types" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."enrollment_financials" AS
SELECT
    NULL::bigint AS "enrollment_id",
    NULL::integer AS "review_fee",
    NULL::bigint AS "total_paid",
    NULL::bigint AS "balance";


ALTER VIEW "public"."enrollment_financials" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."enrollment_modes" (
    "id" integer NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "fee" integer,
    "edited_by" "uuid",
    "created_by" "uuid",
    "edited_at" timestamp with time zone
);


ALTER TABLE "public"."enrollment_modes" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."enrollment_modes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."enrollment_modes_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."enrollment_modes_id_seq" OWNED BY "public"."enrollment_modes"."id";



ALTER TABLE "public"."enrollment_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."enrollment_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."extraservices_table" (
    "id" bigint NOT NULL,
    "enrollment_id" bigint,
    "name" "text",
    "fee" integer,
    "edited_at" timestamp with time zone NOT NULL,
    "remarks" "text",
    "date_of_payment" timestamp with time zone DEFAULT "now"(),
    "mode_of_payment" bigint,
    "edited_by" "uuid",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid",
    "is_voided" boolean,
    "voided_at" timestamp with time zone DEFAULT "now"(),
    "void_reason" "text",
    "receipt_no" "text"
);


ALTER TABLE "public"."extraservices_table" OWNER TO "postgres";


ALTER TABLE "public"."extraservices_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."extracharge_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."gallery" (
    "id" bigint NOT NULL,
    "name" "text",
    "details" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "storage_path" "text"
);


ALTER TABLE "public"."gallery" OWNER TO "postgres";


ALTER TABLE "public"."gallery" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."gallery_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."payment_mode" (
    "id" bigint NOT NULL,
    "name" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "edited_by" "uuid",
    "created_by" "uuid",
    "edited_at" timestamp with time zone
);


ALTER TABLE "public"."payment_mode" OWNER TO "postgres";


ALTER TABLE "public"."payment_mode" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."payment_mode_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."payment_table" (
    "id" bigint NOT NULL,
    "enrollment_id" bigint,
    "payment_no" integer,
    "amount" integer,
    "date_of_payment" "date" DEFAULT "now"(),
    "mode_of_payment" integer,
    "remarks" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "is_voided" boolean DEFAULT false,
    "voided_at" timestamp with time zone DEFAULT "now"(),
    "void_reason" "text",
    "receipt" "text",
    "edited_by" "uuid",
    "edited_at" timestamp with time zone,
    "created_by" "uuid",
    "revenue_detail_id" "uuid"
);


ALTER TABLE "public"."payment_table" OWNER TO "postgres";


ALTER TABLE "public"."payment_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."payment_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE OR REPLACE VIEW "public"."program_type_daily" AS
 SELECT "date"("s"."created_at") AS "date",
    "e"."program_type",
    "count"(*) AS "count"
   FROM ("public"."enrollment_table" "e"
     JOIN "public"."student_table" "s" ON (("s"."id" = "e"."student_id")))
  WHERE ("s"."deleted_at" IS NULL)
  GROUP BY ("date"("s"."created_at")), "e"."program_type"
  ORDER BY ("date"("s"."created_at"));


ALTER VIEW "public"."program_type_daily" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."revenue_day" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "revenue_date" "date" NOT NULL,
    "total_revenue" bigint DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "total_expenses" bigint DEFAULT '0'::bigint,
    "audited" boolean DEFAULT false,
    "audited_at" timestamp with time zone,
    "audited_by" "uuid",
    "branch_id" "uuid",
    "expenses_other_sources" bigint
);


ALTER TABLE "public"."revenue_day" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."revenue_detail" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "revenue_day_id" "uuid" NOT NULL,
    "transaction" "text" NOT NULL,
    "remarks" "text",
    "revenue" integer,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_by" "uuid",
    "edited_at" timestamp with time zone,
    "edited_by" "uuid",
    "receipt_no" "text",
    "type" "text",
    "mode_of_payment" bigint,
    "source_of_funds" "text",
    "student_id" bigint,
    CONSTRAINT "revenue_detail_revenue_check" CHECK (("revenue" >= 0))
);


ALTER TABLE "public"."revenue_detail" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."schedule_table" (
    "id" bigint NOT NULL,
    "schedule" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "edited_by" "uuid",
    "created_by" "uuid",
    "edited_at" timestamp with time zone
);


ALTER TABLE "public"."schedule_table" OWNER TO "postgres";


ALTER TABLE "public"."schedule_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."schedule_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."soa_table" (
    "id" bigint NOT NULL,
    "soa_no" "text" NOT NULL,
    "enrollment_id" bigint NOT NULL,
    "date_issued" timestamp with time zone DEFAULT "now"() NOT NULL,
    "total_payments" integer,
    "balance" integer,
    "payments_snapshot" "jsonb",
    "extras_snapshot" "jsonb",
    "generated_at" timestamp with time zone DEFAULT "now"(),
    "generated_by" "uuid",
    "status" "text" DEFAULT 'Active'::"text"
);


ALTER TABLE "public"."soa_table" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."soa_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."soa_table_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."soa_table_id_seq" OWNED BY "public"."soa_table"."id";



CREATE TABLE IF NOT EXISTS "public"."status_table" (
    "id" integer NOT NULL,
    "status_name" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "edited_by" "uuid",
    "created_by" "uuid",
    "edited_at" timestamp with time zone
);


ALTER TABLE "public"."status_table" OWNER TO "postgres";


ALTER TABLE "public"."status_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."status_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



ALTER TABLE "public"."student_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."student_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."student_year_counters" (
    "year" integer NOT NULL,
    "counter" integer NOT NULL
);


ALTER TABLE "public"."student_year_counters" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."transaction_table" (
    "id" bigint NOT NULL,
    "transaction_name" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_by" "uuid",
    "edited_at" timestamp with time zone,
    "edited_by" "uuid"
);


ALTER TABLE "public"."transaction_table" OWNER TO "postgres";


ALTER TABLE "public"."transaction_table" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."transaction_table_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."validity_settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "branch_id" "uuid" NOT NULL,
    "review_mode" "text" NOT NULL,
    "duration_value" integer NOT NULL,
    "duration_unit" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "edited_at" timestamp with time zone,
    "created_by" "uuid",
    "edited_by" "uuid"
);


ALTER TABLE "public"."validity_settings" OWNER TO "postgres";


ALTER TABLE ONLY "public"."enrollment_modes" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."enrollment_modes_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."soa_table" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."soa_table_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."app_users"
    ADD CONSTRAINT "app_users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."branches"
    ADD CONSTRAINT "branches_branch_name_key" UNIQUE ("branch_name");



ALTER TABLE ONLY "public"."branches"
    ADD CONSTRAINT "branches_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."enrollment_modes"
    ADD CONSTRAINT "enrollment_modes_name_key" UNIQUE ("name");



ALTER TABLE ONLY "public"."enrollment_modes"
    ADD CONSTRAINT "enrollment_modes_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_student_id_key" UNIQUE ("student_id");



ALTER TABLE ONLY "public"."extraservices_table"
    ADD CONSTRAINT "extracharge_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."gallery"
    ADD CONSTRAINT "gallery_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payment_mode"
    ADD CONSTRAINT "payment_mode_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."revenue_day"
    ADD CONSTRAINT "revenue_day_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."schedule_table"
    ADD CONSTRAINT "schedule_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."soa_table"
    ADD CONSTRAINT "soa_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."soa_table"
    ADD CONSTRAINT "soa_table_soa_no_key" UNIQUE ("soa_no");



ALTER TABLE ONLY "public"."status_table"
    ADD CONSTRAINT "status_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."student_table"
    ADD CONSTRAINT "student_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."student_year_counters"
    ADD CONSTRAINT "student_year_counters_pkey" PRIMARY KEY ("year");



ALTER TABLE ONLY "public"."transaction_table"
    ADD CONSTRAINT "transaction_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."validity_settings"
    ADD CONSTRAINT "validity_settings_branch_id_review_mode_key" UNIQUE ("branch_id", "review_mode");



ALTER TABLE ONLY "public"."validity_settings"
    ADD CONSTRAINT "validity_settings_pkey" PRIMARY KEY ("id");



CREATE UNIQUE INDEX "gallery_storage_path_uidx" ON "public"."gallery" USING "btree" ("storage_path");



CREATE INDEX "idx_enrollment_created_at" ON "public"."enrollment_table" USING "btree" ("created_at");



CREATE INDEX "idx_enrollment_session_schedule" ON "public"."enrollment_table" USING "btree" ("session_schedule");



CREATE INDEX "idx_enrollment_status" ON "public"."enrollment_table" USING "btree" ("status");



CREATE INDEX "idx_enrollment_student" ON "public"."enrollment_table" USING "btree" ("student_id");



CREATE INDEX "idx_enrollment_student_id" ON "public"."enrollment_table" USING "btree" ("student_id");



CREATE INDEX "idx_revenue_day_date" ON "public"."revenue_day" USING "btree" ("revenue_date");



CREATE INDEX "idx_revenue_detail_created_at" ON "public"."revenue_detail" USING "btree" ("created_at");



CREATE INDEX "idx_revenue_detail_day" ON "public"."revenue_detail" USING "btree" ("revenue_day_id");



CREATE INDEX "idx_soa_active_generated_at" ON "public"."soa_table" USING "btree" ("generated_at" DESC) WHERE ("status" = 'Active'::"text");



CREATE INDEX "idx_soa_date_balance" ON "public"."soa_table" USING "btree" ("date_issued", "balance");



CREATE INDEX "idx_soa_date_issued_desc" ON "public"."soa_table" USING "btree" ("date_issued" DESC);



CREATE INDEX "idx_soa_enrollment_active" ON "public"."soa_table" USING "btree" ("enrollment_id", "generated_at" DESC) WHERE ("status" = 'Active'::"text");



CREATE INDEX "idx_soa_enrollment_id" ON "public"."soa_table" USING "btree" ("enrollment_id");



CREATE INDEX "idx_soa_generated_at_desc" ON "public"."soa_table" USING "btree" ("generated_at" DESC);



CREATE INDEX "idx_soa_generated_by" ON "public"."soa_table" USING "btree" ("generated_by");



CREATE UNIQUE INDEX "idx_soa_soa_no" ON "public"."soa_table" USING "btree" ("soa_no");



CREATE INDEX "idx_soa_soa_no_pattern" ON "public"."soa_table" USING "btree" ("soa_no" "text_pattern_ops");



CREATE INDEX "idx_student_firstname" ON "public"."student_table" USING "btree" ("firstname");



CREATE INDEX "idx_student_lastname" ON "public"."student_table" USING "btree" ("lastname");



CREATE INDEX "idx_student_not_deleted" ON "public"."student_table" USING "btree" ("deleted_at");



CREATE INDEX "idx_student_student_no" ON "public"."student_table" USING "btree" ("student_no");



CREATE UNIQUE INDEX "student_no_unique_active" ON "public"."student_table" USING "btree" ("student_no") WHERE ("deleted_at" IS NULL);



CREATE UNIQUE INDEX "unique_revenue_day_per_branch" ON "public"."revenue_day" USING "btree" ("revenue_date", "branch_id");



CREATE UNIQUE INDEX "unique_student_fullname_active" ON "public"."student_table" USING "btree" ("lastname", "firstname", "middlename") WHERE ("deleted_at" IS NULL);



CREATE OR REPLACE VIEW "public"."enrollment_financials" AS
 SELECT "e"."id" AS "enrollment_id",
    "e"."review_fee",
    COALESCE("sum"(
        CASE
            WHEN ("p"."is_voided" = false) THEN "p"."amount"
            ELSE NULL::integer
        END), (0)::bigint) AS "total_paid",
    ("e"."review_fee" - COALESCE("sum"(
        CASE
            WHEN ("p"."is_voided" = false) THEN "p"."amount"
            ELSE NULL::integer
        END), (0)::bigint)) AS "balance"
   FROM ("public"."enrollment_table" "e"
     LEFT JOIN "public"."payment_table" "p" ON (("p"."enrollment_id" = "e"."id")))
  GROUP BY "e"."id";



CREATE OR REPLACE TRIGGER "trg_generate_student_id_int" BEFORE INSERT ON "public"."student_table" FOR EACH ROW WHEN (("new"."student_no" IS NULL)) EXECUTE FUNCTION "public"."generate_student_id_int"();



CREATE OR REPLACE TRIGGER "trg_revenue_detail_update_total_del" AFTER DELETE ON "public"."revenue_detail" FOR EACH ROW EXECUTE FUNCTION "public"."update_revenue_day_total"();



CREATE OR REPLACE TRIGGER "trg_revenue_detail_update_total_ins" AFTER INSERT ON "public"."revenue_detail" FOR EACH ROW EXECUTE FUNCTION "public"."update_revenue_day_total"();



CREATE OR REPLACE TRIGGER "trg_revenue_detail_update_total_upd" AFTER UPDATE ON "public"."revenue_detail" FOR EACH ROW EXECUTE FUNCTION "public"."update_revenue_day_total"();



ALTER TABLE ONLY "public"."app_users"
    ADD CONSTRAINT "app_users_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."branches"
    ADD CONSTRAINT "branches_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id");



ALTER TABLE ONLY "public"."enrollment_modes"
    ADD CONSTRAINT "enrollment_modes_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_modes"
    ADD CONSTRAINT "enrollment_modes_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_branch_id_fkey" FOREIGN KEY ("branch_id") REFERENCES "public"."branches"("id");



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_mode_id_fkey" FOREIGN KEY ("mode_id") REFERENCES "public"."enrollment_modes"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_session_schedule_fkey" FOREIGN KEY ("session_schedule") REFERENCES "public"."schedule_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_status_fkey" FOREIGN KEY ("status") REFERENCES "public"."status_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enrollment_table"
    ADD CONSTRAINT "enrollment_table_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."student_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."extraservices_table"
    ADD CONSTRAINT "extracharge_table_enrollment_id_fkey" FOREIGN KEY ("enrollment_id") REFERENCES "public"."enrollment_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."extraservices_table"
    ADD CONSTRAINT "extraservices_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."extraservices_table"
    ADD CONSTRAINT "extraservices_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."extraservices_table"
    ADD CONSTRAINT "extraservices_table_mode_of_payment_fkey" FOREIGN KEY ("mode_of_payment") REFERENCES "public"."payment_mode"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_mode"
    ADD CONSTRAINT "payment_mode_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_mode"
    ADD CONSTRAINT "payment_mode_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_enrollment_id_fkey" FOREIGN KEY ("enrollment_id") REFERENCES "public"."enrollment_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_enrollment_id_fkey1" FOREIGN KEY ("enrollment_id") REFERENCES "public"."enrollment_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_mode_of_payment_fkey" FOREIGN KEY ("mode_of_payment") REFERENCES "public"."payment_mode"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_table"
    ADD CONSTRAINT "payment_table_revenue_detail_id_fkey" FOREIGN KEY ("revenue_detail_id") REFERENCES "public"."revenue_detail"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."revenue_day"
    ADD CONSTRAINT "revenue_day_branch_id_fkey" FOREIGN KEY ("branch_id") REFERENCES "public"."branches"("id");



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_mode_of_payment_fkey" FOREIGN KEY ("mode_of_payment") REFERENCES "public"."payment_mode"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_revenue_day_id_fkey" FOREIGN KEY ("revenue_day_id") REFERENCES "public"."revenue_day"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."revenue_detail"
    ADD CONSTRAINT "revenue_detail_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."student_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."schedule_table"
    ADD CONSTRAINT "schedule_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."schedule_table"
    ADD CONSTRAINT "schedule_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."soa_table"
    ADD CONSTRAINT "soa_table_enrollment_id_fkey" FOREIGN KEY ("enrollment_id") REFERENCES "public"."enrollment_table"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."soa_table"
    ADD CONSTRAINT "soa_table_generated_by_fkey" FOREIGN KEY ("generated_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."status_table"
    ADD CONSTRAINT "status_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."status_table"
    ADD CONSTRAINT "status_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."student_table"
    ADD CONSTRAINT "student_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."student_table"
    ADD CONSTRAINT "student_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_table"
    ADD CONSTRAINT "transaction_table_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_table"
    ADD CONSTRAINT "transaction_table_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."validity_settings"
    ADD CONSTRAINT "validity_settings_branch_id_fkey" FOREIGN KEY ("branch_id") REFERENCES "public"."branches"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."validity_settings"
    ADD CONSTRAINT "validity_settings_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."app_users"("id");



ALTER TABLE ONLY "public"."validity_settings"
    ADD CONSTRAINT "validity_settings_edited_by_fkey" FOREIGN KEY ("edited_by") REFERENCES "public"."app_users"("id");



CREATE POLICY "Allow users to update only photo_url" ON "public"."student_table" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text")) WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "admin and user update" ON "public"."enrollment_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "admin delete" ON "public"."enrollment_modes" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."enrollment_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."extraservices_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."payment_mode" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."payment_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."revenue_day" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."revenue_detail" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."schedule_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."soa_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."status_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."student_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin delete" ON "public"."transaction_table" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin insert" ON "public"."app_users" FOR INSERT WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users" "app_users_1"
  WHERE (("app_users_1"."id" = "auth"."uid"()) AND ("app_users_1"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "admin update" ON "public"."enrollment_modes" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."extraservices_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."payment_mode" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."payment_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."revenue_day" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."revenue_detail" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."schedule_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."soa_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."status_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."student_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admin update" ON "public"."transaction_table" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = 'admin'::"text")))));



CREATE POLICY "admins can update app_users" ON "public"."app_users" FOR UPDATE USING ((EXISTS ( SELECT 1
   FROM "public"."app_users" "au"
  WHERE (("au"."id" = "auth"."uid"()) AND ("au"."role" = 'admin'::"text"))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users" "au"
  WHERE (("au"."id" = "auth"."uid"()) AND ("au"."role" = 'admin'::"text")))));



CREATE POLICY "allow insert revenue_day" ON "public"."revenue_day" FOR INSERT WITH CHECK (("branch_id" IS NOT NULL));



ALTER TABLE "public"."app_users" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."enrollment_modes" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."enrollment_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."extraservices_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."gallery" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "gallery_delete_auth" ON "public"."gallery" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "gallery_insert_auth" ON "public"."gallery" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "gallery_select_auth" ON "public"."gallery" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "gallery_update_auth" ON "public"."gallery" FOR UPDATE TO "authenticated" USING (true) WITH CHECK (true);



CREATE POLICY "insert by admin or user" ON "public"."enrollment_modes" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."enrollment_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."extraservices_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."payment_mode" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."payment_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."revenue_day" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."revenue_detail" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."schedule_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."soa_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."status_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."student_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "insert by admin or user" ON "public"."transaction_table" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



ALTER TABLE "public"."payment_mode" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."payment_table" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "read all app users" ON "public"."app_users" FOR SELECT USING (true);



ALTER TABLE "public"."revenue_day" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."revenue_detail" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."schedule_table" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "select by admin or user" ON "public"."enrollment_modes" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."enrollment_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."extraservices_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."payment_mode" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."payment_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."revenue_day" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."revenue_detail" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."schedule_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."soa_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."status_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."student_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "select by admin or user" ON "public"."transaction_table" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = ( SELECT "auth"."uid"() AS "uid")) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



ALTER TABLE "public"."soa_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."status_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."student_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."transaction_table" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "update by admin or user" ON "public"."revenue_day" FOR UPDATE USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = "auth"."uid"()) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"])))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = "auth"."uid"()) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));



CREATE POLICY "update by admin or user" ON "public"."revenue_detail" FOR UPDATE USING ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = "auth"."uid"()) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"])))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."app_users"
  WHERE (("app_users"."id" = "auth"."uid"()) AND ("app_users"."role" = ANY (ARRAY['admin'::"text", 'user'::"text"]))))));





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































GRANT ALL ON FUNCTION "public"."dashboard_total_enrollment_payments"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_total_enrollment_payments"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_total_enrollment_payments"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_total_expenses"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_total_expenses"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_total_expenses"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_total_revenue"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_total_revenue"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_total_revenue"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_total_service_payments"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_total_service_payments"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_total_service_payments"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_total_students"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_total_students"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_total_students"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_totals"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_totals"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_totals"() TO "service_role";



GRANT ALL ON FUNCTION "public"."dashboard_totals_fast"() TO "anon";
GRANT ALL ON FUNCTION "public"."dashboard_totals_fast"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."dashboard_totals_fast"() TO "service_role";



GRANT ALL ON FUNCTION "public"."generate_student_id_int"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_student_id_int"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_student_id_int"() TO "service_role";



GRANT ALL ON FUNCTION "public"."ligmon data"() TO "anon";
GRANT ALL ON FUNCTION "public"."ligmon data"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."ligmon data"() TO "service_role";



GRANT ALL ON FUNCTION "public"."revenue_summary_all_time"() TO "anon";
GRANT ALL ON FUNCTION "public"."revenue_summary_all_time"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."revenue_summary_all_time"() TO "service_role";



GRANT ALL ON FUNCTION "public"."revenue_summary_range"("from_date" timestamp with time zone, "to_date" timestamp with time zone) TO "anon";
GRANT ALL ON FUNCTION "public"."revenue_summary_range"("from_date" timestamp with time zone, "to_date" timestamp with time zone) TO "authenticated";
GRANT ALL ON FUNCTION "public"."revenue_summary_range"("from_date" timestamp with time zone, "to_date" timestamp with time zone) TO "service_role";



GRANT ALL ON FUNCTION "public"."sweep data"() TO "anon";
GRANT ALL ON FUNCTION "public"."sweep data"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."sweep data"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_revenue_day_total"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_revenue_day_total"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_revenue_day_total"() TO "service_role";


















GRANT ALL ON TABLE "public"."app_users" TO "anon";
GRANT ALL ON TABLE "public"."app_users" TO "authenticated";
GRANT ALL ON TABLE "public"."app_users" TO "service_role";



GRANT ALL ON TABLE "public"."branches" TO "anon";
GRANT ALL ON TABLE "public"."branches" TO "authenticated";
GRANT ALL ON TABLE "public"."branches" TO "service_role";



GRANT ALL ON TABLE "public"."student_table" TO "anon";
GRANT ALL ON TABLE "public"."student_table" TO "authenticated";
GRANT ALL ON TABLE "public"."student_table" TO "service_role";



GRANT ALL ON TABLE "public"."daily_enrollees" TO "anon";
GRANT ALL ON TABLE "public"."daily_enrollees" TO "authenticated";
GRANT ALL ON TABLE "public"."daily_enrollees" TO "service_role";



GRANT ALL ON TABLE "public"."daily_enrollees_fast" TO "anon";
GRANT ALL ON TABLE "public"."daily_enrollees_fast" TO "authenticated";
GRANT ALL ON TABLE "public"."daily_enrollees_fast" TO "service_role";



GRANT ALL ON TABLE "public"."enrollment_table" TO "anon";
GRANT ALL ON TABLE "public"."enrollment_table" TO "authenticated";
GRANT ALL ON TABLE "public"."enrollment_table" TO "service_role";



GRANT ALL ON TABLE "public"."daily_program_enrollees" TO "anon";
GRANT ALL ON TABLE "public"."daily_program_enrollees" TO "authenticated";
GRANT ALL ON TABLE "public"."daily_program_enrollees" TO "service_role";



GRANT ALL ON TABLE "public"."daily_program_types" TO "anon";
GRANT ALL ON TABLE "public"."daily_program_types" TO "authenticated";
GRANT ALL ON TABLE "public"."daily_program_types" TO "service_role";



GRANT ALL ON TABLE "public"."enrollment_financials" TO "anon";
GRANT ALL ON TABLE "public"."enrollment_financials" TO "authenticated";
GRANT ALL ON TABLE "public"."enrollment_financials" TO "service_role";



GRANT ALL ON TABLE "public"."enrollment_modes" TO "anon";
GRANT ALL ON TABLE "public"."enrollment_modes" TO "authenticated";
GRANT ALL ON TABLE "public"."enrollment_modes" TO "service_role";



GRANT ALL ON SEQUENCE "public"."enrollment_modes_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."enrollment_modes_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."enrollment_modes_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."enrollment_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."enrollment_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."enrollment_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."extraservices_table" TO "anon";
GRANT ALL ON TABLE "public"."extraservices_table" TO "authenticated";
GRANT ALL ON TABLE "public"."extraservices_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."extracharge_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."extracharge_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."extracharge_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."gallery" TO "anon";
GRANT ALL ON TABLE "public"."gallery" TO "authenticated";
GRANT ALL ON TABLE "public"."gallery" TO "service_role";



GRANT ALL ON SEQUENCE "public"."gallery_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."gallery_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."gallery_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payment_mode" TO "anon";
GRANT ALL ON TABLE "public"."payment_mode" TO "authenticated";
GRANT ALL ON TABLE "public"."payment_mode" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payment_mode_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payment_mode_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payment_mode_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payment_table" TO "anon";
GRANT ALL ON TABLE "public"."payment_table" TO "authenticated";
GRANT ALL ON TABLE "public"."payment_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payment_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payment_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payment_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."program_type_daily" TO "anon";
GRANT ALL ON TABLE "public"."program_type_daily" TO "authenticated";
GRANT ALL ON TABLE "public"."program_type_daily" TO "service_role";



GRANT ALL ON TABLE "public"."revenue_day" TO "anon";
GRANT ALL ON TABLE "public"."revenue_day" TO "authenticated";
GRANT ALL ON TABLE "public"."revenue_day" TO "service_role";



GRANT ALL ON TABLE "public"."revenue_detail" TO "anon";
GRANT ALL ON TABLE "public"."revenue_detail" TO "authenticated";
GRANT ALL ON TABLE "public"."revenue_detail" TO "service_role";



GRANT ALL ON TABLE "public"."schedule_table" TO "anon";
GRANT ALL ON TABLE "public"."schedule_table" TO "authenticated";
GRANT ALL ON TABLE "public"."schedule_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."schedule_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."schedule_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."schedule_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."soa_table" TO "anon";
GRANT ALL ON TABLE "public"."soa_table" TO "authenticated";
GRANT ALL ON TABLE "public"."soa_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."soa_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."soa_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."soa_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."status_table" TO "anon";
GRANT ALL ON TABLE "public"."status_table" TO "authenticated";
GRANT ALL ON TABLE "public"."status_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."status_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."status_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."status_table_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."student_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."student_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."student_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."student_year_counters" TO "anon";
GRANT ALL ON TABLE "public"."student_year_counters" TO "authenticated";
GRANT ALL ON TABLE "public"."student_year_counters" TO "service_role";



GRANT ALL ON TABLE "public"."transaction_table" TO "anon";
GRANT ALL ON TABLE "public"."transaction_table" TO "authenticated";
GRANT ALL ON TABLE "public"."transaction_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."transaction_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."transaction_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."transaction_table_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."validity_settings" TO "anon";
GRANT ALL ON TABLE "public"."validity_settings" TO "authenticated";
GRANT ALL ON TABLE "public"."validity_settings" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































