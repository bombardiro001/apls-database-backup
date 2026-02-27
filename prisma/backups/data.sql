SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict H8FqCntsqmiZRgwsdnJ5ManidNdly925HaL4YBcpVwrJTAODI5zTTLPUzIoUamG

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	d46ace17-af48-4088-a496-f55d09b96401	authenticated	authenticated	dodongjugg@gmail.com	$2a$10$erCTyn0lNbOPoAVgSfwNy.2poeJIMgqFL611tsrYXREOz4LsCB5ti	\N	\N	c8c08ee93a43dae53cfb29c44bfc65ac323d3ee477f7bd0a72831c50	2025-11-14 07:46:25.699683+00		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"sub": "d46ace17-af48-4088-a496-f55d09b96401", "email": "dodongjugg@gmail.com", "username": "fenderrrrr", "email_verified": false, "phone_verified": false}	\N	2025-11-14 07:46:25.676786+00	2025-11-14 07:46:28.785166+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	eddf09f4-b056-4a3c-af19-7463736ebb54	authenticated	authenticated	nm99CPlX9-KN5R6AHb_zEO1ImY6MYQbprz_BB97eLI8	\N	2025-12-18 05:12:15.889946+00	\N		\N		\N		E83X7904qJUJ_qSul_54wJ55YO9VF3yMwQLTTSnhMp8	\N	\N	{}	{}	\N	2025-12-18 05:12:15.886234+00	2025-12-20 05:20:19.630415+00	E83X7904qJUJ_qS	\N	E83X7904qJUJ_qS		\N		0	\N		\N	f	2025-12-20 05:20:19.617683+00	f
00000000-0000-0000-0000-000000000000	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	authenticated	authenticated	accesspoint.learningsolutions@gmail.com	$2a$10$57NsEeU/0izP7QqgGh4X6eXl/NIUdYC0lKcwpmVn6n29EWqQChk6K	2025-11-14 05:28:30.628171+00	\N		\N		\N			\N	2025-12-23 03:22:38.369921+00	{"provider": "email", "providers": ["email"]}	{"sub": "f28fddf3-ec16-45ea-876e-2a7abb7b8b76", "email": "accesspoint.learningsolutions@gmail.com", "email_verified": true, "phone_verified": false}	\N	2025-11-14 05:27:58.585016+00	2025-12-23 06:23:40.908004+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	b07a92b4-031f-462d-a23b-1da0f54dd18e	authenticated	authenticated	FcFGHKsXF2lPoZjhXvWkov7lYpnxvVNEV3bdFb6cTBk	\N	2025-12-18 05:11:18.444802+00	\N		\N		\N		PPZr_osNtrmEGenhJBEOBif-Goxq6sjxDLXi7zdNd0Q	\N	2025-12-18 05:11:24.47854+00	{}	{}	\N	2025-12-18 05:11:18.437942+00	2025-12-20 05:30:32.380585+00	PPZr_osNtrmEGen	\N	PPZr_osNtrmEGen		\N		0	\N		\N	f	2025-12-20 05:30:32.374053+00	f
00000000-0000-0000-0000-000000000000	f8201abd-70ae-4b3e-8eea-6c4da43a5ac5	authenticated	authenticated	71znGfDD9LVgMo4JFBH-bDdh4QvOLVQ_IpmEhSagd-0	\N	2025-12-01 03:24:15.139774+00	\N		\N		\N		Rtz6fx9ebP5swP-llItWhGluCy5fxWXWHKea382H4cg	\N	2026-01-07 00:42:53.861168+00	{}	{}	\N	2025-12-01 03:23:16.091473+00	2026-01-07 00:44:41.021943+00	yEDFZL_30gnKeqt	\N	yEDFZL_30gnKeqt		\N		0	\N		\N	f	2026-01-07 00:44:41.019925+00	f
00000000-0000-0000-0000-000000000000	27f247ed-8a60-4931-8815-6c0a14d1321a	authenticated	authenticated	f.llaguno.489309@umindanao.edu.ph	$2a$10$NdDdnPxtrZCcSdyWczfgI..7InVED2.RBwVUbweeXwBLJ64jeQ2Wa	2025-12-01 02:51:53.554165+00	\N		2025-12-01 02:50:38.393174+00	7867788c0d6a3a84c6b2d7ad716012b353d28b3fbd0f44d58bd93e99	2025-12-01 02:53:26.541627+00			\N	2025-12-01 02:51:53.573056+00	{"provider": "email", "providers": ["email"]}	{"sub": "27f247ed-8a60-4931-8815-6c0a14d1321a", "email": "f.llaguno.489309@umindanao.edu.ph", "username": "fender", "email_verified": true, "phone_verified": false}	\N	2025-11-14 08:52:30.620478+00	2025-12-01 02:53:29.585482+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a2be4a84-5839-4275-b703-6826c1c64eb5	authenticated	authenticated	vArPX-qNHx52JVPJWp4oWfmzLr1QZRJ_YvQ9jPfEvzM	\N	2025-12-18 12:37:23.990311+00	\N		\N		\N		I5SFA860--OQ7SopVYxsiDZ7wE41MNfeRUhgJN1EkUE	\N	2026-01-09 06:33:33.710131+00	{}	{}	\N	2025-12-18 12:37:23.984965+00	2026-01-12 00:47:53.284961+00	I5SFA860--OQ7So	\N	I5SFA860--OQ7So		\N		0	\N		\N	f	2026-01-12 00:47:53.271512+00	f
00000000-0000-0000-0000-000000000000	193fe6bc-72d5-43bc-b43f-cd09bcc08315	authenticated	authenticated	CV4AUYod0zJbc9LcdNQgPlzfui_-gt029kbUMuTYV-g	\N	2026-01-08 01:59:48.747212+00	\N		\N		\N		y-hRV9jB1TJjQ_Hr8oFmZzSSj1iTG0ksc2pSTlLvLdM	\N	\N	{}	{}	\N	2026-01-08 01:59:48.731237+00	2026-01-08 02:01:33.753634+00	y-hRV9jB1TJjQ_H	\N	y-hRV9jB1TJjQ_H		\N		0	\N		\N	f	2026-01-08 02:01:33.726496+00	f
00000000-0000-0000-0000-000000000000	7f319a76-25a0-48b8-ba5e-389684f5daf2	authenticated	authenticated	winberthsanjose97@gmail.com	$2a$10$GDyIWYkvMeN98re5e4QtXOO0NzwiTz/yS/hmSWm4bcbMOCvPhwLdm	2025-12-18 12:32:44.343652+00	\N		\N		\N			\N	2026-02-20 10:09:43.047167+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-12-18 12:32:44.281553+00	2026-02-20 10:09:43.049417+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	94c500f5-ad57-4c8b-a696-a6e5bcc23ed4	authenticated	authenticated	YZsrjAphrF_6-oVbGiT1BbSgkukUqKoAr4JccMRvqvk	\N	2025-12-19 12:40:00.924039+00	\N		\N		\N		C-fT0-69f0cEpM0DdgavXISD9FO_yOxEUgjluaBImoA	\N	2025-12-22 03:20:50.864222+00	{}	{}	\N	2025-12-19 12:40:00.913144+00	2026-01-09 05:46:11.471042+00	C-fT0-69f0cEpM0	\N	C-fT0-69f0cEpM0		\N		0	\N		\N	f	2026-01-09 05:46:11.445458+00	f
00000000-0000-0000-0000-000000000000	67dae099-2a9e-434b-85e1-003abddb63cd	authenticated	authenticated	fenderllaguno001@gmail.com	$2a$10$EqcUBjpqaSMOa60/X3Kt4ubNHvy6xDguCXYYQ7Z6h7dJzzzTdWkTO	2026-01-12 07:08:51.617127+00	\N		\N		\N			\N	2026-02-27 00:54:25.896481+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-01-12 07:08:51.598635+00	2026-02-27 00:54:25.960242+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	de717e45-803b-4ca2-8118-88eecfa63c2c	authenticated	authenticated	macompasclent@gmail.com	$2a$10$NF7AEnYRkFNQSNeZaSmDOeW98o/HZn4Rrx9ju4JpFRK/VnDHbc8pi	2026-01-08 02:02:03.846059+00	\N		\N	a706564feaab7bc6c2730c62a2e642b979be0a033f51e588e30407c4	2026-01-26 04:42:24.123033+00			\N	2026-02-27 04:27:28.082078+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-01-08 02:02:03.830961+00	2026-02-27 05:44:58.349401+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	2da96c4c-a4b2-4946-8329-97da1e2f8704	authenticated	authenticated	lesliefiles7@gmail.com	$2a$10$UiTXvgSmPktv6OI9kApJRe/WF8qQlhOqgq99aoEQxJP9JqsGrk55i	2026-01-09 05:46:57.082894+00	\N		\N		\N			\N	2026-01-26 08:51:26.967202+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-01-09 05:46:57.073057+00	2026-02-27 06:40:04.831959+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	authenticated	authenticated	fenderllaguno114@gmail.com	$2a$10$bj5JiPn/sQdprnziFpPnTeiqPI/BJDgsXYPft.4AVP0QnmnuN8LkW	2025-11-17 00:43:22.413494+00	\N		\N		\N			\N	2026-02-27 04:39:22.161122+00	{"provider": "email", "providers": ["email"]}	{"sub": "3cebc69a-264a-46cc-8e65-a9ae20d29eb7", "email": "fenderllaguno114@gmail.com", "username": "fender", "email_verified": true, "phone_verified": false}	\N	2025-11-14 08:55:54.049326+00	2026-02-27 04:39:22.231702+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	authenticated	authenticated	jonardryannavarro@gmail.com	$2a$10$Fd1dR2djKCXNQ4aPsrUBgOPoDIgmfL.jzXOK2MfpkehzGX8nbLN3a	2025-12-22 10:40:04.536211+00	\N		\N		\N			\N	2026-02-18 09:49:19.729793+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-12-22 10:40:04.508479+00	2026-02-26 17:38:03.265204+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	authenticated	authenticated	masquimno@gmail.com	$2a$10$/BU11K1r7kDIVN2RESDKJ.n9nKBUdBWkwfg0vexg4hAzEBkGM86ma	2025-12-18 12:33:31.620108+00	\N		\N		\N			\N	2026-02-27 04:40:07.188869+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-12-18 12:33:31.613987+00	2026-02-27 04:40:07.193393+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
f28fddf3-ec16-45ea-876e-2a7abb7b8b76	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	{"sub": "f28fddf3-ec16-45ea-876e-2a7abb7b8b76", "email": "accesspoint.learningsolutions@gmail.com", "email_verified": true, "phone_verified": false}	email	2025-11-14 05:27:58.587704+00	2025-11-14 05:27:58.587762+00	2025-11-14 05:27:58.587762+00	be3064f5-0931-4840-a123-6b20e4703160
5wKsAN-OCnx3MMf-j7mSbcHIsRvcQKHOxrrhlOu9OKM	eddf09f4-b056-4a3c-af19-7463736ebb54	{}	email	2025-12-18 05:12:15.887882+00	2025-12-18 05:12:15.887941+00	2025-12-18 05:12:15.887941+00	29f6d709-57ad-44e6-8cfe-0f896832fc96
d46ace17-af48-4088-a496-f55d09b96401	d46ace17-af48-4088-a496-f55d09b96401	{"sub": "d46ace17-af48-4088-a496-f55d09b96401", "email": "dodongjugg@gmail.com", "username": "fenderrrrr", "email_verified": false, "phone_verified": false}	email	2025-11-14 07:46:25.692876+00	2025-11-14 07:46:25.692934+00	2025-11-14 07:46:25.692934+00	8fb9cd03-5e36-4b79-a644-e5b4ecee2685
3cebc69a-264a-46cc-8e65-a9ae20d29eb7	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{"sub": "3cebc69a-264a-46cc-8e65-a9ae20d29eb7", "email": "fenderllaguno114@gmail.com", "username": "fender", "email_verified": false, "phone_verified": false}	email	2025-11-14 08:55:54.070854+00	2025-11-14 08:55:54.07092+00	2025-11-14 08:55:54.07092+00	e0457f51-a7dd-417e-922e-6a6e431fde17
_R1WfhoRFhMm_BzLdgyfvG5L6w24lZkA5qpMJgb4048	b07a92b4-031f-462d-a23b-1da0f54dd18e	{}	email	2025-12-18 05:11:18.443204+00	2025-12-18 05:11:18.443256+00	2025-12-18 05:11:18.443256+00	c80b6c35-da86-4923-8601-0500ff5b1bf0
27f247ed-8a60-4931-8815-6c0a14d1321a	27f247ed-8a60-4931-8815-6c0a14d1321a	{"sub": "27f247ed-8a60-4931-8815-6c0a14d1321a", "email": "f.llaguno.489309@umindanao.edu.ph", "username": "fender", "email_verified": true, "phone_verified": false}	email	2025-11-14 08:52:30.657509+00	2025-11-14 08:52:30.657569+00	2025-11-14 08:52:30.657569+00	a352097d-46c3-43e7-a733-380d7242dd6a
7f319a76-25a0-48b8-ba5e-389684f5daf2	7f319a76-25a0-48b8-ba5e-389684f5daf2	{"sub": "7f319a76-25a0-48b8-ba5e-389684f5daf2", "email": "winberthsanjose97@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-12-18 12:32:44.322582+00	2025-12-18 12:32:44.322645+00	2025-12-18 12:32:44.322645+00	cca05431-ae8f-4882-bdcb-877bba415003
3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	{"sub": "3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b", "email": "masquimno@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-12-18 12:33:31.617574+00	2025-12-18 12:33:31.617633+00	2025-12-18 12:33:31.617633+00	d54aaa4c-d033-4a45-b9ad-86c43d9046d4
f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	{"sub": "f7b083e6-4e93-4aed-8cc9-60c208ba8cbc", "email": "jonardryannavarro@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-12-22 10:40:04.529123+00	2025-12-22 10:40:04.529189+00	2025-12-22 10:40:04.529189+00	c1a20fbf-e522-4fdb-aee5-1e81a05d81e0
Tj2pt7xioHAo0-ChPU7IgYKBSfss3vbXvGZ2PlM17OM	f8201abd-70ae-4b3e-8eea-6c4da43a5ac5	{}	email	2025-12-01 03:23:16.113107+00	2025-12-01 03:23:16.113159+00	2025-12-01 03:23:16.113159+00	58c11d85-2c3d-4167-ab9c-b9e0753b18c3
VEG2ZY74dTTSYx6ys6sjW-G5EvHSFWQ0QR9q_9hQDWs	193fe6bc-72d5-43bc-b43f-cd09bcc08315	{}	email	2026-01-08 01:59:48.74171+00	2026-01-08 01:59:48.741787+00	2026-01-08 01:59:48.741787+00	10fad2f1-d3ac-455e-af5b-b177fc31d5d6
de717e45-803b-4ca2-8118-88eecfa63c2c	de717e45-803b-4ca2-8118-88eecfa63c2c	{"sub": "de717e45-803b-4ca2-8118-88eecfa63c2c", "email": "macompasclent@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-01-08 02:02:03.842479+00	2026-01-08 02:02:03.842537+00	2026-01-08 02:02:03.842537+00	24e9e7ba-76e7-4219-9199-8339581dfd69
fivjJQBJvSQ4z_r8_0Y1oSvKu96GYzGurRkdttq09Jo	94c500f5-ad57-4c8b-a696-a6e5bcc23ed4	{}	email	2025-12-19 12:40:00.921381+00	2025-12-19 12:40:00.921436+00	2025-12-19 12:40:00.921436+00	50865205-530f-4103-83b0-2e29c4d24ac8
2da96c4c-a4b2-4946-8329-97da1e2f8704	2da96c4c-a4b2-4946-8329-97da1e2f8704	{"sub": "2da96c4c-a4b2-4946-8329-97da1e2f8704", "email": "lesliefiles7@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-01-09 05:46:57.080649+00	2026-01-09 05:46:57.080699+00	2026-01-09 05:46:57.080699+00	2a3cac6d-216b-4e12-8f28-07f05832d471
mOQyNucHdPFbuOnVocZaGH73MRPQyYO7-6VwghqM8Do	a2be4a84-5839-4275-b703-6826c1c64eb5	{}	email	2025-12-18 12:37:23.987113+00	2025-12-18 12:37:23.987177+00	2025-12-18 12:37:23.987177+00	d30a1baa-fb48-41b3-a1dc-06f265becff0
67dae099-2a9e-434b-85e1-003abddb63cd	67dae099-2a9e-434b-85e1-003abddb63cd	{"sub": "67dae099-2a9e-434b-85e1-003abddb63cd", "email": "fenderllaguno001@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-01-12 07:08:51.612403+00	2026-01-12 07:08:51.612458+00	2026-01-12 07:08:51.612458+00	19ecdf77-59e5-4b3b-a917-680c0ef73f88
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
28813909-0c1c-4b6b-a130-0d7bb89f1d1c	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	2026-02-09 12:16:29.530931+00	2026-02-09 12:16:29.530931+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	138.84.107.152	\N	\N	\N	\N	\N
c73b4751-c897-4377-9f38-649527bd9988	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	2026-02-07 08:46:23.819203+00	2026-02-25 06:06:59.656506+00	\N	aal1	\N	2026-02-25 06:06:59.656403	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36	113.19.143.216	\N	\N	\N	\N	\N
6ea57cfa-a94f-4ddd-a1eb-1a65477f83b4	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-27 04:40:07.188981+00	2026-02-27 04:40:07.188981+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36	138.84.107.154	\N	\N	\N	\N	\N
1fbac48d-7a46-4a04-b3a5-8004c1aae7ce	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	2025-12-22 04:37:21.888958+00	2025-12-22 11:24:23.406822+00	\N	aal1	\N	2025-12-22 11:24:23.406687	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	138.84.105.61	\N	\N	\N	\N	\N
dac35323-c22b-46f8-8989-303b5d7b1101	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-27 04:27:28.082174+00	2026-02-27 05:44:58.362769+00	\N	aal1	\N	2026-02-27 05:44:58.362636	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36	138.84.107.154	\N	\N	\N	\N	\N
ac28a9d5-908a-4c28-bff0-494543dbca80	2da96c4c-a4b2-4946-8329-97da1e2f8704	2026-01-26 08:51:26.967315+00	2026-02-27 06:40:04.842959+00	\N	aal1	\N	2026-02-27 06:40:04.84285	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36	138.84.108.111	\N	\N	\N	\N	\N
c14af9c4-7b87-4aed-91fc-3f1f1617cffb	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	2026-02-10 02:23:29.446302+00	2026-02-26 17:38:03.279088+00	\N	aal1	\N	2026-02-26 17:38:03.278987	Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1	49.150.98.102	\N	\N	\N	\N	\N
f3e14094-dc24-44c8-a0ed-794f4ca3eaa7	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	2025-12-23 03:22:38.375342+00	2025-12-23 06:23:40.91579+00	\N	aal1	\N	2025-12-23 06:23:40.915654	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	138.84.105.61	\N	\N	\N	\N	\N
b1bdc2e5-3f3e-40c0-a8e5-126e3c4bd896	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	2026-02-18 09:49:19.730825+00	2026-02-18 09:49:19.730825+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	136.158.224.35	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
c73b4751-c897-4377-9f38-649527bd9988	2026-02-07 08:46:23.838476+00	2026-02-07 08:46:23.838476+00	password	66974880-daeb-420b-81a8-5306c8583e63
28813909-0c1c-4b6b-a130-0d7bb89f1d1c	2026-02-09 12:16:29.649864+00	2026-02-09 12:16:29.649864+00	password	ca45966c-6bcb-401b-99ab-3de2c06ab722
c14af9c4-7b87-4aed-91fc-3f1f1617cffb	2026-02-10 02:23:29.517603+00	2026-02-10 02:23:29.517603+00	password	a365bff3-cdb3-4d10-b292-61fc3327955f
1fbac48d-7a46-4a04-b3a5-8004c1aae7ce	2025-12-22 04:37:21.916747+00	2025-12-22 04:37:21.916747+00	password	c37352a0-5b6f-43b9-a883-653dd7529455
f3e14094-dc24-44c8-a0ed-794f4ca3eaa7	2025-12-23 03:22:38.478191+00	2025-12-23 03:22:38.478191+00	password	caf3a7de-71d0-479f-9311-cbf4365131d8
ac28a9d5-908a-4c28-bff0-494543dbca80	2026-01-26 08:51:26.970476+00	2026-01-26 08:51:26.970476+00	password	022cc92e-6c88-472b-a7b9-9543a48e1203
dac35323-c22b-46f8-8989-303b5d7b1101	2026-02-27 04:27:28.132382+00	2026-02-27 04:27:28.132382+00	password	0315f452-0c3c-43d6-8507-04b08bbfff90
6ea57cfa-a94f-4ddd-a1eb-1a65477f83b4	2026-02-27 04:40:07.193817+00	2026-02-27 04:40:07.193817+00	password	4ab9322c-34ff-411a-8abf-ced334631d9d
b1bdc2e5-3f3e-40c0-a8e5-126e3c4bd896	2026-02-18 09:49:19.804362+00	2026-02-18 09:49:19.804362+00	password	a95afd2b-df0d-4a0c-9df5-de886c3c6af0
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
88b48319-6548-4b46-9e61-3e191228fdc6	d46ace17-af48-4088-a496-f55d09b96401	confirmation_token	c8c08ee93a43dae53cfb29c44bfc65ac323d3ee477f7bd0a72831c50	dodongjugg@gmail.com	2025-11-14 07:46:28.792104	2025-11-14 07:46:28.792104
e27b3746-3306-42b4-9614-9b53bd2d04e4	27f247ed-8a60-4931-8815-6c0a14d1321a	recovery_token	7867788c0d6a3a84c6b2d7ad716012b353d28b3fbd0f44d58bd93e99	f.llaguno.489309@umindanao.edu.ph	2025-12-01 02:53:29.586786	2025-12-01 02:53:29.586786
d6be5ebb-7999-4b15-94b3-c72ba1e6d707	de717e45-803b-4ca2-8118-88eecfa63c2c	recovery_token	a706564feaab7bc6c2730c62a2e642b979be0a033f51e588e30407c4	macompasclent@gmail.com	2026-01-26 04:42:27.082678	2026-01-26 04:42:27.082678
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	1211	msde5m2q4h2z	de717e45-803b-4ca2-8118-88eecfa63c2c	f	2026-02-27 05:44:58.33269+00	2026-02-27 05:44:58.33269+00	jptc2kcdisqd	dac35323-c22b-46f8-8989-303b5d7b1101
00000000-0000-0000-0000-000000000000	315	5yy2i5kgpq3o	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 09:25:58.652683+00	2025-12-22 10:24:44.525492+00	yvlal7eqaauf	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	1008	y3awneutoyh7	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 00:52:40.424405+00	2026-02-14 01:50:43.017968+00	jyyyv3iqansh	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1090	fxq5jjluufxh	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-19 08:40:54.282496+00	2026-02-27 06:40:04.787306+00	iefgfixsmt2d	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1022	74tjwpg7kx2f	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 13:33:42.381652+00	2026-02-14 14:50:54.40637+00	7kyel3fpbdqh	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	957	5onqkohjrv2l	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-11 02:27:13.250531+00	2026-02-11 13:23:39.715678+00	figgrjyiwb66	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1028	fo4ama4dbng6	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 21:39:39.168987+00	2026-02-14 22:56:47.50138+00	etvp2anwaks4	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	317	nlrcqyyraag3	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 10:24:44.53818+00	2025-12-22 11:24:23.373456+00	5yy2i5kgpq3o	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	321	m2uhp4gnt4lt	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	f	2025-12-22 11:24:23.388405+00	2025-12-22 11:24:23.388405+00	nlrcqyyraag3	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	1034	vjxk6xdk5yai	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 05:03:59.290793+00	2026-02-15 14:29:53.353405+00	hf46shmjawiz	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	903	7c2woqkioac3	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 10:10:48.63211+00	2026-02-08 11:10:48.062711+00	nkc4pktq3sxn	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1040	rym66wq7m7jk	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-16 02:09:41.15078+00	2026-02-17 08:51:24.137045+00	ypvteiing762	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	943	o3nada4npbzi	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-10 07:52:39.314846+00	2026-02-11 17:06:32.569807+00	xt6wl5mxf7qe	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1061	e47es3e5wbir	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-17 12:58:05.962835+00	2026-02-18 08:06:16.681256+00	nqh5ypucomks	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	330	jvhw4jo4n2vr	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-23 03:22:38.437988+00	2025-12-23 05:25:31.439204+00	\N	f3e14094-dc24-44c8-a0ed-794f4ca3eaa7
00000000-0000-0000-0000-000000000000	332	mrhj7ha6fzxl	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-23 05:25:31.439557+00	2025-12-23 06:23:40.857089+00	jvhw4jo4n2vr	f3e14094-dc24-44c8-a0ed-794f4ca3eaa7
00000000-0000-0000-0000-000000000000	333	6tjc4gbjotce	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	f	2025-12-23 06:23:40.888623+00	2025-12-23 06:23:40.888623+00	mrhj7ha6fzxl	f3e14094-dc24-44c8-a0ed-794f4ca3eaa7
00000000-0000-0000-0000-000000000000	303	e7ts6i4cijvq	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 04:37:21.900669+00	2025-12-22 06:05:54.969215+00	\N	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	305	2kwrruuybx3m	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 06:05:54.989764+00	2025-12-22 07:07:10.951384+00	e7ts6i4cijvq	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	310	scuycpudob3s	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 07:07:10.968096+00	2025-12-22 08:06:03.457469+00	2kwrruuybx3m	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	312	yvlal7eqaauf	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	t	2025-12-22 08:06:03.481527+00	2025-12-22 09:25:58.649567+00	scuycpudob3s	1fbac48d-7a46-4a04-b3a5-8004c1aae7ce
00000000-0000-0000-0000-000000000000	1005	jyyyv3iqansh	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 23:54:11.407139+00	2026-02-14 00:52:40.403052+00	puj6qb7zwjsw	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1212	7j4h2yhdiecs	2da96c4c-a4b2-4946-8329-97da1e2f8704	f	2026-02-27 06:40:04.811205+00	2026-02-27 06:40:04.811205+00	fxq5jjluufxh	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	904	ovncr4fznkes	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 11:10:48.079998+00	2026-02-08 12:13:11.46093+00	7c2woqkioac3	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1016	gk77wfrhtbif	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 05:21:28.975781+00	2026-02-14 06:34:52.065138+00	tes2gjmfipng	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1023	r3t3gfa7jhn5	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 14:50:54.42993+00	2026-02-14 15:50:36.571097+00	74tjwpg7kx2f	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1029	jdqeeomijiwb	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 22:56:47.516009+00	2026-02-15 00:26:43.917031+00	fo4ama4dbng6	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1035	hkq6ugzeq6bc	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 14:29:53.370044+00	2026-02-15 15:35:58.829758+00	vjxk6xdk5yai	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	987	baljt55ompo6	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-13 08:17:40.701704+00	2026-02-13 09:16:00.327793+00	w4mu56he5vvk	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	994	en4ozalvk7jh	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-13 09:16:00.342626+00	2026-02-13 10:14:58.242158+00	baljt55ompo6	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1000	fvyzz6ofpgxk	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 11:22:44.702323+00	2026-02-13 12:31:32.113724+00	xsacj7uvl3dd	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	937	xt6wl5mxf7qe	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-10 05:43:37.99671+00	2026-02-10 07:52:39.303725+00	4dgldwpame7w	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1024	736doruzmelz	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 15:50:36.594005+00	2026-02-14 17:32:40.749325+00	r3t3gfa7jhn5	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	899	wvaeufh5ydwf	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-07 10:01:19.680352+00	2026-02-07 11:12:01.065966+00	mee6wkdmzszr	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1030	ve3zv2m6a4h7	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 00:26:43.932971+00	2026-02-15 02:00:44.302128+00	jdqeeomijiwb	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1036	4cwk47uzhre4	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 15:35:58.853955+00	2026-02-15 16:44:09.060779+00	hkq6ugzeq6bc	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	905	foqsor2l7wtu	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 12:13:11.477873+00	2026-02-08 13:27:27.15752+00	ovncr4fznkes	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	977	6jepns52tqaz	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-12 07:53:02.990518+00	2026-02-12 08:51:16.161604+00	yubpp5cms23f	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1086	iefgfixsmt2d	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-19 05:55:51.594305+00	2026-02-19 08:40:54.269662+00	lmdeofvtenzr	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1196	n7x2n5hjksxn	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	f	2026-02-26 17:38:03.243431+00	2026-02-26 17:38:03.243431+00	hmwhteelrp4v	c14af9c4-7b87-4aed-91fc-3f1f1617cffb
00000000-0000-0000-0000-000000000000	924	5lmh75ume6lx	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	f	2026-02-09 12:16:29.601652+00	2026-02-09 12:16:29.601652+00	\N	28813909-0c1c-4b6b-a130-0d7bb89f1d1c
00000000-0000-0000-0000-000000000000	911	orjuhc4hmrjg	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-09 03:15:55.221215+00	2026-02-10 04:20:40.230696+00	itluujsuoz6h	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	931	4dgldwpame7w	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-10 04:20:40.254137+00	2026-02-10 05:43:37.978852+00	orjuhc4hmrjg	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1167	vhy7filrz4a3	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	f	2026-02-25 06:06:59.63391+00	2026-02-25 06:06:59.63391+00	eh46td2ni7le	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1012	tes2gjmfipng	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 01:50:43.04431+00	2026-02-14 05:21:28.954577+00	y3awneutoyh7	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1019	up2f524xwssb	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 06:34:52.069504+00	2026-02-14 10:33:58.074334+00	gk77wfrhtbif	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1071	lmdeofvtenzr	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-18 08:06:16.707724+00	2026-02-19 05:55:51.572751+00	e47es3e5wbir	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1025	24qslb7pljse	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 17:32:40.770062+00	2026-02-14 19:37:38.882323+00	736doruzmelz	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1031	aa23mwrlardj	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 02:00:44.318504+00	2026-02-15 03:00:30.029112+00	ve3zv2m6a4h7	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	896	mee6wkdmzszr	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-07 08:46:23.835697+00	2026-02-07 10:01:19.666133+00	\N	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	972	yubpp5cms23f	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-11 13:23:39.744635+00	2026-02-12 07:53:02.968283+00	5onqkohjrv2l	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	900	zwuwucxjjvd2	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-07 11:12:01.089362+00	2026-02-07 12:40:14.246023+00	wvaeufh5ydwf	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	906	7qulrbzmwrya	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 13:27:27.16847+00	2026-02-08 14:35:28.17609+00	foqsor2l7wtu	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	978	pcrfouz5myvq	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-12 08:51:16.189459+00	2026-02-12 09:51:34.252861+00	6jepns52tqaz	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1037	ypvteiing762	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 16:44:09.077258+00	2026-02-16 02:09:41.128383+00	4cwk47uzhre4	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	997	xsacj7uvl3dd	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 10:09:39.946865+00	2026-02-13 11:22:44.691322+00	uyewv3d6hdot	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1002	6uoz57uiqjfa	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 12:31:32.14018+00	2026-02-13 15:59:15.669702+00	fvyzz6ofpgxk	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	691	kdznw2poyjmh	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-26 08:51:26.968362+00	2026-01-30 06:07:32.128716+00	\N	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1208	jptc2kcdisqd	de717e45-803b-4ca2-8118-88eecfa63c2c	t	2026-02-27 04:27:28.110878+00	2026-02-27 05:44:58.309678+00	\N	dac35323-c22b-46f8-8989-303b5d7b1101
00000000-0000-0000-0000-000000000000	741	ngsje4qwtdjo	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-30 06:07:32.158043+00	2026-01-30 07:23:00.369272+00	kdznw2poyjmh	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1076	mo7weul6dt5h	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	f	2026-02-18 09:49:19.771764+00	2026-02-18 09:49:19.771764+00	\N	b1bdc2e5-3f3e-40c0-a8e5-126e3c4bd896
00000000-0000-0000-0000-000000000000	742	mjuo4cjsmqlz	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-30 07:23:00.39171+00	2026-01-30 08:21:25.071594+00	ngsje4qwtdjo	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1020	lxe3bs5tyert	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 10:33:58.094421+00	2026-02-14 12:00:40.714356+00	up2f524xwssb	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1026	ugsoeaq2y6ol	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 19:37:38.896854+00	2026-02-14 20:38:28.564574+00	24qslb7pljse	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	743	gowpkr2kloey	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-30 08:21:25.090249+00	2026-01-30 09:19:52.754612+00	mjuo4cjsmqlz	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	901	vb3jgaojskuf	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-07 12:40:14.258539+00	2026-02-08 09:01:48.432916+00	zwuwucxjjvd2	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1032	q7oraebmbj2h	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 03:00:30.044521+00	2026-02-15 04:01:32.082638+00	aa23mwrlardj	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	745	sriprbt27hkq	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-30 09:19:52.784022+00	2026-01-30 10:18:09.813691+00	gowpkr2kloey	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	907	jve7xx2gwnto	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 14:35:28.197998+00	2026-02-08 15:55:42.11415+00	7qulrbzmwrya	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	947	hmwhteelrp4v	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-10 11:51:05.21632+00	2026-02-26 17:38:03.217391+00	gclnv5p2ysge	c14af9c4-7b87-4aed-91fc-3f1f1617cffb
00000000-0000-0000-0000-000000000000	998	3mqa6e23zj5u	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-13 10:14:58.262408+00	2026-02-17 04:38:58.813548+00	en4ozalvk7jh	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	748	36ffmbpmyjut	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-30 10:18:09.826584+00	2026-01-31 04:58:45.211762+00	sriprbt27hkq	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	973	v6b336vjqrrr	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-11 17:06:32.594743+00	2026-02-13 07:47:02.050258+00	o3nada4npbzi	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1059	nqh5ypucomks	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-17 04:38:58.837966+00	2026-02-17 12:58:05.941959+00	3mqa6e23zj5u	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	757	czctqwrhf342	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-31 09:08:02.360586+00	2026-02-03 13:05:21.578863+00	ysj5mwlw6sea	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	979	w4mu56he5vvk	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-12 09:51:34.286429+00	2026-02-13 08:17:40.678373+00	pcrfouz5myvq	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	753	ysj5mwlw6sea	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-01-31 04:58:45.232961+00	2026-01-31 09:08:02.340633+00	36ffmbpmyjut	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1003	fqefjlllllgq	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 15:59:15.695463+00	2026-02-13 17:08:55.619179+00	6uoz57uiqjfa	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	809	cjovpqahlysj	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-03 13:05:21.597402+00	2026-02-04 14:07:45.596939+00	czctqwrhf342	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1060	uccdul5nwx4y	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-17 08:51:24.161938+00	2026-02-21 08:12:29.233151+00	rym66wq7m7jk	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1117	eh46td2ni7le	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-21 08:12:29.247162+00	2026-02-25 06:06:59.62092+00	uccdul5nwx4y	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	902	nkc4pktq3sxn	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 09:01:48.451804+00	2026-02-08 10:10:48.611448+00	vb3jgaojskuf	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1021	7kyel3fpbdqh	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 12:00:40.734745+00	2026-02-14 13:33:42.363117+00	lxe3bs5tyert	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	908	itluujsuoz6h	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-08 15:55:42.124401+00	2026-02-09 03:15:55.201517+00	jve7xx2gwnto	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1027	etvp2anwaks4	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-14 20:38:28.578129+00	2026-02-14 21:39:39.155187+00	ugsoeaq2y6ol	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	986	usnlkezdegvy	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 07:47:02.071257+00	2026-02-13 09:03:10.937129+00	v6b336vjqrrr	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1033	hf46shmjawiz	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-15 04:01:32.103961+00	2026-02-15 05:03:59.274054+00	q7oraebmbj2h	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	993	uyewv3d6hdot	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 09:03:10.989307+00	2026-02-13 10:09:39.924518+00	usnlkezdegvy	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	1004	puj6qb7zwjsw	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-13 17:08:55.634701+00	2026-02-13 23:54:11.382108+00	fqefjlllllgq	c73b4751-c897-4377-9f38-649527bd9988
00000000-0000-0000-0000-000000000000	927	gclnv5p2ysge	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	t	2026-02-10 02:23:29.488301+00	2026-02-10 11:51:05.188432+00	\N	c14af9c4-7b87-4aed-91fc-3f1f1617cffb
00000000-0000-0000-0000-000000000000	857	zuzi4zsf6xsl	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-05 09:48:21.870107+00	2026-02-10 12:52:18.167774+00	anwmj7affrlm	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	949	figgrjyiwb66	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-10 12:52:18.170941+00	2026-02-11 02:27:13.231485+00	zuzi4zsf6xsl	ac28a9d5-908a-4c28-bff0-494543dbca80
00000000-0000-0000-0000-000000000000	1210	rqlkfvad3t2j	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	2026-02-27 04:40:07.191447+00	2026-02-27 04:40:07.191447+00	\N	6ea57cfa-a94f-4ddd-a1eb-1a65477f83b4
00000000-0000-0000-0000-000000000000	836	anwmj7affrlm	2da96c4c-a4b2-4946-8329-97da1e2f8704	t	2026-02-04 14:07:45.618242+00	2026-02-05 09:48:21.853076+00	cjovpqahlysj	ac28a9d5-908a-4c28-bff0-494543dbca80
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: app_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."app_users" ("id", "role", "created_at", "username", "fullname") FROM stdin;
3cebc69a-264a-46cc-8e65-a9ae20d29eb7	admin	2025-11-24 14:41:57.134126+00	fender main	Fender J. Llaguno
3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	user	2025-12-18 12:33:31.790323+00	Admin_Mon	Monaliza S. Quimno
7f319a76-25a0-48b8-ba5e-389684f5daf2	admin	2025-12-18 12:32:44.795693+00	TDS - Winberth	Winberth D. San Jose
f28fddf3-ec16-45ea-876e-2a7abb7b8b76	user	2025-11-24 14:42:56.337596+00	apls	Access Point Learning Solutions
f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	admin	2025-12-22 10:40:04.691904+00	jonard	Jonard Ryan Navarro
de717e45-803b-4ca2-8118-88eecfa63c2c	user	2026-01-08 02:02:04.018187+00	Admin_Clent	Clent Niño Macompas
2da96c4c-a4b2-4946-8329-97da1e2f8704	user	2026-01-09 05:46:57.239597+00	Leslie_DavaoAdmin	\N
67dae099-2a9e-434b-85e1-003abddb63cd	user	2026-01-12 07:08:51.812671+00	fender	\N
\.


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."branches" ("id", "branch_name", "created_at", "created_by") FROM stdin;
d5614b25-79f7-4e39-b3fc-52b6f1b6f770	TAGUM	2026-01-12 07:22:49.324189+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7
fefb9e21-347d-4cd5-b1c0-4de05d079d94	DAVAO	2026-01-12 07:23:05.771481+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7
\.


--
-- Data for Name: enrollment_modes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."enrollment_modes" ("id", "name", "created_at", "fee", "edited_by", "created_by", "edited_at") FROM stdin;
41	DAIRY FARMING (DISCOUNTED)	2026-01-26 05:14:13.585531+00	30000	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
42	PTE INTENSIVE (1 WEEK)	2026-02-02 06:49:14.621343+00	8000	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
43	PTE INTENSIVE (2 WEEKS)	2026-02-02 06:49:26.235781+00	12000	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
5	DAIRY FARMING	2025-12-03 02:00:17.5+00	35000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	2026-01-09 06:37:07.332+00
15	SJ MEATSHOP BUTCHERY TRAINING	2025-12-03 02:03:19.935+00	21500	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	2026-01-09 07:37:15.377+00
11	ONLINE REVIEW	2025-11-18 06:03:12.14226+00	6000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	2026-01-09 07:37:26.046+00
40	APLS REVIEW - DAVAO	2026-01-17 10:49:07.974198+00	5500	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
18	APLS REVIEW - TAGUM	2025-12-03 02:00:06.11+00	6000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	2026-01-17 10:49:14.388+00
8	CONSULTANCY	2025-12-03 02:01:45.264+00	0	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
13	CPESCDO MIRAL	2025-12-03 02:01:54.784+00	0	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
21	INTENSIVE 1-ON-1	2025-12-03 02:02:42.558+00	7500	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
22	INTENSIVE DUO	2025-12-03 02:03:04.318+00	4000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
4	MNB TRAINEE	2025-12-03 02:03:35.22+00	5000	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
\.


--
-- Data for Name: schedule_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."schedule_table" ("id", "schedule", "created_at", "edited_by", "created_by", "edited_at") FROM stdin;
1	MTW - 1PM - 4PM	2025-11-25 01:35:39.499094+00	\N	\N	\N
2	MTW - 6PM - 9PM	2025-11-25 01:35:47.033647+00	\N	\N	\N
3	ONLINE CLASS	2025-11-25 01:35:54.673583+00	\N	\N	\N
5	INTENSIVE	2025-11-25 01:36:08.791928+00	\N	\N	\N
4	REVIEW COMPLETED	2025-12-01 09:17:11.681+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
\.


--
-- Data for Name: status_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."status_table" ("id", "status_name", "created_at", "edited_by", "created_by", "edited_at") FROM stdin;
5	ON TRAINING	2025-11-25 01:14:27.096271+00	\N	\N	\N
6	ON BREAK	2025-11-25 01:14:37.073834+00	\N	\N	\N
8	INTENSIVE	2025-11-25 01:16:06.944328+00	\N	\N	\N
9	NOT ATTENDING CLASS	2025-11-25 01:16:25.876308+00	\N	\N	\N
7	NOT YET STARTED	2025-11-25 01:14:50.286151+00	\N	\N	\N
1	REVIEW COMPLETED	2025-12-03 02:34:34.79+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
15	DROPPED	2026-01-12 01:59:30.182137+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
16	AWOL	2026-01-12 01:59:35.516103+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
17	ON GOING	2026-01-20 02:25:25.588327+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
\.


--
-- Data for Name: student_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."student_table" ("id", "lastname", "firstname", "middlename", "date_of_birth", "contact_no", "email_address", "created_at", "edited_by", "edited_at", "created_by", "student_no", "deleted_at", "photo_url") FROM stdin;
116	MACARAEG	MICKEY NAHRIE	TAHOS	2001-07-21	09979133879	\N	2026-01-12 05:17:38.001+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260007	\N	\N
117	ANDOJOYAN	ROY	MAGNO	1993-07-07	09777880867	royando145@gmail.com	2026-01-12 05:20:17.288+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260008	\N	\N
121	LINO	CELMAR	SARONA	1990-02-09	09954890715	celmarlino90@gmail.com	2026-01-12 05:43:09.6+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260011	\N	\N
123	CASTILLO	JOSE ALFRED	CONCEPCION	1999-02-23	097774475549	castilloalfred943@gmail.com	2026-01-12 05:47:24.277+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260013	\N	\N
120	MEDENILLA	RON ANTHONY	RAFOLS	1988-05-31	09665898706	tonmedenilla6@gmail.com	2026-01-12 05:40:43.747+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260010	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260010_1771848596291.jpg?alt=media&token=719ac09d-d302-4547-8705-7932aefc8883
127	HALILI	ELIZAR	MARIAL	\N	09635699850	halilizarjrm2004@gmail.com	2026-01-13 08:09:04.577+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260014	\N	\N
147	DAGONDON	JONATHAN	RATILLA	2001-12-07	09655425463	jonathandagondon01@gmail.com	2026-01-22 07:04:21.337+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260025	\N	\N
133	ASDFASDFASDF	ASDFASDF	\N	\N	\N	\N	2026-01-16 02:04:05.529+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260017	2026-01-16 02:05:20.317	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260017.jpg?alt=media&token=61c34314-66ea-46ed-9acc-501119630a4c
129	DELOSO	CHRISTIAN KING	ABREGANA	2001-10-09	09208650052	kdeloso09@gmail.com	2026-01-14 07:43:51.291+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260015	\N	\N
134	TEST	DATA3	\N	\N	\N	\N	2026-01-16 02:06:56.996+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260017	2026-01-16 02:07:14.476	\N
141	RANCHEZ	JAN LEONA	MANUBAG	2006-09-16	09762491080	ranchezleaona91606@gmail.com	2026-01-19 08:37:41.971+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260021	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260021.jpg?alt=media&token=a5c5215b-de88-4746-a5ba-fb2553518722
126	TEST	DATA	TTESF	2026-01-13	\N	\N	2026-01-13 01:06:02.888+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-16 01:30:44.259+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260009	2026-01-23 02:12:01.62	\N
136	VELASCO	ONO	OCUPE	2006-09-14	09610806924	onovelasco811@gmail.com	2026-01-17 07:23:01.85+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260017	2026-01-23 04:17:02.259	\N
143	MOTAS	PHILIP CHRISTIAN	LOAYON	\N	09970815360	\N	2026-01-20 06:16:12.887+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260022	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260022_1768889881095.jpg?alt=media&token=22bad491-c337-4692-866c-9651008c4126
135	TEST DATA	AASDF	\N	\N	\N	\N	2026-01-16 02:08:26.887+00	\N	\N	67dae099-2a9e-434b-85e1-003abddb63cd	20260017	2026-01-16 02:21:46.093	\N
131	TESTSETETSET	ASDFSAFASD	\N	\N	\N	\N	2026-01-15 06:49:47.79+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260016	2026-01-15 06:50:27.458	\N
132	PACAÑA	JOSEPH	QUIDATO	1989-11-01	09569014150	Donpepot110189@gmail.com	2026-01-15 11:53:25.447+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260016	\N	\N
138	JIMENEZ	MICHELLE	SAMBADE	1983-10-07	09973828672	\N	2026-01-17 08:24:06.908+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260019	\N	\N
110	JOVITA	GISELLE	ABABAT	1997-10-12	09107651793	gisellerondalla@gmail.com	2026-01-12 04:42:19.769+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260001	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260001_1770121409689.jpg?alt=media&token=965392ef-fedd-4bc7-87cd-8231faf65579
148	HIBAYA	REAZEAL	BESANA	1996-11-25	09101847354	hreazeal@gmaI.com	2026-01-23 11:14:29.504+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260009	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260009_1769167095597.jpg?alt=media&token=f6837ce7-b69c-48c0-b30b-826f93012b4b
144	TETSETSDRFDSF	LKJO	\N	\N	\N	\N	2026-01-20 06:36:44.69+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260023	2026-01-20 06:38:54.878	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260023_1768891011871.jpg?alt=media&token=a081e346-46d0-436e-be26-87c41827d46b
145	ARABEJO	BOBBY ADRIAN	SUTINA	2003-07-14	09563493880	Bobbyadrianarabejo@gmail.com	2026-01-22 06:08:33.931+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260023	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260023_1769062137759.jpg?alt=media&token=7935e90e-b666-4d76-8056-9fb28757ccb5
146	LABADOR	ROY	BALAGOSA	2005-05-04	09933988503	roylabador22@gmail.com	2026-01-22 06:12:23.19+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260024	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260024_1769062355744.jpg?alt=media&token=6e0353f0-d2d9-441c-8bfb-67dfc0c352bb
137	BORDAJE	ANGEL	MANCHA	2002-06-17	09631920221	bordajeangel24@gmail.com	2026-01-17 08:20:09.984+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260018	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260018_1769239456098.jpg?alt=media&token=c195ceae-10a9-411d-acfe-8fc34ddaf335
150	TEST	DATA	\N	\N	\N	\N	2026-01-26 05:48:20.895+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260026	2026-01-26 07:00:07.887	\N
151	BORDAJE	SISA CLAIRE	MANCHA	2005-08-24	09603350692	clairemancha24@gmail.com	2026-01-26 09:04:26.77+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260026	\N	\N
152	ALCUBEREZ	RANDY	ADAYA	1995-11-29	09207422167	112995raalcuberez@gmail.com	2026-01-27 02:05:25.933+00	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	20260027	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260027_1769479592813.jpg?alt=media&token=15027fdc-2343-44a3-b254-d593fbd194b5
155	VELASCO	ONO	OCUPE	2006-09-14	09610806924	onovelasco811@gmail.com	2026-01-30 08:48:20.798+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260030	\N	\N
153	LAPUHA	ROHVEL  DAVE	MARCOS	2004-12-17	09975835721	davelapuha@gmail.com	2026-01-28 05:29:57.489+00	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	20260028	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260028_1769578266823.jpg?alt=media&token=b5a01653-43b5-423b-969c-ef317a7c9c46
154	DIATOR	MUSHIEN	GALAWAN	1989-05-25	09069469951	mushiendiator14@gmail.com	2026-01-29 02:55:36.032+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260029	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260029_1769655418192.jpg?alt=media&token=3e0fdb02-9d16-4262-bfa0-2ad4ac0f9a92
156	REFUGIO	JOSE GABRIEL	MONTALLANA	1992-08-12	0929 749 0194	refugio_josegabriel@yahoo.com	2026-01-30 09:01:50.487+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260031	\N	\N
157	PACATANG	LEONARDO JR.	SALERA	1994-04-06	090902388810	leonardopacatangjr@gmail.com	2026-01-30 10:04:38.976+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260032	\N	\N
149	SUMALINOG	STEVEN SIDNEY	CASIMERO	1993-03-14	09690790398	stevensidney18@gmail.com	2026-01-26 04:54:26.141+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260017	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260017_1771849631983.jpg?alt=media&token=a128da48-3490-4b22-a805-7c8b466638b2
112	CANTILA	JOOBER	SABORNIDO	1990-04-16	09158062803	cantilajoober16@gmail.com	2026-01-12 04:54:23.476+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260003	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260003_1771850108490.jpg?alt=media&token=0d1cd0a1-6f46-448f-ad6d-6119c5cae609
113	ORILLANO	KHANE	BAJA	2000-11-14	09639411818	khaneorillano653@gmail.com	2026-01-12 05:03:50.109+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260004	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260004_1771850268481.jpg?alt=media&token=d77f6e27-7d4b-4809-a11d-35f6d1664b06
159	ASEO	REGAN CLARK	\N	1998-04-24	09307890194	\N	2026-02-02 08:16:22.657+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260033	\N	\N
181	SIBONGGA	LIRA MAY	AWIT	1990-05-08	09777206521	lmasibongga@gmail.com	2026-02-09 10:03:29.437+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260055	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260055_1770631505077.jpg?alt=media&token=7c4c6986-b5da-490d-853e-22bfdfe2afcd
160	MORATA	LEX	HIPONIA	1987-04-05	09639438707	lexusmorata3@gmail.com	2026-02-02 08:39:54.019+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260034	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260034_1770021729313.jpg?alt=media&token=779e47d4-7e94-4476-a336-30586677fec6
183	URDANETA	JAY MARC	\N	1999-06-28	09309283624	urdanetajay82@gmail.com	2026-02-10 02:55:57.907+00	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	20260057	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260057_1770692203959.jpg?alt=media&token=00124921-c5c2-4b3a-9e1e-7e91f2bdbc76
140	LUCAÑAS	MAXIMO	BUNGATO	1998-08-20	09169046739	lucanasmaximo@gmail.com	2026-01-19 07:15:28.966+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260020	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260020_1770028074912.jpg?alt=media&token=eb55728f-5778-44b3-acfe-3a023ef567be
162	MAGLENTE	JEAM KAYE	ARGAWANON	2000-11-04	09763375308	maglentejean@gmail.com	2026-02-04 08:35:36.312+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260036	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260036_1770194187390.jpg?alt=media&token=c52348f0-4466-4e74-9c2f-aba4bc5590ef
163	NARAZO	CHRISTIAN JADE	FAIGAO	2001-06-17	09454021708	narazo.cf.bsmt@gmail.com	2026-02-05 10:19:22.076+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260037	\N	\N
164	POLINA	ALDEN JOHN	TEJADILLO	1990-08-11	09062381493	aldenjohnpolina499@gmail.com	2026-02-05 10:30:44.414+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260038	\N	\N
165	BELDIA	JANA VIVIEN	LOPEZ	1995-10-08	09498317314	ako.si.jana@gmail.com	2026-02-06 03:21:24.106+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260039	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260039_1770348104184.jpg?alt=media&token=a188bd1e-3788-4dff-ade3-b0dddd3063a2
166	BRETAÑA	RENZ ALDRE	\N	\N	09512631905	brenzaldre24@gmail.com	2026-02-06 05:32:36.79+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260040	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260040_1770355970558.jpg?alt=media&token=448e8713-aeaf-4854-97b1-6eb63f7f6182
167	SULITO	LANZ ALVHENE	CATALUÑA	2008-11-11	09485589467	lanzsultio@gmail.com	2026-02-06 05:49:23.585+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260041	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260041_1770356981634.jpg?alt=media&token=5952d217-57b9-4642-a858-9ab299442419
168	LINGANAY	CRESENCIO	PALCONIT	1997-09-08	09631956788	crizlinganay@gmail.com	2026-02-06 06:08:12.704+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260042	\N	\N
169	LUSTE	STELA MARIE	MALIKSE	1984-02-13	09567021285	javy_amery@yahoo.com	2026-02-06 07:39:03.335+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260043	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260043_1770363588907.jpg?alt=media&token=5aa1a318-65b6-4c6f-9d1c-1a92c7ec9a75
171	GEMENEZ	MARIFEL	\N	2000-03-20	09300589476	marifelgemenez05@gmail.com	2026-02-07 07:39:56.704+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260045	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260045_1770450099881.jpg?alt=media&token=0070f50c-ef53-4f36-86a5-9feee8ebaac4
172	GESORO	NEAL JEUN	SUAYBAGUIO	\N	\N	\N	2026-02-07 07:50:21.127+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260046	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260046_1770450638002.jpg?alt=media&token=1d79f485-934d-4340-aa84-1639c7db7512
176	ARAGON	MARIA ANGELA	GRANADA	1994-08-21	09700236965	aannjj88@gmail.com	2026-02-07 08:50:25.509+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260050	\N	\N
184	ALGABRE	REYNALDO	ASIS	1968-03-14	09942001349	\N	2026-02-13 02:21:21.516+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260058	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260058_1770949308824.jpg?alt=media&token=aed77b1a-b86e-40b8-81a8-bde161975897
185	PONTERAS	REX JASPHER	ALFAR	2001-12-16	09977110905	rexjaspheralfar247@gmail.com	2026-02-13 06:18:49.107+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260059	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260059_1770963714243.jpg?alt=media&token=f9d38685-6410-4f45-85be-5418b59c7830
186	NILLAMA	LORRIE MEL	PAMAT	2000-10-09	09306959026	lorriemelnillama@gmail.com	2026-02-13 08:51:47.083+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260060	\N	\N
187	GILAGA	ROMEL	ARADILLOS	1989-11-11	09913065705	rhogs_gilaga20@yahoo.com	2026-02-13 09:16:41.187+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260061	\N	\N
188	MAR	EDRIAN	LABISTE	2002-10-28	09701553857	edrianmar5@gmail.com	2026-02-13 09:34:38.67+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260062	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260062_1770975374339.jpg?alt=media&token=d40af96c-3279-4bc1-ada3-d4d6a42e6bcc
189	SANTANDER	HARVEY	HORDISTA	1988-12-01	09558893915	santanderharvey@yahoo.com	2026-02-13 09:36:54.932+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260063	\N	\N
190	PINGKIAN	JHON DAVID	N/A	2002-11-12	09057207747	davidprado937@gmail.com	2026-02-13 09:46:32.176+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260064	\N	\N
193	GOLDE	LOUMAR	BALINGCOS	1993-05-22	09385535659	goldeloumar@gmail.com	2026-02-16 02:32:18.749+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260067	\N	\N
192	GOLDE	LOUMAR	\N	\N	\N	\N	2026-02-16 02:29:06.895+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260066	2026-02-16 07:01:26.433	\N
191	OMBOY	JOEMAR	LANTICSE	1988-06-14	09074388160	joe.mar90@yahoo.com	2026-02-14 01:51:42.688+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260065	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260065_1771849544335.jpg?alt=media&token=5cbfe510-1ab6-4612-b635-1fc4edee251e
194	GARCIA	LOVELLA	VENDAL	1998-10-13	09392035692	vel.aicrag@gmail.com	2026-02-16 06:23:18.114+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260068	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260068_1771226894861.jpg?alt=media&token=7cd16654-d717-4e04-a096-1b2136edb991
170	ARCEGA	RAMON LESTER	\N	\N	\N	\N	2026-02-07 03:33:25.278+00	\N	\N	\N	20260044	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260044_1771849192324.jpg?alt=media&token=5ee478cf-9e28-4575-a118-373346a0308f
179	PARUMOG	ANGELLIE	SANTOS	1996-11-21	09176290759	santosangellie@gmail.com	2026-02-07 09:14:05.311+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260053	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260053_1771849322405.jpg?alt=media&token=95032838-8796-4c56-b5cb-30311a37b50d
182	JOSE	RYAN TROY	\N	\N	\N	\N	2026-02-09 11:26:03.993+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260056	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260056_1771849694889.jpg?alt=media&token=3bd4c7e0-7932-4fb2-95a5-b25eb6adb867
174	ALBARICO	ANGELICA	JOSE	1997-06-27	09513611725	angelicaalbarico198@gmail.com	2026-02-07 08:42:44.12+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260048	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260048_1771849826238.jpg?alt=media&token=5a1a5cef-b241-44fc-96a4-7fbe0d52e815
204	SENADOS	RODEL	PATAC	1999-10-25	09939757174	rodelsenados28@gmail.com	2026-02-24 08:58:46.337+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260073	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1771908407097_7ql98b.jpg?alt=media&token=c6876406-faff-4e77-8fd1-94abad4f698a
195	DELOS SANTOS	YVONNE	PAYPA	1992-11-15	09539826602	yvonne9215@gmail.com	2026-02-18 03:10:54.097+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260066	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260066_1771384354997.jpg?alt=media&token=f74e524d-82ca-4b46-837f-0a626866494c
196	TEST	IMAGE	\N	\N	\N	\N	2026-02-18 08:11:02.049+00	\N	\N	67dae099-2a9e-434b-85e1-003abddb63cd	20260069	2026-02-18 08:11:43.377	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1771399184312_4wsp0x.jpg?alt=media&token=0b9fddad-c6c4-40e9-a4f0-ae65cbbf5adb
197	FSDAFSDAF	ASDFASDF	\N	\N	\N	\N	2026-02-18 08:57:19.769+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260069	2026-02-18 09:39:17.868	\N
198	LLANO	ROJEN	ROA	2002-11-09	09308963875	rojenllano5@gmail.com	2026-02-19 08:47:47.378+00	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	20260069	\N	\N
199	TAN	JASPER	ABAO	1999-12-30	09568407622	jaspertangrab018@gmail.com	2026-02-20 05:37:35.779+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260070	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1771565076762_8a9f74.jpg?alt=media&token=242bab0e-183a-4f24-bfcc-1d3e31338265
200	CENITA	FERNAN	PLAZOS	2003-07-18	09854677019	fernancenita09@gmail.com	2026-02-21 06:21:13.819+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260071	\N	\N
201	TEST	TEST DATA	ASDF	2026-02-23	234234	fendllaguno001@gmail.com	2026-02-23 05:44:35.709+00	\N	\N	67dae099-2a9e-434b-85e1-003abddb63cd	20260072	2026-02-23 05:48:10.21	\N
202	TEST	ASDF	ASDFASDF	2026-02-23	123123	fendllaguno001@gmail.com	2026-02-23 06:08:07.832+00	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	20260072	2026-02-23 06:09:04.942	\N
161	MONTEROLA	JOHN VIRGIL	ESPINA	2026-10-09	09193881909	jaewha07@gmail.com	2026-02-04 03:57:19.349+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260035	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260035_1771849260832.jpg?alt=media&token=857df7ba-9037-4ac7-b617-733b8ea4b440
180	PARUMOG	JOSEPH	CRUDA	1992-03-18	09360416421	joseph.parumog@gmail.com	2026-02-07 09:18:24.276+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260054	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260054_1771849366520.jpg?alt=media&token=280a858c-66ea-4ee8-86db-5c11f7c5713b
175	TINAY	JASON JHON	JAIM	1998-01-16	09500942673	jepoxjhontinay@gmail.com	2026-02-07 08:46:30.17+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260049	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260049_1771849487242.jpg?alt=media&token=87b866ed-d277-42d4-8db9-7b0a89183b48
178	HALIC	CHRISTIAN	YBAÑEZ	2004-04-07	09973416134	\N	2026-02-07 09:02:05.787+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260052	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260052_1771849598821.jpg?alt=media&token=74ed52bb-62d4-4dd1-8441-f08b4d28a8c8
177	MARTINEZ	MARVIN	SAGARAY	1988-02-08	09306856371	drilonnonetteruby8269@gmail.com	2026-02-07 08:54:54.772+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260051	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260051_1771849748643.jpg?alt=media&token=c6b18a51-b711-4510-b454-5ee766c7ac34
173	BARABA	KYLE NICOLE	GO	1999-09-13	09510474112	barbzz913@gmail.com	2026-02-07 08:28:24.832+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260047	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260047_1771849881124.jpg?alt=media&token=9d193a26-639a-44f4-ab84-80cc010c0530
205	ARREZA	TREME ZIME	PALACIO	1993-03-19	09475954838	Ttremezimearreza@gmail.com	2026-02-25 02:34:43.73+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260074	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1771985741885_zpr4tx.jpg?alt=media&token=9501b7da-d8b9-481d-8e1e-7cd54cfff2c9
206	ESTACA	FRANK RAFAEL	TUSAY	2002-02-05	09505431028	estacafrankrafael@gmail.com	2026-02-27 02:07:52.645+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260075	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1772153774041_w17ujz.jpg?alt=media&token=41b35181-a747-4991-ad09-786ab7785879
207	AUXILLO	HASHYL	PAN	1991-04-28	09810634694	shypan04@gmail.com	2026-02-27 04:33:31.647+00	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	20260076	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1772164705300_fijjjb.jpg?alt=media&token=c142ff99-8905-45e8-943c-2f4193e48689
115	AMPOLOQUIO	RANIEL	N/A	1996-12-02	09387146719	ranielampoloquio565@gmail.com	2026-01-12 05:15:04.256+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260006	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260006_1771849968206.jpg?alt=media&token=c21f25af-729f-4c54-a8ae-c468e7087419
111	JIMENEZ	JEFFREY	CALAMBO	1981-08-11	09543843350	jeffreyjimenez1181@gmail.com	2026-01-12 04:49:49.528+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260002	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260002_1771850037032.jpg?alt=media&token=dd0b9f41-6da4-4a9a-bcd4-1a87e0f59e8b
122	GANADOS	ZAIRUS	VICTORIO	2000-06-04	09352093978	zedgogh@gmail.com	2026-01-12 05:45:35.619+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260012	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260012_1771850199556.jpg?alt=media&token=e40480a8-7c40-487f-b2aa-3296276068a4
114	MONTEPIO	JOHN LOUISE	ROSAL	2000-07-26	09152179434	jlouise262626@gmail.com	2026-01-12 05:07:05.139+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260005	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F20260005_1771850645952.jpg?alt=media&token=fded0680-0ddb-46d1-9068-38303767cddf
203	SABAS	JOSAH	RENDOQUE	2001-12-07	09306445262	josahsabas5@gmail.com	2026-02-24 08:52:46.665+00	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	20260072	\N	https://firebasestorage.googleapis.com/v0/b/access-point-system.firebasestorage.app/o/profile%2F1771916802646_32a7dn.jpg?alt=media&token=fdf09344-fe1d-4929-bff6-a6542649d675
\.


--
-- Data for Name: enrollment_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."enrollment_table" ("id", "program_type", "session_schedule", "status", "review_fee", "created_at", "test_type", "testing_partner", "country_of_destination", "student_id", "mode_id", "edited_by", "edited_at", "created_by", "batch_no", "branch", "review_setup", "validity_start", "validity_end", "branch_id") FROM stdin;
100	DAIRY FARMING	\N	5	35000	2026-01-12 04:49:49.528+00	GENERAL TRAINING	BRITISH COUNCIL		111	5	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-12 06:55:25.351+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
110	DAIRY FARMING	\N	5	35000	2026-01-12 05:43:09.6+00	GENERAL TRAINING	BRITISH COUNCIL		121	5	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-12 06:55:37.008+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
143	SJ MEATSHOP BUTCHERY TRAINING	\N	7	21500	2026-02-02 08:16:22.657+00	GENERAL TRAINING	BRITISH COUNCIL	\N	159	15	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	\N	\N	\N
112	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:47:24.277+00	GENERAL TRAINING	BRITISH COUNCIL		123	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:23:19.293+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
149	APLS REVIEW - TAGUM	3	17	6000	2026-02-06 03:21:24.106+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	165	18	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	ONLINE	2026-02-06	2026-06-06	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
134	DAIRY FARMING	\N	7	35000	2026-01-26 04:54:26.141+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	149	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
101	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 04:54:23.476+00	GENERAL TRAINING	BRITISH COUNCIL		112	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:15:16.782+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
102	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:03:50.109+00	GENERAL TRAINING	BRITISH COUNCIL		113	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:16:30.534+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
144	APLS REVIEW - TAGUM	2	17	6000	2026-02-02 08:39:54.019+00	GENERAL TRAINING	BRITISH COUNCIL	UNITED STATES	160	18	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	FACE TO FACE	2026-02-09	2027-02-09	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
104	DAIRY FARMING	\N	5	35000	2026-01-12 05:15:04.256+00	GENERAL TRAINING	BRITISH COUNCIL		115	5	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-12 06:51:35.533+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
138	SJ MEATSHOP BUTCHERY TRAINING	\N	7	21500	2026-01-28 05:29:57.489+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	153	15	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	1	\N	\N	\N	\N	\N
103	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:07:05.139+00	GENERAL TRAINING	BRITISH COUNCIL		114	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:16:50.843+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
131	APLS REVIEW - TAGUM	2	17	6000	2026-01-22 06:12:23.19+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	146	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:32:50.799+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	TAGUM	FACE TO FACE	2026-01-22	2027-01-22	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
140	APLS REVIEW - DAVAO	1	17	5500	2026-01-30 08:48:20.798+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	155	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	53	\N	FACE TO FACE	2026-01-26	2026-04-26	fefb9e21-347d-4cd5-b1c0-4de05d079d94
105	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:17:38.001+00	GENERAL TRAINING	BRITISH COUNCIL		116	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:17:21.01+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
141	APLS REVIEW - DAVAO	2	17	5500	2026-01-30 09:01:50.487+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	156	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	49	\N	FACE TO FACE	2026-01-12	2026-04-12	fefb9e21-347d-4cd5-b1c0-4de05d079d94
132	APLS REVIEW - TAGUM	2	17	6000	2026-01-22 07:04:21.337+00	GENERAL TRAINING	BRITISH COUNCIL		147	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-02 06:47:34.84+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	TAGUM	FACE TO FACE	2026-01-26	2027-01-26	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
142	APLS REVIEW - DAVAO	1	7	5500	2026-01-30 10:04:38.976+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	157	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	54	\N	FACE TO FACE	2026-02-09	2026-05-09	fefb9e21-347d-4cd5-b1c0-4de05d079d94
139	APLS REVIEW - TAGUM	1	17	6000	2026-01-29 02:55:36.032+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	154	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:33:25.677+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	FACE TO FACE	2026-02-02	2027-02-02	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
109	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:40:43.747+00	GENERAL TRAINING	BRITISH COUNCIL		120	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:17:56.534+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
126	APLS REVIEW - TAGUM	2	17	6000	2026-01-19 07:15:28.966+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	140	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:31:27.172+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	TAGUM	FACE TO FACE	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
106	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:20:17.288+00	GENERAL TRAINING	BRITISH COUNCIL		117	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:21:31.702+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
111	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-01-12 05:45:35.619+00	GENERAL TRAINING	BRITISH COUNCIL		122	41	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-26 05:21:53.556+00	de717e45-803b-4ca2-8118-88eecfa63c2c	6	\N	\N	\N	\N	\N
137	DAIRY FARMING	1	5	35000	2026-01-27 02:05:25.933+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	152	5	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	7	\N	\N	\N	\N	\N
127	APLS REVIEW - TAGUM	1	17	6000	2026-01-19 08:37:41.971+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	141	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:31:48.364+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	TAGUM	FACE TO FACE	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
133	PTE INTENSIVE (2 WEEKS)	5	17	12000	2026-01-23 11:14:29.504+00	ACADEMIC	BRITISH COUNCIL	AUSTRALIA	148	43	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-02 06:50:18.557+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	FACE TO FACE	2026-01-19	2026-01-31	\N
99	APLS REVIEW - TAGUM	2	17	6000	2026-01-12 04:42:19.769+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	110	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:32:11.067+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	TAGUM	FACE TO FACE	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
130	APLS REVIEW - TAGUM	2	17	6000	2026-01-22 06:08:33.931+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	145	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 02:32:30.178+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	TAGUM	FACE TO FACE	2026-01-22	2027-01-22	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
145	DAIRY FARMING	2	5	35000	2026-02-04 03:57:19.349+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	161	5	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	7	\N	\N	\N	\N	\N
146	INTENSIVE 1-ON-1	5	7	7500	2026-02-04 08:35:36.312+00	ACADEMIC	BRITISH COUNCIL	SPAIN	162	21	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	\N	\N	\N
147	APLS REVIEW - DAVAO	1	7	5500	2026-02-05 10:19:22.076+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	163	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	41	\N	FACE TO FACE	2026-02-09	2026-05-09	fefb9e21-347d-4cd5-b1c0-4de05d079d94
148	APLS REVIEW - DAVAO	1	17	5500	2026-02-05 10:30:44.414+00	GENERAL TRAINING	BRITISH COUNCIL	UNITED KINGDOM	164	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	52	\N	FACE TO FACE	2026-02-03	2026-05-03	fefb9e21-347d-4cd5-b1c0-4de05d079d94
150	DAIRY FARMING	\N	5	35000	2026-02-06 05:32:36.79+00	GENERAL TRAINING	BRITISH COUNCIL	\N	166	5	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	8	\N	\N	\N	\N	\N
153	APLS REVIEW - TAGUM	1	17	6000	2026-02-06 07:39:03.335+00	GENERAL TRAINING	BRITISH COUNCIL	UNITED STATES	169	18	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	FACE TO FACE	2026-02-06	2027-02-06	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
151	APLS REVIEW - TAGUM	1	17	6000	2026-02-06 05:49:23.585+00	GENERAL TRAINING	BRITISH COUNCIL	UNITED STATES	167	18	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-06 06:32:28.505+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	TAGUM	FACE TO FACE	2026-02-06	2027-02-06	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
152	APLS REVIEW - TAGUM	2	17	6000	2026-02-06 06:08:12.704+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	168	18	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-06 06:40:14.009+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	TAGUM	FACE TO FACE	2026-02-16	2027-02-16	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
154	DAIRY FARMING	\N	\N	35000	2026-02-07 03:33:25.278+00	GENERAL TRAINING	BRITISH COUNCIL	\N	170	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
128	DAIRY FARMING	\N	\N	35000	2026-01-20 06:16:12.887+00	GENERAL TRAINING	BRITISH COUNCIL		143	5	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-07 00:02:10.328+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	7	TAGUM	\N	\N	\N	\N
155	DAIRY FARMING	\N	7	35000	2026-02-07 07:39:56.704+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	171	5	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	8	\N	\N	\N	\N	\N
156	APLS REVIEW - TAGUM	\N	\N	6000	2026-02-07 07:50:21.127+00	GENERAL TRAINING	BRITISH COUNCIL	\N	172	18	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	ONLINE	2026-02-07	2026-06-07	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
157	DAIRY FARMING	\N	5	35000	2026-02-07 08:28:24.832+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	173	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
158	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-02-07 08:42:44.12+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	174	41	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
159	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-02-07 08:46:30.17+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	175	41	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	\N	\N	\N
160	DAIRY FARMING	\N	5	35000	2026-02-07 08:50:25.509+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	176	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
161	DAIRY FARMING	\N	5	35000	2026-02-07 08:54:54.772+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	177	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
162	DAIRY FARMING	\N	5	35000	2026-02-07 09:02:05.787+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	178	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
163	DAIRY FARMING	\N	5	35000	2026-02-07 09:14:05.311+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	179	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
164	DAIRY FARMING	\N	5	35000	2026-02-07 09:18:24.276+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	180	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
165	APLS REVIEW - TAGUM	2	17	6000	2026-02-09 10:03:29.437+00	ACADEMIC	BRITISH COUNCIL	JAPAN	181	18	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	FACE TO FACE	2026-02-06	2027-02-06	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
166	DAIRY FARMING	\N	5	35000	2026-02-09 11:26:03.993+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	182	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7	\N	\N	\N	\N	\N
167	DAIRY FARMING	2	5	35000	2026-02-10 02:55:57.907+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	183	5	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	8	\N	\N	\N	\N	\N
169	DAIRY FARMING	2	7	35000	2026-02-13 06:18:49.107+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	185	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	8	\N	\N	\N	\N	\N
170	APLS REVIEW - DAVAO	2	17	5500	2026-02-13 08:51:47.083+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	186	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	42	\N	FACE TO FACE	2026-02-09	2026-05-09	fefb9e21-347d-4cd5-b1c0-4de05d079d94
171	APLS REVIEW - DAVAO	2	17	5500	2026-02-13 09:16:41.187+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	187	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	52	\N	FACE TO FACE	2026-02-09	2026-05-09	fefb9e21-347d-4cd5-b1c0-4de05d079d94
172	APLS REVIEW - TAGUM	2	7	6000	2026-02-13 09:34:38.67+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	188	18	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N	FACE TO FACE	2026-02-23	2027-02-23	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
173	APLS REVIEW - DAVAO	1	17	5500	2026-02-13 09:36:54.932+00	GENERAL TRAINING	BRITISH COUNCIL	CANADA	189	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	43	\N	FACE TO FACE	2026-02-02	2026-05-02	fefb9e21-347d-4cd5-b1c0-4de05d079d94
174	APLS REVIEW - DAVAO	1	17	5500	2026-02-13 09:46:32.176+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	190	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	53	\N	FACE TO FACE	2026-02-02	2026-05-02	fefb9e21-347d-4cd5-b1c0-4de05d079d94
175	DAIRY FARMING (DISCOUNTED)	\N	5	30000	2026-02-14 01:51:42.688+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	191	41	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	7	\N	\N	\N	\N	\N
177	DAIRY FARMING	\N	7	35000	2026-02-16 02:32:18.749+00	GENERAL TRAINING	BRITISH COUNCIL	IRELAND	193	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	8	\N	\N	\N	\N	\N
178	APLS REVIEW - TAGUM	3	\N	6000	2026-02-16 06:23:18.114+00	GENERAL TRAINING	BRITISH COUNCIL	UNITED KINGDOM	194	18	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	ONLINE	2026-02-26	2026-06-26	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
179	SJ MEATSHOP BUTCHERY TRAINING	\N	\N	21500	2026-02-18 03:10:54.097+00	GENERAL TRAINING	BRITISH COUNCIL	\N	195	15	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	\N	\N	\N
168	APLS REVIEW - TAGUM	2	17	6000	2026-02-13 02:21:21.516+00	GENERAL TRAINING	BRITISH COUNCIL		184	18	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-13 02:32:14.813+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	TAGUM	FACE TO FACE	2026-02-16	2027-02-16	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
182	APLS REVIEW - DAVAO	2	17	5500	2026-02-19 08:47:47.378+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	198	40	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	42	\N	FACE TO FACE	2026-02-02	2026-05-02	fefb9e21-347d-4cd5-b1c0-4de05d079d94
183	DAIRY FARMING	\N	7	35000	2026-02-20 05:37:35.779+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	199	5	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	8	\N	\N	\N	\N	\N
184	DAIRY FARMING	\N	17	35000	2026-02-21 06:21:13.819+00	GENERAL TRAINING	BRITISH COUNCIL	\N	200	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	\N	\N	\N
187	APLS REVIEW - TAGUM	1	7	6000	2026-02-24 08:52:46.665+00	GENERAL TRAINING	BRITISH COUNCIL	\N	203	18	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	FACE TO FACE	2026-03-10	2027-03-10	d5614b25-79f7-4e39-b3fc-52b6f1b6f770
188	SJ MEATSHOP BUTCHERY TRAINING	\N	7	21500	2026-02-24 08:58:46.337+00	GENERAL TRAINING	BRITISH COUNCIL	\N	204	15	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	1	\N	\N	\N	\N	\N
189	DAIRY FARMING	\N	17	35000	2026-02-25 02:34:43.73+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	205	5	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	\N	\N	\N
190	SJ MEATSHOP BUTCHERY TRAINING	1	7	21500	2026-02-27 02:07:52.645+00	GENERAL TRAINING	BRITISH COUNCIL	AUSTRALIA	206	15	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	1	\N	\N	\N	\N	\N
191	DAIRY FARMING	\N	17	35000	2026-02-27 04:33:31.647+00	GENERAL TRAINING	BRITISH COUNCIL	NEW ZEALAND	207	5	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	8	\N	\N	\N	\N	\N
\.


--
-- Data for Name: payment_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_mode" ("id", "name", "created_at", "edited_by", "created_by", "edited_at") FROM stdin;
12	CASH	2025-12-18 12:28:29.953499+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
13	GCASH - WIN	2025-12-18 12:28:42.817385+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
15	METROBANK	2025-12-18 12:28:53.834632+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
16	GCASH - MON	2025-12-18 12:29:05.42851+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
17	MAYA POS	2025-12-18 12:29:11.854519+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
18	MAYA QRPH	2025-12-18 12:29:18.210667+00	\N	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	\N
14	GCASH - JONARD	2025-12-18 12:28:48.414767+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	2026-01-09 05:11:44.729+00
11	BPI - JONARD	2025-12-18 12:28:20.292748+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	f28fddf3-ec16-45ea-876e-2a7abb7b8b76	2026-02-09 10:09:56.372+00
19	BPI - MON	2026-02-09 10:10:02.27778+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
20	METROBANK - WIN	2026-02-09 10:10:08.331418+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
21	BDO - MON	2026-02-09 10:10:20.471248+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
22	MARIBANK - MON	2026-02-27 04:34:38.44865+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
\.


--
-- Data for Name: extraservices_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."extraservices_table" ("id", "enrollment_id", "name", "fee", "edited_at", "remarks", "date_of_payment", "mode_of_payment", "edited_by", "created_at", "created_by", "is_voided", "voided_at", "void_reason", "receipt_no") FROM stdin;
69	164	IGP	1200	2026-02-14 01:41:17.693+00	\N	2026-02-14 00:00:00+00	12	\N	2026-02-14 01:41:17.693+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
70	164	MISC	500	2026-02-14 01:41:45.327+00	\N	2026-01-15 00:00:00+00	12	\N	2026-02-14 01:41:45.327+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
36	106	B6 DAIRY IGP FEE	1200	2026-01-12 06:24:24.186+00	INSURANCE, GRADUATION FEE, PPE	2025-12-08 00:00:00+00	13	\N	2026-01-12 06:24:24.186+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
37	110	IGP	1200	2026-01-12 07:07:46.026+00	INSURANCE, GRADUATION FEE, PPE	2026-01-11 00:00:00+00	12	\N	2026-01-12 07:07:46.026+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598082
38	110	MISC	500	2026-01-12 07:09:58.277+00	INCLUDED ON 35,000	2026-01-11 00:00:00+00	12	\N	2026-01-12 07:09:58.277+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
39	100	IGP	1200	2026-01-12 07:18:22.021+00	INSURANCE, GRADUATION FEE, PPE	2026-01-11 00:00:00+00	12	\N	2026-01-12 07:18:22.021+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598096
40	100	MISC	500	2026-01-12 07:21:47.596+00	INCLUDED IN THE 35,000	2026-01-09 00:00:00+00	12	\N	2026-01-12 07:21:47.596+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598087
41	104	IGP	1200	2026-01-12 07:28:02.467+00	\N	2026-01-12 00:00:00+00	11	\N	2026-01-12 07:28:02.467+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
42	104	MISC	500	2026-01-12 07:29:07.843+00	INCLUDED IN THE 35,000	2026-01-09 00:00:00+00	12	\N	2026-01-12 07:29:07.843+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
43	101	B6 DAIRY IGP FEE	1200	2026-01-12 07:31:57.214+00	INSURANCE, GRADUATION FEE, PPE	2025-12-18 00:00:00+00	12	\N	2026-01-12 07:31:57.214+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598067
44	112	B6 DAIRY FARMING PPE	1200	2026-01-12 07:35:04.995+00	INSURANCE, GRADUATION FEE, PPE	2025-12-09 00:00:00+00	12	\N	2026-01-12 07:35:04.995+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
45	111	B6 DAIRY FARMING PPE	1200	2026-01-12 07:46:30.105+00	INSURANCE, GRADUATION FEE, PPE	2025-12-31 00:00:00+00	14	\N	2026-01-12 07:46:30.105+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598081
46	105	B6 DAIRY FARMING PPE	1200	2026-01-12 07:53:33.57+00	INSURANCE, GRADUATION FEE, PPE	2025-12-08 00:00:00+00	12	\N	2026-01-12 07:53:33.57+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
47	109	B6 DAIRY FARMING PPE	1200	2026-01-12 07:58:33.595+00	INSURANCE, GRADUATION FEE, PPE	2025-12-18 00:00:00+00	17	\N	2026-01-12 07:58:33.595+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598068
48	103	B6 DAIRY FARMING PPE	1200	2026-01-12 08:03:52.383+00	INSURANCE, GRADUATION FEE, PPE (NO RECEIPT NUMBER)	2025-12-06 00:00:00+00	12	\N	2026-01-12 08:03:52.383+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
49	102	B6 DAIRY FARMING PPE	1200	2026-01-12 08:08:16.508+00	INSURANCE, GRADUATION FEE, PPE	2025-12-26 00:00:00+00	12	\N	2026-01-12 08:08:16.508+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598080
50	134	IGP	1200	2026-01-26 06:02:26.366+00	IGP	2026-01-26 00:00:00+00	12	\N	2026-01-26 06:02:26.366+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598116
51	137	INSURANCE/PPE	1200	2026-01-27 02:07:52.143+00	\N	2026-01-27 00:00:00+00	11	\N	2026-01-27 02:07:52.143+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	f	\N	\N	1598124
52	139	MISC	500	2026-01-29 03:00:36.197+00	\N	2026-01-29 00:00:00+00	12	\N	2026-01-29 03:00:36.197+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	TRANSFERRED TO ATE MON
53	128	IGP	1200	2026-02-03 02:09:17.654+00	\N	2026-01-20 00:00:00+00	12	\N	2026-02-03 02:09:17.654+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1598115
54	145	IGP	1200	2026-02-04 04:00:23.038+00	\N	2026-02-04 00:00:00+00	13	\N	2026-02-04 04:00:23.038+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1598135
56	127	WEBTOOL ACCESS	1500	2026-02-04 09:30:40.12+00	\N	2026-02-04 00:00:00+00	12	\N	2026-02-04 09:30:40.12+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1597819
57	153	Hybrid Set-up additional	200	2026-02-06 10:00:07.307+00	\N	2026-02-06 00:00:00+00	13	\N	2026-02-06 10:00:07.307+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	\N
58	157	IGP	1200	2026-02-07 08:30:47.064+00	PAID	2026-02-07 00:00:00+00	12	\N	2026-02-07 08:30:47.064+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1598114
60	161	IGP	1200	2026-02-14 00:48:30.11+00	\N	2026-02-14 00:00:00+00	12	\N	2026-02-14 00:48:30.11+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
61	161	MISC	500	2026-02-14 00:49:02.061+00	\N	2026-01-07 00:00:00+00	12	\N	2026-02-14 00:49:02.061+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
62	154	IGP	1200	2026-02-14 01:05:43.189+00	INSURANCE, GRAD FEE, PPE	2026-01-13 00:00:00+00	12	\N	2026-02-14 01:05:43.189+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	-
63	154	MISC	500	2026-02-14 01:06:01.39+00	\N	2026-01-13 00:00:00+00	21	\N	2026-02-14 01:06:01.39+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	-
64	134	MISC	500	2026-02-14 01:32:19.787+00	\N	2026-01-26 00:00:00+00	12	\N	2026-02-14 01:32:19.787+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
65	160	IGP	1200	2026-02-14 01:35:54.784+00	\N	2026-01-30 00:00:00+00	12	\N	2026-02-14 01:35:54.784+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
66	160	MISC	500	2026-02-14 01:36:10.852+00	\N	2026-01-30 00:00:00+00	12	\N	2026-02-14 01:36:10.852+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
67	162	MISC	500	2026-02-14 01:38:15.566+00	\N	2026-01-24 00:00:00+00	12	\N	2026-02-14 01:38:15.566+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
68	162	IGP	1200	2026-02-14 01:38:31.742+00	\N	2026-01-24 00:00:00+00	12	\N	2026-02-14 01:38:31.742+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	\N
71	175	IGP	1200	2026-02-14 01:53:28.11+00	\N	2025-12-31 00:00:00+00	12	\N	2026-02-14 01:53:28.11+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	f	\N	\N	\N
72	175	MISC	500	2026-02-14 01:53:43.773+00	\N	2025-12-31 00:00:00+00	12	\N	2026-02-14 01:53:43.773+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	f	\N	\N	\N
73	177	IGP	1200	2026-02-16 02:34:11.454+00	INSURANCE, GRADUATION FEE, PPE	2026-02-16 00:00:00+00	12	\N	2026-02-16 02:34:11.454+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1060
74	177	MISC	500	2026-02-16 02:34:54.884+00	\N	2026-02-16 00:00:00+00	12	\N	2026-02-16 02:34:54.884+00	de717e45-803b-4ca2-8118-88eecfa63c2c	f	\N	\N	1060 - DAIRY
75	189	IGP	1200	2026-02-26 09:38:56.047+00	\N	2026-02-25 00:00:00+00	12	\N	2026-02-26 09:38:56.047+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1071
76	189	MISC	500	2026-02-26 09:39:18.056+00	\N	2026-02-25 00:00:00+00	12	\N	2026-02-26 09:39:18.056+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1071
77	190	IGM	1200	2026-02-27 02:11:40.094+00	IGM - ESTACA	2026-02-27 00:00:00+00	12	\N	2026-02-27 02:11:40.094+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	-
78	191	B8 DAIRY IGP	1200	2026-02-27 04:35:57.561+00	\N	2026-02-27 00:00:00+00	22	\N	2026-02-27 04:35:57.561+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1073
79	191	B8 DAIRY MISC	500	2026-02-27 04:36:17.616+00	\N	2026-02-27 00:00:00+00	22	\N	2026-02-27 04:36:17.616+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	f	\N	\N	1073
\.


--
-- Data for Name: gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."gallery" ("id", "name", "details", "created_at", "storage_path") FROM stdin;
5	20260059_1770963714243		2026-02-18 07:55:54.34913+00	profile/20260059_1770963714243.jpg
16	1771565076762_8a9f74		2026-02-20 05:24:37.884396+00	profile/1771565076762_8a9f74.jpg
17	GRANTOSA, RONEL D.		2026-02-23 12:13:44.621516+00	profile/1771848823641_7gkvgk.jpg
19	MEDENILLA		2026-02-23 12:14:13.900535+00	profile/20260010_1771848596291.jpg
20	PLAZA		2026-02-23 12:16:47.111409+00	profile/1771849005639_qq2wds.jpg
22	DUCENA		2026-02-23 12:39:28.95205+00	profile/1771850367534_4zlf3x.jpg
24	SOLIS		2026-02-23 12:39:57.47199+00	profile/1771850396528_mw6qhk.jpg
26	JOFEL NISPEROS		2026-02-23 12:40:33.575945+00	profile/1771850432541_9r499o.jpg
28	1771851590077_jj6r98		2026-02-23 12:59:51.060272+00	profile/1771851590077_jj6r98.jpg
29	senados		2026-02-24 04:46:47.311062+00	profile/1771908407097_7ql98b.jpg
31	1771916802646_32a7dn		2026-02-24 07:06:42.318618+00	profile/1771916802646_32a7dn.jpg
32	arreza		2026-02-25 02:15:43.991888+00	profile/1771985741885_zpr4tx.jpg
34	andojoyan		2026-02-25 13:05:26.45996+00	profile/1772024725428_yar7zj.jpg
36	estaca		2026-02-27 00:56:15.216531+00	profile/1772153774041_w17ujz.jpg
38	1772164705300_fijjjb		2026-02-27 03:58:24.720668+00	profile/1772164705300_fijjjb.jpg
\.


--
-- Data for Name: revenue_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."revenue_day" ("id", "revenue_date", "total_revenue", "created_at", "total_expenses", "audited", "audited_at", "audited_by", "branch_id", "expenses_other_sources") FROM stdin;
20e273d8-176d-4881-bd07-301ca683b7dd	2026-02-04	20100	2026-02-04 04:01:17.092381+00	2139	t	2026-02-09 12:16:57.468+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	34
0adda74a-311a-4b2a-a4a0-e06013e9d94a	2026-01-30	11000	2026-01-31 09:19:17.465467+00	0	t	2026-02-07 08:58:38.076+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
d1e105f4-74f0-47dc-8248-f5c9be94d8a9	2026-01-21	0	2026-01-30 09:20:06.803226+00	1227	t	2026-02-07 08:59:43.082+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
a2351f0a-3b14-4050-bc78-39b93e9d0588	2026-01-22	18000	2026-01-22 06:07:14.156+00	1500	t	2026-01-26 12:19:45.068+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
b7e9fba2-56c6-43af-a478-055c079c9f45	2026-01-26	53680	2026-01-26 04:56:04.200551+00	2700	t	2026-01-26 15:24:14.143+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
e15de190-c3e5-4232-9e58-8122dcef6aad	2026-02-05	3500	2026-02-05 05:08:42.325711+00	500	t	2026-02-09 12:17:47.303+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	500
578fab64-df5b-415a-9093-94f136288087	2026-02-06	35910	2026-02-06 03:49:28.235886+00	2530	t	2026-02-09 12:18:06.513+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
3eb1cee9-4dc9-44f0-a662-e3a81eb302c4	2026-02-12	280	2026-02-12 07:53:13.784375+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
1182a605-fc7a-40ba-ae04-9c217536cc02	2026-01-16	2500	2026-01-19 10:16:28.861333+00	0	t	2026-01-23 03:45:26.043+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
364bfe4e-794b-429a-a102-1efa5d2cebaf	2026-01-05	300	2026-01-12 07:39:36.518156+00	3300	t	2026-01-16 22:45:10.352+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
36b1d204-6673-4e57-bad1-14bc76463654	2026-01-18	4000	2026-01-19 10:28:44.803371+00	0	t	2026-01-23 03:45:57.859+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
41a094eb-e48f-4380-b531-5da41d8dd6e7	2026-01-19	42500	2026-01-19 06:15:18.965393+00	3520	t	2026-01-23 03:46:46.924+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
4220632a-da20-4a98-8c3b-b993d1aebb2c	2026-01-24	0	2026-01-23 09:11:02.246634+00	90000	t	2026-01-25 15:45:03.57+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
43171a6b-3f18-49ee-8e84-021bb989f048	2026-01-12	6250	2026-01-12 08:19:51.575038+00	6214	t	2026-01-19 05:52:08.966+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
752d47d8-01b8-4d01-9059-740a26681b76	2026-01-10	0	2026-01-12 08:03:30.665917+00	1000	t	2026-01-19 05:51:48.114+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
780e97d4-954f-45bf-a9f6-b293f3d7f66e	2026-01-15	25700	2026-01-15 11:12:27.348197+00	1200	t	2026-01-23 03:45:10.303+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
93998a99-5cdc-4301-9538-9b03f5097627	2026-01-08	0	2026-01-12 08:02:02.897184+00	1080	t	2026-01-19 05:51:31.596+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
79a268e1-1982-4397-a1c9-564ab668f6c3	2026-02-04	228	2026-02-04 14:07:58.266523+00	39600	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	39600
192c8ea9-6a13-479f-8fb1-0dccc60ca74f	2026-02-07	147600	2026-02-07 03:33:43.435631+00	10453	t	2026-02-09 12:19:03.986+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	1572
a76f82bf-1421-4c41-98e2-847978882a35	2026-01-14	11680	2026-01-14 07:45:37.116152+00	1700	t	2026-01-23 03:44:14.946+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
0b02d9ba-8d58-45f1-9e52-e6c7ee16ec6b	2026-02-03	81	2026-02-03 13:05:32.532264+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
a83948d9-f75d-4a54-b476-c06e9030ebda	2026-01-17	40250	2026-01-17 07:25:56.268205+00	300	t	2026-01-23 03:45:46.548+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	2026-01-31	56600	2026-01-31 07:17:23.736232+00	1000	t	2026-02-04 10:46:27.559+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	1000
a9c75adc-0b77-48ae-9118-5f018328ef9e	2026-01-13	9500	2026-01-14 07:50:45.357336+00	500	t	2026-01-23 03:43:54.177+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
b488a227-a017-4bd4-84dc-8216f374fcb5	2026-01-07	7000	2026-01-12 07:54:05.682067+00	2358	t	2026-01-19 05:51:22.896+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
c5576b4b-c931-474a-95bc-db3858c68ddf	2026-01-11	53100	2026-01-12 08:06:07.38266+00	20842	t	2026-01-19 05:51:57.128+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
ca8f3e8c-8048-47c0-904f-05c5dcad33a6	2026-01-20	22150	2026-01-20 06:41:45.67799+00	7600	t	2026-01-23 14:06:50.702+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	2026-01-09	12500	2026-01-12 07:55:35.922772+00	4760	t	2026-01-19 05:51:40.648+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
21d84ef5-328c-41ce-a538-591ccc1efac4	2026-02-09	9500	2026-02-09 10:07:43.017377+00	700	t	2026-02-09 12:19:11.833+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	500
9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	2026-01-06	10000	2026-01-12 07:42:23.71529+00	4900	t	2026-01-19 05:51:12.364+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
12d67a54-f84b-4ae2-a46b-9688763df74e	2026-02-10	30560	2026-02-10 02:57:29.474293+00	3925	t	2026-02-11 17:08:05.133+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	25
ceaab8e2-f83b-449c-b263-13f976c98c05	2026-02-03	0	2026-02-06 06:08:37.979216+00	0	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
0e7091fe-ce15-405a-ace8-2ec8e3e92e6f	2026-02-10	912	2026-02-10 12:52:31.312357+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
a129da1e-c3aa-4763-bb1a-fa833b426ff1	2026-01-27	15950	2026-01-27 01:54:58.511894+00	1700	t	2026-02-04 10:44:15.791+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	1700
e42894c2-f41f-4a3a-a9f3-62cbe2199d27	2026-01-09	16500	2026-01-26 09:08:00.43387+00	0	t	2026-02-07 08:52:31.368+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
46bb9fe9-a8ee-498b-94df-efe1d9370cce	2026-01-28	10000	2026-01-28 05:57:42.248302+00	1200	t	2026-02-04 10:44:37.674+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
9078b0dd-b4d0-4b21-b454-aee093d5bda4	2026-01-29	6000	2026-01-29 03:00:58.419913+00	500	t	2026-02-04 10:44:52.207+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	500
e4a3c057-5097-42ce-a3e2-a2ddc7861aed	2026-01-11	5500	2026-01-30 06:43:03.804598+00	0	t	2026-02-07 08:52:49.691+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
d3aa5c45-0983-4aff-ab6d-d3f1091b7fc3	2026-01-12	11000	2026-01-26 09:14:26.026752+00	0	t	2026-02-07 08:53:25.645+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
8753fb58-a9d7-4b6c-af55-8ee6aea7c57d	2026-01-23	14160	2026-01-23 07:43:16.8105+00	1890	t	2026-01-26 12:03:16.144+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
62b7fb79-d20f-4443-b770-92a7a7099619	2026-01-15	5500	2026-01-30 08:33:21.151101+00	0	t	2026-02-07 08:53:51.284+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
eb22999f-6321-4fab-a973-f1b3d4eb1323	2026-01-21	0	2026-01-23 08:12:33.125659+00	442	t	2026-01-23 14:07:06.35+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
4fbc77cb-33e6-411b-b30f-598c38a005ab	2026-01-25	73150	2026-01-25 07:23:03.626301+00	25579	t	2026-01-25 07:44:41.789+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
e5336dc7-0948-4e9a-a317-531c3b4235a3	2025-12-10	2000	2026-01-30 08:43:18.204195+00	0	t	2026-02-07 08:55:40.351+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
b1a7a125-9aad-4227-aac2-5ce32e58bace	2026-02-02	17500	2026-02-02 06:52:17.045166+00	5375	t	2026-02-04 10:51:15.283+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
95023a72-4e53-4cd9-9362-bb3b917f6d3c	2026-01-26	9000	2026-01-30 08:38:42.47943+00	0	t	2026-02-07 08:55:50.157+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	\N
622d0024-2c19-448c-93a5-957505798538	2026-01-30	8200	2026-01-31 02:35:45.323579+00	2370	t	2026-02-04 10:45:45.913+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	2370
2482cce7-1033-4076-a8d8-cd598559f04d	2026-02-12	0	2026-02-12 05:52:45.543806+00	161	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	161
1809483a-023f-4fff-9285-f3f0c21b0b18	2026-02-11	429	2026-02-11 13:23:48.675951+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
0d0affa0-871a-472a-81d3-3e68bdf26847	2026-01-29	5500	2026-02-05 10:08:55.274239+00	0	t	2026-02-07 08:58:15.23+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
029cac0c-ae49-4644-8ea3-3dec7b8d2dab	2026-02-11	27160	2026-02-11 05:44:36.932949+00	1473	t	2026-02-11 17:07:14.214+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	573
a6a76e94-9791-4816-848d-3f36941af7bc	2026-02-09	11000	2026-02-13 09:18:47.472613+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
bd083e0b-6ed7-4d06-90df-d001c9ae04b2	2026-02-16	42730	2026-02-16 03:07:42.766494+00	4550	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
e2557758-cc0f-494e-a641-4ff2f855bfd4	2026-02-13	57700	2026-02-13 02:32:35.018775+00	2700	t	2026-02-17 08:52:15.664+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
e5988f8d-a2f9-4267-9747-b727bb7d2acc	2026-02-16	180	2026-02-17 04:39:08.714925+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
49ddbb7d-15e5-4d1b-90e4-e608757dc016	2026-02-17	0	2026-02-17 08:53:42.854063+00	100000	t	2026-02-17 08:54:26.218+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	100000
1551e00e-58a0-4939-8b87-92bc9d793630	2026-02-17	228	2026-02-17 12:58:15.133546+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
2ae56909-b262-4c99-b4af-44aa4373fcdb	2026-02-18	0	2026-02-18 08:06:53.313484+00	3060	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	3060
0d6a3144-8365-4c5a-b436-881ab9f28b33	2026-02-14	41000	2026-02-14 06:34:47.877355+00	0	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
28125881-2856-4e07-a97d-a51598d5f6d0	2026-02-18	22000	2026-02-18 09:01:30.222133+00	5150	t	2026-02-21 08:13:28.704+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	400
9d7b51dc-b905-4727-880e-e18e848c307c	2026-02-27	18200	2026-02-27 02:08:17.341586+00	2900	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
0125f836-6e77-43f2-a0a3-d9da3419794d	2026-02-01	5500	2026-02-19 08:50:36.538366+00	0	f	\N	\N	fefb9e21-347d-4cd5-b1c0-4de05d079d94	0
e4ec3092-2e20-4331-bfaf-f2621490f139	2026-02-25	21700	2026-02-25 03:10:54.370427+00	2106	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
b300ef1b-e970-4d5e-92e5-f7ef55f5c692	2026-02-22	89400	2026-02-23 01:21:17.491557+00	830	t	2026-02-25 06:07:25.223+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
873ec733-0be5-4637-b3af-649a950c57ca	2026-02-26	1000	2026-02-26 03:51:12.973251+00	12	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	2000
d27dee67-8acf-4fad-bd29-267fe6217e40	2026-02-24	16000	2026-02-24 03:15:41.294801+00	4200	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
fd9006c2-896f-4d64-a4f2-974f6998c305	2026-02-20	16400	2026-02-20 03:14:34.261518+00	10000	t	2026-02-21 08:35:10.887+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	10000
291f75ff-68aa-4342-8c30-68889f990dd7	2026-02-19	0	2026-02-19 07:36:00.132374+00	8211	t	2026-02-21 08:35:33.963+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	8211
013f9807-9007-49ba-bdcd-8b31b3ca09a9	2026-02-21	0	2026-02-21 08:35:47.25331+00	0	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	\N
8c88ca20-bd53-4044-9101-b258d0e37ddf	2026-02-23	22700	2026-02-23 03:14:52.316248+00	20361	f	\N	\N	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	0
\.


--
-- Data for Name: revenue_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."revenue_detail" ("id", "revenue_day_id", "transaction", "remarks", "revenue", "created_at", "created_by", "edited_at", "edited_by", "receipt_no", "type", "mode_of_payment", "source_of_funds", "student_id") FROM stdin;
e3eb652f-3497-46cc-ba0d-951493f2bca1	364bfe4e-794b-429a-a102-1efa5d2cebaf	EXPENSES	PARCEL NI WINBERTH	3300	2026-01-12 07:40:36.74985+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	NABAYRAN NANI NI WINBERTH KAY MON	expense	16	\N	\N
a932ef2d-d40d-416f-9eb7-aee27ab03547	b488a227-a017-4bd4-84dc-8216f374fcb5	EXPENSES	LUNCH	200	2026-01-12 07:54:20.788309+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
95ccda17-9e31-4a36-ab63-7cade0ef81d3	b488a227-a017-4bd4-84dc-8216f374fcb5	EXPENSES	OFFICE SUPPLY	958	2026-01-12 07:54:42.142978+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
5ff4ac50-55f5-4d98-ad57-6d657dff6ce7	b488a227-a017-4bd4-84dc-8216f374fcb5	EXPENSES	MARTINEZ DAIRY IGP	1200	2026-01-12 07:55:14.615127+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
19a12647-581c-4a07-b2ac-427f4549f374	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	LUNCH	400	2026-01-12 07:55:50.936653+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
463a4453-7da7-46af-aecd-c8cfc405062d	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	DUPLICATE 3 KEY	150	2026-01-12 07:56:08.073709+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
7832e194-c1c8-4c4c-9d67-577fac57e239	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	AMPOLOQUIO DAIRY IGP	1200	2026-01-12 07:56:54.322613+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
36a2bd45-88c3-463c-b3af-b4796cae2dff	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY ANDOJOYAN	6250	2026-01-12 08:37:31.660904+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
253a1148-9bb8-4e06-9bb0-311a86d0bf2a	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	JIMENEZ DAIRY IGP	1200	2026-01-12 07:57:39.353292+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
25800c87-4adb-4862-8f20-610f2066be11	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	LUNCH	210	2026-01-12 07:57:51.35468+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
1e1bcdc4-cd7b-4307-ac28-1c4e83a28211	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	EXPENSES	AIRCON CLEANING	1600	2026-01-12 08:01:51.090405+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	 	expense	12	\N	\N
48d5489e-e3e7-4516-afc1-5bb1d79c72f3	93998a99-5cdc-4301-9538-9b03f5097627	EXPENSES	SENTRA BOARD CLOCK COUNTRY NAMES	600	2026-01-12 08:02:38.512462+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
66eb4108-bc30-4e92-8cfb-1b30a77a4446	93998a99-5cdc-4301-9538-9b03f5097627	EXPENSES	LUNCH	380	2026-01-12 08:02:51.169476+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
9251245a-a279-426c-9d9c-fc4f5ae1860f	93998a99-5cdc-4301-9538-9b03f5097627	EXPENSES	WATER	100	2026-01-12 08:03:07.569272+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
93a8f6f0-704c-4b5e-8355-092b8b24cb8c	752d47d8-01b8-4d01-9059-740a26681b76	EXPENSES	BREAKFAST/LUNCH	1000	2026-01-12 08:05:58.795161+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
dc246a22-8c46-4b3f-a1b5-e25c6719a8c2	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	LUNCH	460	2026-01-12 08:06:24.302397+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
fef4250c-2313-4927-bc30-3d2e639c876a	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	GASOLINE	1523	2026-01-12 08:14:13.771589+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	0000888578	expense	12	\N	\N
e2771f1d-4387-49fe-875e-1293122105c2	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	SNACK (PANDESAL)	100	2026-01-12 08:15:09.129123+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
c2e330b7-0d1d-4409-9bc4-0fe84546993a	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	OFFICE SUPPLY	479	2026-01-12 08:17:33.41012+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	561101	expense	12	\N	\N
c230dc33-40d1-4aa9-8830-f375298b8065	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	ALDIE PAHALIPAY	2000	2026-01-12 08:18:35.97086+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
d06d6da4-8ab5-4cdf-b511-daddc2a8d838	43171a6b-3f18-49ee-8e84-021bb989f048	EXPENSES	REFUND- MARK GIL OLIVEROS	5000	2026-01-12 08:20:31.482505+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
1b4c7484-28b3-4e7a-87a4-7dd20af7d7cc	43171a6b-3f18-49ee-8e84-021bb989f048	EXPENSES	PARCEL JONARD	979	2026-01-12 08:20:56.567016+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
16c05be1-5bf4-4955-8d35-937ccd5f40b5	364bfe4e-794b-429a-a102-1efa5d2cebaf	CV/SOP	GLEN PALOMATA	300	2026-01-12 08:31:00.837441+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
aa3f0dbe-6b85-45b1-8bbf-1e8a39e5977d	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	ENROLLMENT	DAIRY B6	5000	2026-01-12 08:31:41.483393+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
b5eb3d71-9132-45d4-8599-0bff0c1e96c6	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	ENROLLMENT	APLS GISELLE JOVITA	5000	2026-01-12 08:32:19.927011+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
f7e36fa3-a64b-4d1a-9512-8f34000ce583	b488a227-a017-4bd4-84dc-8216f374fcb5	ENROLLMENT	B7 DAIRY	7000	2026-01-12 08:33:01.777814+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
4265e90f-1d74-4539-8b97-5cdefc48fde1	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	ENROLLMENT	B6 AMPOLOQUIO	6500	2026-01-12 08:33:38.976643+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
037efb96-bba6-4345-a2c8-c16f1a9c1ba3	e3dbd927-af3d-4fc0-a2bd-af8fcdda867a	ENROLLMENT	B6 DAIRY JIMENEZ	6000	2026-01-12 08:34:05.035163+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
729a65ab-9fd1-420e-a6a2-a3fcc239ee87	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY CASTILLO	6250	2026-01-12 08:38:46.770394+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
69a36ed1-84a6-48fd-979e-c324cdcd24d0	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY CANTILA	6250	2026-01-12 08:39:10.661305+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
e9d49a53-a5c3-4026-a3b6-4318dcb98c8b	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY ORILLANO	6250	2026-01-12 08:39:39.086015+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	13	\N	\N
4bf7c966-91d9-43a4-83c2-823a80d2a926	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY LINO	10200	2026-01-12 08:40:00.61699+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
489931d9-46b2-4b57-b405-a859bd9dc434	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY AMPOLOQUIO	8700	2026-01-12 08:40:31.210474+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
5307c68a-f54d-4712-961d-2b165b76d988	43171a6b-3f18-49ee-8e84-021bb989f048	ENROLLMENT	B6 DAIRY MEDENILLA	6250	2026-01-12 08:44:18.818279+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	18	\N	\N
d0973f58-d89c-40c5-8aac-15a2c66e60d6	43171a6b-3f18-49ee-8e84-021bb989f048	EXPENSES	WINBERTH MEDS	235	2026-01-12 09:03:15.562601+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
fc7e8f64-54e4-45de-b9a1-3bb39f7c07b5	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	B6 COOP MEMBERSHIP	12100	2026-01-12 09:05:00.2688+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
bbd4f85c-3e40-4424-989e-d3749b4c301a	c5576b4b-c931-474a-95bc-db3858c68ddf	EXPENSES	B6 TSHIRT	4180	2026-01-12 09:05:20.985544+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
fdc91eb5-5a11-421e-ab90-26cbfbb89b4c	c5576b4b-c931-474a-95bc-db3858c68ddf	ENROLLMENT	B6 DAIRY JIMENEZ	9200	2026-01-12 08:40:59.694132+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-12 11:15:04.588+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	income	13	\N	\N
cc084eab-3191-4739-bb88-6a09888a4c8f	a76f82bf-1421-4c41-98e2-847978882a35	ENROLLMENT	APLS	5000	2026-01-14 07:46:02.0054+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597806	income	13	\N	\N
cb85156f-f7e9-4ca8-9ed1-7f183fd53ded	a76f82bf-1421-4c41-98e2-847978882a35	ENROLLMENT	APLS	1000	2026-01-14 07:46:22.161718+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597806	income	12	\N	\N
319ede12-db2e-43ad-b32d-7bc721cf2238	a76f82bf-1421-4c41-98e2-847978882a35	EXPENSES	MISC - DELOSO	500	2026-01-14 07:48:19.140473+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
200131f0-8098-41e7-a51c-77ec57bf2be7	a9c75adc-0b77-48ae-9118-5f018328ef9e	ENROLLMENT	APLS	6000	2026-01-14 07:51:24.97439+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597801	income	12	\N	\N
9545a3d3-e8ba-448a-b794-c6db9b07f6b8	a9c75adc-0b77-48ae-9118-5f018328ef9e	EXPENSES	MISC- HALILI	500	2026-01-14 07:51:54.484299+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
6ecf5dfd-8717-44de-8805-744639007436	a76f82bf-1421-4c41-98e2-847978882a35	ENROLLMENT	B5-DAIRY MARADIA	5680	2026-01-14 08:16:55.310209+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598097	income	13	\N	\N
c5c13363-d119-4243-a999-004fe41802b1	a76f82bf-1421-4c41-98e2-847978882a35	EXPENSES	B5-IGP MARADIA	1200	2026-01-14 08:17:18.185201+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	13	\N	\N
63d915aa-5d3d-42e2-829c-af195b75883d	a9c75adc-0b77-48ae-9118-5f018328ef9e	CV/SOP	B4- DAIRY NISPEROS	3500	2026-01-14 08:19:59.947566+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597910	income	12	\N	\N
3b67e4a6-9a2d-48d7-b99f-7c2a6e506023	780e97d4-954f-45bf-a9f6-b293f3d7f66e	ENROLLMENT	DAIRY FARMING - RAMON LESTER ARCERGA`	7000	2026-01-15 11:14:13.654477+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1051	income	13	\N	\N
81fd8903-c5f4-4242-99e8-825df3afcaea	780e97d4-954f-45bf-a9f6-b293f3d7f66e	EXPENSES	IGP - ARCEGA	1200	2026-01-15 11:15:23.255514+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	-	expense	13	\N	\N
4c65bbc2-fca5-4299-8bae-ac9c7c83c033	780e97d4-954f-45bf-a9f6-b293f3d7f66e	ENROLLMENT	DAIRY FARMING - ANGELLIE SANTOS PARUMOG	14000	2026-01-15 11:16:17.960034+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	2 PERSON FOR RECEIPT	income	11	\N	\N
af9ec960-6e15-450c-87d3-90d93eadfded	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	EXPENSES	OMBOY DAIRY IGP	1200	2026-01-12 07:53:40.072331+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 11:03:39.378+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
9745a5af-c7a6-447f-86e7-6b8317c9afc6	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	EXPENSES	GANADOS DAIRY IGP	1200	2026-01-12 07:53:20.900338+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 11:03:47.966+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
d3551acf-f64f-41be-8bff-ee5d05059436	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	EXPENSES	LINO DAIRY IGP	1200	2026-01-12 07:53:03.190037+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 11:03:55.522+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
1d2a90f8-5b63-425d-842f-4dbbde9bb438	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	EXPENSES	XMAS PARTY NEEDS	1000	2026-01-12 07:44:01.589232+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 11:04:01.339+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
03627861-2b06-401a-afa2-6417b2ad1e41	780e97d4-954f-45bf-a9f6-b293f3d7f66e	MISC/BOOKING/IGP	IGP - ARCEGA	1200	2026-01-15 11:15:13.270198+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-15 11:17:15.151+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	FOR RECEIPT	income	13	\N	\N
841eab43-35e0-40be-8835-817a9140ffa1	780e97d4-954f-45bf-a9f6-b293f3d7f66e	ENROLLMENT	PTE PARTIAL - RHEAZEAL HIBAYA	3500	2026-01-15 11:17:00.120674+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-15 11:17:36.132+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	FOR RECEIPT	income	13	\N	\N
9f14f944-94b7-4475-b5c0-2c1994eb5881	41a094eb-e48f-4380-b531-5da41d8dd6e7	EXPENSES	PARCEL - JONARD	820	2026-01-19 06:15:39.198567+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	\N	\N
b6d196ef-7d34-4ba1-bd03-2aac9b5577b9	1182a605-fc7a-40ba-ae04-9c217536cc02	2500	PARTIAL	2500	2026-01-19 10:17:01.331783+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597808	income	12	\N	\N
27d69e6a-be90-4692-9fa7-ced08091d1c6	a2351f0a-3b14-4050-bc78-39b93e9d0588	EXPENSES	MISC - ARABEJO	500	2026-01-22 10:48:57.526467+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	\N	\N
f6c30ff5-d55a-44d3-8fc1-a1f998fdb0e4	41a094eb-e48f-4380-b531-5da41d8dd6e7	ENROLLMENT	IELTS RANCHEZ	6000	2026-01-19 10:14:54.544136+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-19 10:23:33.645+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1597807	income	12	\N	\N
6a8f1dcc-8f53-4ae4-8172-0908552fddf6	a2351f0a-3b14-4050-bc78-39b93e9d0588	EXPENSES	MISC - LABADOR	500	2026-01-22 10:49:19.881275+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	\N	\N
cae9bbee-b02b-459f-a730-fdfee206af1a	36b1d204-6673-4e57-bad1-14bc76463654	DAIRY FARMING B5	SHERWIN JE MIEL	4000	2026-01-19 10:29:38.275565+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598109	income	13	\N	\N
f7ca124b-bdaf-497e-a50c-436e135b4b35	41a094eb-e48f-4380-b531-5da41d8dd6e7	ENROLLMENT	MAXIMO LUCAÑAS	6000	2026-01-19 10:16:12.353379+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-20 02:15:27.57+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	1597809	income	12	\N	\N
4deda917-0e53-48d4-9744-6001cb21fd3d	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 - ANDOJOYAN	6250	2026-01-20 04:59:16.775876+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598103	income	12	\N	\N
ff53f041-02f5-4190-9e4e-fa839141b180	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 - ORILLANO	7000	2026-01-20 05:00:08.321436+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598102	income	13	\N	\N
e3918b3d-255c-4ac8-8cc8-1bf1c8c603f2	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 - AMPOLOQUIO	7000	2026-01-20 05:01:21.876473+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598101	income	13	\N	\N
d2c46fbb-ef61-41b2-b22a-f33f604f85dc	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 -CASTILLO	6000	2026-01-20 05:07:44.361952+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598104	income	12	\N	\N
02a34f6a-f609-4b91-975d-30e3e44164d0	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 JIMENEZ	7000	2026-01-20 05:08:21.995521+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598105	income	13	\N	\N
1b92d115-8684-4b7a-b54c-ee3e511c512d	a83948d9-f75d-4a54-b476-c06e9030ebda	RECURRING PAYMENT	DAIRY B5 - LINO	7000	2026-01-20 05:17:57.618631+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598106	income	13	\N	\N
64a7a825-e3ae-452e-bce1-7c311ff1075e	a83948d9-f75d-4a54-b476-c06e9030ebda	EXPENSES	GAS - CLENT (NABUNTURAN)	300	2026-01-20 05:19:00.569351+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	\N	\N
c2a6d2bc-0b26-4498-ad15-dc6f8dd26ed9	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	TAGUM ENROLLMENT	DAIRY B7 - MOTAS	8200	2026-01-20 06:44:05.979658+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-20 06:44:24.848+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	1598115	income	12	\N	\N
5dc1f014-2927-48e2-8128-2010edd79b71	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	RECURRING PAYMENT	DAIRY B5 - PLAZA	5750	2026-01-20 06:42:13.007156+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-20 06:44:34.018+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	1598116	income	12	\N	\N
444474c2-b5c8-48dd-bb69-f5c6ca59f69c	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	TAGUM ENROLLMENT	DAIRY B7 - BARABA	8200	2026-01-20 06:45:59.281458+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598114	income	12	\N	\N
dee62439-c0d7-43d3-8f68-5d94ff2fd576	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	EXPENSES	COOP MEMBERSHIP	200	2026-01-20 07:11:09.744414+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
30724a28-b7f3-4bc5-87ac-dd9f0d394de3	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	EXPENSES	IGP MISC - MOTAS	1700	2026-01-20 07:12:03.976217+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
1ffb0c0d-ff56-4178-8d03-8c205a9b02d0	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	EXPENSES	IGP MISC - BARABA	1700	2026-01-20 07:12:22.335954+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
f2d3e326-2c2c-49ea-ae4d-0bb0dba04117	41a094eb-e48f-4380-b531-5da41d8dd6e7	RECURRING PAYMENT	DAIRY B6 MEDENILLA	6250	2026-01-19 10:20:11.72525+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-20 07:15:42.324+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1598112	income	12	\N	\N
97cd5d47-d94a-45f2-bf42-77b3a3a3be1b	41a094eb-e48f-4380-b531-5da41d8dd6e7	RECURRING PAYMENT	DAIRY B6 CANTILA	6250	2026-01-19 10:26:07.56008+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-20 07:16:09.024+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1598113	income	12	\N	\N
84a48314-3da4-4e87-a913-4c70f5028e1f	41a094eb-e48f-4380-b531-5da41d8dd6e7	RECURRING PAYMENT	DAIRY B6 HINGPIT	8000	2026-01-19 10:25:22.239579+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-20 07:17:35.672+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1598111	income	13	\N	\N
988fb462-9c9f-4a7a-a627-8023ce19631d	41a094eb-e48f-4380-b531-5da41d8dd6e7	RECURRING PAYMENT	DAIRY B6 MACAPAZ	10000	2026-01-19 10:27:11.965135+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-20 07:17:38.911+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1598110	income	13	\N	\N
0def2f0a-7ec7-4964-b3e4-b928f31189e1	41a094eb-e48f-4380-b531-5da41d8dd6e7	EXPENSES	IGP MISC - ARCEGA	1700	2026-01-20 07:39:16.859264+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
13f1ab87-8d93-4d20-96a0-c96ff95fd58c	41a094eb-e48f-4380-b531-5da41d8dd6e7	EXPENSES	APLS MISC - RANCHEZ	500	2026-01-20 07:14:10.811783+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-20 07:39:52.435+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	expense	12	\N	\N
8db78336-5dd9-4ccf-9c1e-d2303db7e1cc	41a094eb-e48f-4380-b531-5da41d8dd6e7	EXPENSES	APLS MISC - LUCAÑAS	500	2026-01-20 07:14:29.150584+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-20 07:40:02.961+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	expense	12	\N	\N
c32d5e39-d78a-498e-ba27-5c64c7c0fd6c	ca8f3e8c-8048-47c0-904f-05c5dcad33a6	EXPENSES	WINBERTH (NORDECO)	4000	2026-01-20 07:53:09.942624+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
8abb6983-deed-4f68-879b-1941724b73bf	a2351f0a-3b14-4050-bc78-39b93e9d0588	TAGUM ENROLLMENT	ARABEJO - IELTS	6000	2026-01-22 06:13:39.635142+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-22 07:05:32.212+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1597810	income	12	\N	\N
b98831be-9e7e-4f4d-8f67-065a3417e078	a2351f0a-3b14-4050-bc78-39b93e9d0588	TAGUM ENROLLMENT	LABADOR - IELTS	6000	2026-01-22 06:24:50.54909+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-22 07:05:38.165+00	de717e45-803b-4ca2-8118-88eecfa63c2c	1597811	income	12	\N	\N
463da591-235f-45af-a139-8ecdd1a9b3b9	a2351f0a-3b14-4050-bc78-39b93e9d0588	TAGUM ENROLLMENT	DAGONDON - IELTS REVIEW	6000	2026-01-22 07:12:05.018286+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597812	income	13	\N	\N
9754d654-81ea-44fd-9cb4-faf0b5841a11	a2351f0a-3b14-4050-bc78-39b93e9d0588	EXPENSES	MISC - DAGONDON	500	2026-01-22 10:49:54.658562+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	13	\N	\N
6048c480-f401-4951-bcf6-c838f0b5a7a3	8753fb58-a9d7-4b6c-af55-8ee6aea7c57d	EXPENSES	ADMIN FEE	500	2026-01-23 07:45:07.645443+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
57f9032c-698b-4302-bbc8-594bb9352527	8753fb58-a9d7-4b6c-af55-8ee6aea7c57d	MISC/BOOKING/IGP	TEST BOOKING - CARBONILLA	14160	2026-01-23 07:43:43.936985+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-23 07:46:20.823+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	income	12	\N	\N
b0fd8d94-b33d-4fb2-af60-08563792d449	8753fb58-a9d7-4b6c-af55-8ee6aea7c57d	EXPENSES	LUNCH	150	2026-01-23 08:04:30.657831+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	\N	\N
6aaffc04-1566-40ac-adcd-19305ac33699	8753fb58-a9d7-4b6c-af55-8ee6aea7c57d	EXPENSES	003 PRINTER INK	1240	2026-01-23 08:05:28.415441+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	00000010418	expense	12	\N	\N
752e40f6-430d-43a0-b872-32ff13d23250	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - AMPOLOQUIO	7000	2026-01-25 07:23:47.291677+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598119	income	13	\N	\N
a4c342b0-bf2f-4eb1-bef0-4dcc067f7105	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - LINO	9000	2026-01-25 07:24:21.81394+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598118	income	13	\N	\N
1c125d09-fd67-4b6f-9e2c-c31d1033a698	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - ORILLANO	7500	2026-01-25 07:24:56.644169+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598117	income	13	\N	\N
be48984d-34b0-4d51-bf6a-26dddcf5b0c9	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - MONTEPIO (FULL PAYMENT)	18200	2026-01-25 07:25:36.974335+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598122	income	12	\N	\N
6fa9e770-7e21-4e0b-9740-4f2bfc171a35	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - ANDOJOYAN (FULL PAYMENT)	12500	2026-01-25 07:26:10.72393+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598121	income	12	\N	\N
1066cf6b-77cd-4386-a52f-459e4a6dd790	4fbc77cb-33e6-411b-b30f-598c38a005ab	RECURRING PAYMENT	DAIRY B6 - CASTILLO (FULL PAYMENT)	12750	2026-01-25 07:26:46.428149+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598120	income	12	\N	\N
5aa5dca7-2d61-46da-b7ff-cb2ab6cc7033	4fbc77cb-33e6-411b-b30f-598c38a005ab	EXPENSES	LUNCH	579	2026-01-25 07:35:22.308198+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	\N	expense	13	\N	\N
60b68e73-0d9e-4215-ada3-5478ebdb9c4c	4fbc77cb-33e6-411b-b30f-598c38a005ab	EXPENSES	PAYMENT FOR DOC RAYAN - B6	25000	2026-01-25 07:28:31.604412+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-02 09:26:58.581+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	TRANSFERRED TO ATE MON	expense	12	\N	\N
b4150a2e-6d82-43c4-a6e0-db82a9d54d7a	4220632a-da20-4a98-8c3b-b993d1aebb2c	EXPENSES	NAFAMCO- PAYMENT (B4)	40000	2026-01-25 15:44:14.491551+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	\N	\N	expense	11	\N	\N
7b0bdc25-ad62-442f-95e4-8d33f4c759eb	4220632a-da20-4a98-8c3b-b993d1aebb2c	EXPENSES	NAFAMCO- PAYMENT (B5)	30000	2026-01-25 15:44:32.955511+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	\N	\N	expense	11	\N	\N
dec5e75a-a67b-47b6-a5ab-35d4c852ec18	4220632a-da20-4a98-8c3b-b993d1aebb2c	EXPENSES	NAFAMCO- PAYMENT (B6)	20000	2026-01-25 15:44:48.275072+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	2026-01-25 15:45:32.495+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	expense	11	\N	\N
4a84bae6-67e7-4cc1-ae9c-cdccb4e394ea	e42894c2-f41f-4a3a-a9f3-62cbe2199d27	DAVAO ENROLLMENT	BALORA- IELTS	5500	2026-01-26 09:09:54.645419+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598567	income	12	\N	\N
46955007-5bbe-4a65-82b9-ada83cb5ba44	e42894c2-f41f-4a3a-a9f3-62cbe2199d27	DAVAO ENROLLMENT	BORDAJE, A. - IELTS	5500	2026-01-26 09:10:23.244061+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598568	income	12	\N	\N
f635b940-ede6-4780-b1c1-9dd8c1884e3d	e42894c2-f41f-4a3a-a9f3-62cbe2199d27	DAVAO ENROLLMENT	BORDAJE, S. - IELTS	5500	2026-01-26 09:10:55.420548+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598569	income	12	\N	\N
25605aaa-2cf5-4f23-a03f-01ecdb79eaf7	b7e9fba2-56c6-43af-a478-055c079c9f45	RECURRING PAYMENT	HIBAYA - PTE INTENSIVE PARTIAL	3000	2026-01-26 09:48:55.553873+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597814	income	12	\N	\N
c16861ee-c2f1-4547-b2fa-96401fed1763	d3aa5c45-0983-4aff-ab6d-d3f1091b7fc3	DAVAO ENROLLMENT	REFUGIO - IELTS	5500	2026-01-26 11:10:06.541613+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	NO. 1598572	income	12	\N	\N
5d0e6818-e641-4cb7-bf9e-9405ff7ca6fe	d3aa5c45-0983-4aff-ab6d-d3f1091b7fc3	DAVAO ENROLLMENT	JIMENEZ - IELTS	5500	2026-01-26 11:10:27.281008+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	NO. 1598571	income	12	\N	\N
715b6d3b-dbbb-400a-aa54-1b36e52392a1	b7e9fba2-56c6-43af-a478-055c079c9f45	EXPENSES	DAIRY B7 - SUMALINOG (IGP)	1200	2026-01-26 06:01:12.79541+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-26 11:52:38.086+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	1598116	expense	12	\N	\N
43840762-f3da-46d5-a2e8-1e94a9f8ee52	b7e9fba2-56c6-43af-a478-055c079c9f45	TAGUM ENROLLMENT	DAIRY B7 - SUMALINOG	8200	2026-01-26 06:00:50.148635+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-26 11:52:51.675+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	1598116	income	12	\N	\N
cc38edaf-c2b0-46c1-a521-a7ca6ea4b390	b7e9fba2-56c6-43af-a478-055c079c9f45	MISC/BOOKING/IGP	CUBELO BOOKING	14160	2026-01-26 12:01:49.081806+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	income	12	\N	\N
0ce348ce-974c-4fbb-9eef-0ddf3cb5e052	eb22999f-6321-4fab-a973-f1b3d4eb1323	EXPENSES	AURORA SNACK (CHARGED TO REVENUE ON 1-22-26	442	2026-01-23 08:12:51.925724+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-01-26 12:04:06.065+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	expense	12	\N	\N
74bc6fd9-580d-4025-9179-bb1750bdd026	b7e9fba2-56c6-43af-a478-055c079c9f45	MISC/BOOKING/IGP	HANGAD BOOKING	14160	2026-01-26 12:09:27.199333+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	TRACE NO. 0047	income	17	\N	\N
b26c0fbd-9941-4387-a2cc-2b39bb0cc5c2	b7e9fba2-56c6-43af-a478-055c079c9f45	MISC/BOOKING/IGP	CATALAN BOOKING	14160	2026-01-26 12:11:42.348448+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	income	12	\N	\N
f678f1ab-bf3e-453f-8599-8e57872a184b	b7e9fba2-56c6-43af-a478-055c079c9f45	EXPENSES	ADMIN FEE - CUBELO	500	2026-01-26 12:12:41.318046+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	TRANSFERRED TO ATE MON	expense	12	\N	\N
401ab026-b1d7-46f5-82f5-20e2c6e6221c	b7e9fba2-56c6-43af-a478-055c079c9f45	EXPENSES	ADMIN FEE - CATALAN	500	2026-01-26 12:13:51.139612+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	TRANSFERRED TO ATE MON	expense	12	\N	\N
c37f5eff-ce12-4011-baa1-a748237db53b	b7e9fba2-56c6-43af-a478-055c079c9f45	EXPENSES	ADMIN FEE - HANGAD	500	2026-01-26 12:17:19.076364+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-26 12:18:34.912+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	TRANSFERRED TO ATE MON	expense	12	\N	\N
4080830c-c505-4337-b1b3-2e3d6868cf24	a129da1e-c3aa-4763-bb1a-fa833b426ff1	TAGUM ENROLLMENT	DAIRY B7 - RANDY ALCUBEREZ	8200	2026-01-27 02:08:21.067348+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598124	income	11	\N	\N
9c6b7708-84ab-4e36-b5ee-cda4a4eb6734	a129da1e-c3aa-4763-bb1a-fa833b426ff1	WEBTOOL ACCESS	WEB TOOL ACCESS - ENTORUM	1500	2026-01-27 09:09:06.076997+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-01-27 09:09:31.753+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	1597815	income	13	\N	\N
981095cf-6d78-4ecb-940a-00c71ed49905	a129da1e-c3aa-4763-bb1a-fa833b426ff1	RECURRING PAYMENT	DAIRY B6 - RON MEDENILLA 3RD PAYMENT	6250	2026-01-27 11:49:27.085448+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598098	income	18	\N	\N
d6f0e521-ec05-4252-b005-297903b3d5e8	9078b0dd-b4d0-4b21-b454-aee093d5bda4	TAGUM ENROLLMENT	APLS - DIATOR	6000	2026-01-29 03:01:30.550055+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597816	income	13	\N	\N
bbdd6ad7-7ad8-4020-b7a4-be97a73a6a7c	e4a3c057-5097-42ce-a3e2-a2ddc7861aed	DAVAO ENROLLMENT	IELTS- TORRECHANTE	5500	2026-01-30 06:44:01.88831+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598570	income	12	\N	\N
9c3988c0-953d-4777-884a-e2b3949251c8	62b7fb79-d20f-4443-b770-92a7a7099619	DAVAO ENROLLMENT	PACAÑA - IELTS	5500	2026-01-30 08:34:49.010118+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598573	income	12	\N	\N
d4bccaef-52c1-4361-9e6c-3f96b1ec79ab	95023a72-4e53-4cd9-9362-bb3b917f6d3c	DAVAO ENROLLMENT	NARAZO - IELTS	5500	2026-01-30 08:39:43.672756+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598579	income	12	\N	\N
ab3fc435-f018-4aef-8a64-6528d3a98f2e	95023a72-4e53-4cd9-9362-bb3b917f6d3c	DAVAO ENROLLMENT	VELASCO - IELTS	3500	2026-01-30 08:42:40.917721+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598580	income	12	\N	\N
5feb40c4-0a23-4358-a2c4-03eb94dd9971	e5336dc7-0948-4e9a-a317-531c3b4235a3	DAVAO ENROLLMENT	VELASCO - IELTS	2000	2026-01-30 08:44:07.280406+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR. NO 1598561	income	12	\N	\N
605e920b-77b8-463a-96d1-c3ca635398eb	d1e105f4-74f0-47dc-8248-f5c9be94d8a9	EXPENSES	ELECTRIC BILL - DEC 2025	1227	2026-01-30 10:17:45.797237+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	62449	expense	12	\N	\N
bb80df84-7e56-4d69-ae16-4fd632ed7e23	622d0024-2c19-448c-93a5-957505798538	TAGUM ENROLLMENT	DAIRY B7 - ARAGON	8200	2026-01-31 02:44:48.114305+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598127	income	13	\N	\N
fa0c8c7f-d69c-4ebd-a837-eddbf1ec5083	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6-AMPOLOQUIO, RANIEL	7000	2026-01-31 07:20:29.340747+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598133	income	14	\N	\N
f9bcbda0-4c4c-4e15-966d-b04d9c7ea144	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- MACARAEG, MICKEY	7000	2026-01-31 07:21:37.07358+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598126	income	12	\N	\N
1a3c311b-c0e5-460e-ba85-4583cdc4b8f5	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- ORILLANO, KHANE	4250	2026-01-31 07:22:31.363344+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598128	income	14	\N	\N
27a77267-a69d-4f24-8323-26d853d1993d	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- LINO, CELMAR	4000	2026-01-31 07:23:38.183293+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598129	income	12	\N	\N
3fdb486f-96f5-4b64-a44d-fd0a83a9e704	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- LINO, CELMAR	1000	2026-01-31 07:24:55.818016+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	SAME WITH 4K	income	14	\N	\N
b575bf59-f2d6-498d-b514-df433e8ad1f1	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- CANTILA, JOOBER	6250	2026-01-31 07:25:58.37253+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598130	income	14	\N	\N
b9282b54-eef8-4c94-8b27-1b6845ffaa7e	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- GANADOS, ZAIRUS	13100	2026-01-31 07:26:58.715648+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598131	income	14	\N	\N
7b362cd6-a35e-41a9-a307-14ed062c7224	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- JIMENEZ, JEFFREY	11000	2026-01-31 07:28:04.173273+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598132	income	14	\N	\N
8c516159-3bc1-49fa-b0fd-c8fdef793bae	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	RECURRING PAYMENT	DAIRY-B6- JIMENEZ, JEFFREY	3000	2026-01-31 07:28:30.435269+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	SAME WITH 11K	income	12	\N	\N
82cebd07-277b-40e7-a57d-228889fbae0c	0adda74a-311a-4b2a-a4a0-e06013e9d94a	DAVAO ENROLLMENT	PACATANG JR. - IELTS	5500	2026-01-31 09:20:50.557212+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598583	income	12	\N	\N
5f479b64-dcaf-40ba-a267-e2195095bc6a	0adda74a-311a-4b2a-a4a0-e06013e9d94a	DAVAO ENROLLMENT	PINGKIAN - IELTS	5500	2026-01-31 09:21:42.822518+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598584	income	12	\N	\N
4181579b-f925-4853-9fd9-ab0a952fe4b0	622d0024-2c19-448c-93a5-957505798538	EXPENSES	IGP DAIRY B7 - ARAGON	1200	2026-01-31 02:45:27.33108+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:45:10.651+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	PREVIOUS_BALANCE	\N
cbbd898a-6cf2-4918-90da-861dbe6897c1	9078b0dd-b4d0-4b21-b454-aee093d5bda4	EXPENSES	DIATOR MISC	500	2026-01-29 06:22:41.05828+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-03 12:52:46.674+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	TRASFERRED TO ATE MON	expense	12	PREVIOUS_BALANCE	\N
7bd206dc-a325-4272-a49b-4b792166bb17	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	PARCEL - JONARD	250	2026-02-02 06:53:15.811233+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-03 12:51:44.11+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	expense	12	TODAYS_REVENUE	\N
9a2359aa-a59e-460d-8014-3b164b97e648	a129da1e-c3aa-4763-bb1a-fa833b426ff1	EXPENSES	ALCUBEREZ - MISC	500	2026-01-27 11:57:58.672287+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:43:16.097+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	-	expense	12	PREVIOUS_BALANCE	\N
470fd2d6-b6cc-488d-964f-804cc3406a77	622d0024-2c19-448c-93a5-957505798538	EXPENSES	PARCEL - WINBERTH	336	2026-02-02 06:50:40.888969+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:45:22.288+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	PREVIOUS_BALANCE	\N
ba83375a-b70e-4d68-830d-d724a07bb504	622d0024-2c19-448c-93a5-957505798538	EXPENSES	PARCEL - JONARD	334	2026-02-02 06:51:00.602467+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:45:29.603+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	PREVIOUS_BALANCE	\N
b8ccf862-0954-4934-8a0e-4abdd9c13e6d	87c2672b-bdd1-4214-b54f-f5f47b3ce5fc	EXPENSES	LUNCH (TESTING CENTRE)	1000	2026-01-31 07:30:13.95462+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:46:07.617+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	PREVIOUS_BALANCE	\N
cffaa6c5-7a70-421d-a423-883bb6a02b4e	46bb9fe9-a8ee-498b-94df-efe1d9370cce	TAGUM ENROLLMENT	ENROLLMENT FEE	10000	2026-02-02 07:29:27.048204+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597791	income	12	\N	\N
a5070524-fd61-4669-b04c-1c4157ce08e3	46bb9fe9-a8ee-498b-94df-efe1d9370cce	EXPENSES	IGM - LAPUHA	1200	2026-02-02 07:30:00.377697+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	\N	\N
f9dee1b2-37aa-4dff-bc27-3cc65bdb38d3	b1a7a125-9aad-4227-aac2-5ce32e58bace	TAGUM ENROLLMENT	ASEO - PARTIAL ENROLLMENT	2500	2026-02-02 08:38:21.745094+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597790	income	12	\N	\N
b5c2da6e-c94b-4879-a1f2-283b1d8af70b	b1a7a125-9aad-4227-aac2-5ce32e58bace	RECURRING PAYMENT	ASEO - 2ND PARTIAL	7000	2026-02-02 08:39:02.023522+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597792	income	12	\N	\N
9452d7a0-ebbc-4f81-8714-66c2fda2149e	b1a7a125-9aad-4227-aac2-5ce32e58bace	TAGUM ENROLLMENT	APLS - MORATA	6000	2026-02-02 09:03:17.633163+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598134	income	17	\N	\N
54ce7632-9ff1-4a28-9805-c41bb5c73681	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	ASEO IGM	1200	2026-02-02 13:24:14.052099+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:50:33.919+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	-	expense	12	TODAYS_REVENUE	\N
6edc1129-4946-42e6-99e5-771f2062539d	4fbc77cb-33e6-411b-b30f-598c38a005ab	TAGUM ENROLLMENT	DAIRY B7 - HALIC	6200	2026-01-25 07:38:31.884647+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-02 09:29:33.773+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	1598123	income	13	\N	\N
f2b0d346-5466-4385-8982-c4ddf7d58e5b	b1a7a125-9aad-4227-aac2-5ce32e58bace	RECURRING PAYMENT	LIGMON B3 - EDPAN	2000	2026-02-02 13:28:14.1588+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597793	income	12	\N	\N
1945ea7c-68c6-4b22-944c-6420a2f16e40	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	IGP B7- ARCEGA (NAA SA GCASH NI WIN JANUARY 15 NAREMIT UG APIL	1200	2026-02-03 01:24:50.186885+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:50:44.925+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
0da1b690-430f-4f19-8b07-d57c291b6535	9708f6a9-6bdb-468a-81a4-c8a46f3c71e9	EXPENSES	CLOCK INSTALLATION	300	2026-01-12 07:43:19.13532+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 11:04:06.694+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
df36fe34-f07e-43b3-b1a8-69ca4e87ef22	79a268e1-1982-4397-a1c9-564ab668f6c3	PRINT / PHOTOCOPY	LISTENING - (4 PAGES) X 19 STUDENTS	228	2026-02-04 14:09:49.454566+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
fbc1e68c-57a3-450d-a9ae-53983d72271d	0b02d9ba-8d58-45f1-9e52-e6c7ee16ec6b	PRINT / PHOTOCOPY	LISTENING- 3 PAGES X 9 STUDENTS	81	2026-02-03 13:08:09.09563+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
1c9bbc6f-f217-4131-a927-77c21e6729da	20e273d8-176d-4881-bd07-301ca683b7dd	TAGUM ENROLLMENT	DAIRY B7 - MONTEROLA	2000	2026-02-04 04:01:52.343905+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598135	income	12	\N	\N
3b5a1a50-e130-4338-a624-828af53655ff	20e273d8-176d-4881-bd07-301ca683b7dd	TAGUM ENROLLMENT	DAIRY B7 - MONTEROLA	6200	2026-02-04 04:02:20.987356+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598135	income	13	\N	\N
aea12028-41cb-4520-a1de-2105c0f78d19	20e273d8-176d-4881-bd07-301ca683b7dd	EXPENSES	IGP - MONTEROLA	1200	2026-02-04 04:02:49.570435+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
a0c88446-5a59-4de7-8bae-304c493af5ff	20e273d8-176d-4881-bd07-301ca683b7dd	RECURRING PAYMENT	SOP - CUBELO (FIRST PAYMENT 1500 DEC. 01, 2025)	2000	2026-02-04 07:06:03.45084+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597913	income	12	\N	\N
32fda6d2-c7fb-4211-af3a-fa4ffc4d365c	20e273d8-176d-4881-bd07-301ca683b7dd	CERTIFICATIONS	ETRF- CUBELO	100	2026-02-04 07:06:21.995576+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
de55959e-3718-4664-8dcb-e402bf974704	20e273d8-176d-4881-bd07-301ca683b7dd	EXPENSES	MISC - MONTEROLA	500	2026-02-04 05:36:48.884156+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 07:19:59.163+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	expense	12	TODAYS_REVENUE	\N
713710e9-d616-452c-8e0f-2fa5a58fd36f	20e273d8-176d-4881-bd07-301ca683b7dd	EXPENSES	PAMASAHE - CLENT (STANDARD INSURANCE)	34	2026-02-04 07:32:44.292915+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	PRINTING	\N
3f517e79-1932-4d93-9ede-c297293c06d4	20e273d8-176d-4881-bd07-301ca683b7dd	TAGUM ENROLLMENT	APLS INTENSIVE - MAGLENTE	8000	2026-02-04 09:32:33.028494+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597817	income	18	\N	\N
0a62eb51-2469-47b6-b04a-2b703f45a195	20e273d8-176d-4881-bd07-301ca683b7dd	RECURRING PAYMENT	WEB TOOL ACCESS - RANCHEZ	1500	2026-02-04 09:33:05.615312+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597819	income	12	\N	\N
a31ea0f3-7f9a-4700-bdbe-bb7c0e1ff147	a129da1e-c3aa-4763-bb1a-fa833b426ff1	EXPENSES	ALCUBEREZ - IGP	1200	2026-01-27 11:58:21.21549+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:43:23.398+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	- 	expense	12	PREVIOUS_BALANCE	\N
11631939-5c3f-43a8-bc61-b9151edc997a	622d0024-2c19-448c-93a5-957505798538	EXPENSES	MISC - ARAGON	500	2026-01-31 02:46:52.06842+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-04 10:45:15.704+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	PREVIOUS_BALANCE	\N
aa98c61b-4489-4e0c-981c-ffd3f5ce3fc0	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	PARCEL - OFFICE	285	2026-02-02 06:53:35.777432+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:49:53.979+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
0f47aeb2-36c5-445a-adf9-30739883d3e4	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	LUNCH	240	2026-02-02 06:53:48.45642+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:50:00.3+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
a3c82067-d56e-496e-98f8-b86cfc773852	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	MISC - MORATA	500	2026-02-02 08:59:12.882129+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:50:08.036+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
a237ac49-d415-4101-803a-96073f1b3979	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	IGP B7 - HALIC	1200	2026-02-02 09:31:03.861812+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:50:18.904+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
dd4bce43-704e-47b0-acd5-32ab936887c3	b1a7a125-9aad-4227-aac2-5ce32e58bace	EXPENSES	ADMIN FEE - PUDE	500	2026-02-02 12:45:26.440013+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-04 10:50:26.209+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	12	TODAYS_REVENUE	\N
91d0d864-16aa-4487-ad20-fd746fe34d46	20e273d8-176d-4881-bd07-301ca683b7dd	CV/SOP	CV - ADLAWAN	300	2026-02-05 05:17:32.033587+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597914	income	12	\N	\N
3ec10f69-bfcf-45ed-b769-c14b0cae962f	e15de190-c3e5-4232-9e58-8122dcef6aad	RECURRING PAYMENT	HIBAYA (PTE INTENSIVE)	3500	2026-02-05 05:53:46.491515+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597820	income	13	\N	\N
d39b0018-15ec-49fc-a9bd-331b11a77e2d	e15de190-c3e5-4232-9e58-8122dcef6aad	EXPENSES	MISC - HIBAYA	500	2026-02-05 06:01:26.309186+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597820	expense	13	PREVIOUS_BALANCE	\N
6bcabaed-e9cc-4bc9-bf97-f46f74688233	0d0affa0-871a-472a-81d3-3e68bdf26847	DAVAO ENROLLMENT	IELTS - ALDEN JOHN POLINA	5500	2026-02-05 10:36:30.423127+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598596	income	12	\N	\N
a87c0033-da92-4687-b49f-ee0cfdf0b746	578fab64-df5b-415a-9093-94f136288087	TAGUM ENROLLMENT	CRESENCIO LINGANAY	6000	2026-02-06 06:09:04.338437+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597821	income	12	\N	\N
650b023b-539b-4e12-bba9-ffc24c4e0c65	578fab64-df5b-415a-9093-94f136288087	TAGUM ENROLLMENT	APLS - BELDIA	6210	2026-02-06 06:42:54.906441+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597823	income	17	\N	\N
4440c3f0-982d-4ea9-8feb-6a46887d810f	578fab64-df5b-415a-9093-94f136288087	LIGMON B3 FINAL PAYMENT	LIGMON B3 - MALOLOY-ON	4500	2026-02-06 06:55:36.95639+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597794	income	12	\N	\N
51e76114-dc3d-4c5f-8bc3-be6f06eec836	578fab64-df5b-415a-9093-94f136288087	TAGUM ENROLLMENT	DAIRY B8- BRETAÑA	7000	2026-02-06 06:59:47.389179+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1598136	income	12	\N	\N
46770387-57ca-4d0c-a772-f835c3af3d69	578fab64-df5b-415a-9093-94f136288087	TAGUM ENROLLMENT	APLS - SULITO	6000	2026-02-06 07:01:21.454351+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597824	income	12	\N	\N
2858628e-d985-4418-852b-0743e39e4f60	578fab64-df5b-415a-9093-94f136288087	EXPENSES	MISC - BELDIA	500	2026-02-06 07:02:22.988147+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
d481cc59-cff8-4b88-8e4c-a9ddc4648819	578fab64-df5b-415a-9093-94f136288087	EXPENSES	MISC - SULITO	500	2026-02-06 07:02:45.896286+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
bc9fff4e-59e7-44fd-8c19-ff35e94a7ffd	578fab64-df5b-415a-9093-94f136288087	EXPENSES	MISC - LINGANAY	500	2026-02-06 07:03:46.270722+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
6f28cf78-ef14-466d-bcf1-cd5281cee09c	578fab64-df5b-415a-9093-94f136288087	EXPENSES	LUNCH - RON'S	350	2026-02-06 07:04:12.512028+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
56ca216e-ad48-4c54-a581-9a366f3bbf92	578fab64-df5b-415a-9093-94f136288087	EXPENSES	PARCEL - WINBERTH	180	2026-02-06 07:04:32.180706+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
2235c57c-8141-4fcd-9524-c4f167ace29b	20e273d8-176d-4881-bd07-301ca683b7dd	EXPENSES	LUNCH	405	2026-02-06 07:16:49.496311+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
82493029-fbd0-488d-bc1b-7f77bf60e114	578fab64-df5b-415a-9093-94f136288087	TAGUM ENROLLMENT	APLS - STELA MARIE LUSTE	6200	2026-02-06 10:26:32.148188+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597825	income	13	\N	\N
364ce2a1-0e14-4db7-83d7-5865acd582fb	578fab64-df5b-415a-9093-94f136288087	EXPENSES	MISC - LUSTE	500	2026-02-06 10:27:15.106582+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	13	TODAYS_REVENUE	\N
74d223e8-bc17-410c-8c20-b87796eaac83	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	TAGUM ENROLLMENT	DAIRY B8 - MARIFEL GEMENEZ	8200	2026-02-07 07:59:29.763529+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1053	income	13	\N	\N
cff6858c-9766-4aed-890e-e0d8a5b941e0	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	TAGUM ENROLLMENT	APLS - - NEAL JEUN GESORO	6000	2026-02-07 08:01:28.463545+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597826	income	12	\N	\N
90ea9d98-9b01-4948-a068-286168347c6b	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	MISC - GESORO	500	2026-02-07 08:02:46.675719+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
b8867396-f5e7-4807-86ba-1107dfae5e64	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	MISC - GEMENEZ	500	2026-02-07 08:05:30.717051+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
cc64c330-a600-4e90-acae-b9d46615f008	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA	3000	2026-02-07 08:32:36.214835+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598137	income	12	\N	\N
788fe454-65c4-4056-bd7d-3a45ef817708	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	BAIRY B7 - ALCUBEREZ 1ST PAYMENT - RANDY ALCUBEREZ	7000	2026-02-07 08:35:10.753147+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598138	income	11	\N	\N
0a0e79da-de24-4254-9fb8-2135be1f0c06	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - MONTEROLA 1ST PAYMENT - JOHN VIRGIL MONTEROLA	7000	2026-02-07 08:38:09.50837+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598139	income	12	\N	\N
d799bc95-5bd7-4b8c-94aa-c40c9656947f	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - ALBARICO 1ST PAYMENT - ANGELICA ALBARICO	10000	2026-02-07 08:43:31.084808+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598140	income	12	\N	\N
59132a63-7ccc-495d-8748-d54485c99f08	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - TINAY 1ST PAYMENT - JASON JHON TINAY	10000	2026-02-07 08:47:44.846289+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598141	income	12	\N	\N
7c3790fc-f2c4-412f-9f25-96f146115cc5	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - ARAGON 1ST PAYMENT - MARIA ANGELA ARAGON	7000	2026-02-07 08:51:09.996597+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598142	income	12	\N	\N
978c419f-1987-4fc8-95e1-49a2423d7cdd	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - MARTINEZ 1ST PAYMENT - MARVIN MARTINEZ	7000	2026-02-07 08:56:15.628304+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598143	income	12	\N	\N
825dcc2d-d93d-43a9-8518-9f3d5aeaf52e	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - ARCEGA 1ST PAYMENT - RAMON LESTER ARCEGA	10000	2026-02-07 08:58:15.129977+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598144	income	12	\N	\N
3ac142f8-875b-45e8-a512-cf7646a2d6c2	79a268e1-1982-4397-a1c9-564ab668f6c3	EXPENSES	SALARY	19600	2026-02-07 09:00:22.656683+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	\N	\N	expense	12	PREVIOUS_BALANCE	\N
00ac4839-7336-47de-9729-e31937ce814e	79a268e1-1982-4397-a1c9-564ab668f6c3	EXPENSES	RENTAL FEE	20000	2026-02-07 09:01:24.133707+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	\N	\N	expense	12	PREVIOUS_BALANCE	\N
952279f4-bbb6-4f66-b199-bf9fba547e19	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - HALIC 1ST PAYMENT - CHRISTIAN HALIC	7000	2026-02-07 09:04:55.332459+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598145	income	12	\N	\N
420e4fa0-f0af-4289-aeab-7b3218241392	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - PARUMOG, JOSEPH(FULL PAYMENT) - JOSEPH PARUMOG	29200	2026-02-07 09:19:43.068455+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-07 09:20:46.122+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	1598147	income	12	\N	\N
e77c706b-edfa-450f-9d81-4b632f0b1879	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - PARUMOG, ANGELLIE (FULL PAYMENT) - ANGELLIE PARUMOG	29200	2026-02-07 09:23:42.606597+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598146	income	12	\N	\N
c573cdcd-40ca-4e77-9301-d2711d4f7135	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	RECURRING PAYMENT	DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS	7000	2026-02-07 09:25:07.962408+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1598148	income	12	\N	\N
ee783cb1-c428-414d-b60f-13c10956ba80	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	IGP B8 - GEMENEZ	1200	2026-02-07 08:00:47.672669+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-07 09:26:46.01+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	expense	13	TODAYS_REVENUE	\N
d661c8f6-650c-4363-abd6-a0592e79a7d8	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	LUNCH, WATER, AND SNACKS - NABUNTURAN	681	2026-02-07 09:29:50.250653+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
700adf20-671f-4308-a2ed-e06e7cedf42f	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	GI HIRAM SA HALIN BOOTS KAY WALAY PANG SUKLI	100	2026-02-07 09:31:17.425791+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
81a96b08-cdfb-4eb6-b244-5c85e1bd11ff	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	ALDIE GRATUITY	2000	2026-02-07 09:32:01.468532+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
a78ab841-4b0d-4741-aa76-e7e773185505	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	IGP - PARUMOG, ANGELLIE	1200	2026-02-07 09:42:12.851889+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
0927f8ac-aed8-447b-8135-c4c64e4e9a94	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	MISC - PARUMOG, ANGELLIE	500	2026-02-07 09:43:08.788092+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
fa0940de-1b6b-47c1-86b4-b140a8f819d3	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	IGP - PARUMOG, JOSEPH	1200	2026-02-07 09:43:27.545529+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
2bccf090-ef38-488d-86a7-195dca177aac	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	MISC - PARUMOG, JOSEPH	500	2026-02-07 09:43:48.797673+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
cd1ce004-2980-482d-b238-999c0517b7a1	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	MISC - SUMALINOG	500	2026-02-07 09:44:05.770099+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
ab9ee76e-16a4-49c2-972d-fca83d637137	192c8ea9-6a13-479f-8fb1-0dccc60ca74f	EXPENSES	GAS - NABUNTURAN	1572	2026-02-07 09:27:11.334018+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-07 09:48:05.778+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	expense	14	GCash J.	\N
0da81235-06f8-47d5-a33c-20301e73034d	21d84ef5-328c-41ce-a538-591ccc1efac4	TAGUM ENROLLMENT	LIRA MAY SIBONGGA	6000	2026-02-09 10:08:34.148851+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597801	income	11	\N	\N
2fc8d34f-26f6-46f0-bfd9-d49ec6150fcf	21d84ef5-328c-41ce-a538-591ccc1efac4	EXPENSES	MISC - SIBONGGA	500	2026-02-09 10:09:11.963165+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597801	expense	11	PREVIOUS_BALANCE	\N
012b4a8e-3837-4572-a38a-004ae8327b82	21d84ef5-328c-41ce-a538-591ccc1efac4	CV/SOP	RON ANTHONY MEDENILLA	3500	2026-02-09 12:09:53.330029+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597916	income	12	\N	\N
421947c3-432b-40d9-b6f3-d92a5a834d4e	21d84ef5-328c-41ce-a538-591ccc1efac4	EXPENSES	CV - RON ANTHONY MEDENILLA	200	2026-02-09 12:11:18.920066+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
d12c03b6-46d2-4d13-8efc-bdac191c2157	12d67a54-f84b-4ae2-a46b-9688763df74e	TAGUM ENROLLMENT	DAIRY B8 - URDANETA, JAY MARC	8200	2026-02-10 02:58:46.774557+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598149	income	11	\N	\N
c84cc27b-5e31-4616-98eb-02bb56cd3b9a	12d67a54-f84b-4ae2-a46b-9688763df74e	TAGUM ENROLLMENT	DAIRY B8 - ROBERT PAMPLONA	8200	2026-02-10 05:04:20.051283+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1598150	income	13	\N	\N
f31803db-71d7-42ed-bae1-aec154cacd87	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	BRUSH PANG LABA	25	2026-02-10 07:32:31.487033+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	PRINTING	\N
39ac6b61-c311-4cd2-9612-03dcb04d5202	0e7091fe-ce15-405a-ace8-2ec8e3e92e6f	PRINT / PHOTOCOPY	READING (48 PESOS X 19 STUDENTS)	912	2026-02-10 12:53:54.104217+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
ff2e9c6c-b83b-40b9-9685-9d440a651e0c	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	IGP - PAMPLONA	1200	2026-02-11 05:48:39.37631+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
1f16084e-2abd-4390-8ec8-fb31554f6089	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	MISC - PAMPLONA	500	2026-02-11 05:49:03.896778+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
17b2876b-c794-4ab5-a6d0-fa14de3bc50a	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	IGP - URDANETA	1200	2026-02-11 05:49:26.092994+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
3878caad-746c-4063-ac0c-f8915acac596	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	MISC - URDANETA	500	2026-02-11 05:50:16.27041+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
0755197d-e2f2-4723-b66d-b5d7340c3552	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	CV/SOP	CV/SOP - CANTILA	3500	2026-02-11 07:36:02.098005+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597917	income	12	\N	\N
ed1ce8a1-9d51-406f-a77d-e3f7e2d431b4	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	CV/SOP	CV/SOP - ANDOJOYAN	3500	2026-02-11 08:06:26.239434+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597916	income	12	\N	\N
c94b8d59-49a1-4594-8229-04cfd4173c21	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	EXPENSES	CV MAKING CANTILA	200	2026-02-11 08:07:35.919173+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
33a31260-3dd3-4a05-bdb5-780354d9b1ec	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	EXPENSES	CV MAKING - ANDOJOYAN	200	2026-02-11 08:08:05.627095+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
5a9a13be-9a4d-4004-9d35-e1b7d1e20d1b	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	EXPENSES	PARCEL - WINBERTH	573	2026-02-11 09:29:48.377864+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	PRINTING	\N
d5037489-8161-465b-9381-024ffa0e6ffd	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	MISC/BOOKING/IGP	BOOKING - RABARA	14160	2026-02-11 11:01:52.683742+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
44b12874-02af-4c26-9a43-dec9727910a1	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	EXPENSES	ADMIN FEE - RABARA	500	2026-02-11 11:02:45.686753+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
6789d5c4-255f-4edc-8597-90ccd1302252	12d67a54-f84b-4ae2-a46b-9688763df74e	MISC/BOOKING/IGP	BOOKING - IBARRA	14160	2026-02-11 11:05:40.254164+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
97b1c3be-3f33-4b5e-8a02-ec992f0d31c5	12d67a54-f84b-4ae2-a46b-9688763df74e	EXPENSES	ADMIN FEE- IBARRA	500	2026-02-11 11:08:04.003689+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
b4a04b5f-3d7f-462b-bdd5-667d0546562c	029cac0c-ae49-4644-8ea3-3dec7b8d2dab	RECURRING PAYMENT	DAIRY B6 - MACARAEG - MICKEY NAHRIE MACARAEG	6000	2026-02-11 12:41:49.858717+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N	1002	income	12	\N	\N
99405696-c38b-49ca-ad0f-b8e3600186f9	1809483a-023f-4fff-9285-f3f0c21b0b18	PRINT / PHOTOCOPY	READING (39 PESOS X 11 STUDENTS)	429	2026-02-11 13:25:36.099559+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
3fac75d3-cd74-4ff0-9a6e-672e359b819d	2482cce7-1033-4076-a8d8-cd598559f04d	EXPENSES	PARCEL - OFFICE	161	2026-02-12 05:53:39.669174+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	PRINTING	\N
bd99c44a-cc61-4236-b669-4df152be1fa0	3eb1cee9-4dc9-44f0-a662-e3a81eb302c4	PRINT / PHOTOCOPY	READING (39 PESOS X 7 STUDENTS)	280	2026-02-12 07:59:36.684531+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
9412fb41-ca71-48a2-b223-2d948a274b0e	e2557758-cc0f-494e-a641-4ff2f855bfd4	TAGUM ENROLLMENT	APLS - REYNALDO ALGABRE	6000	2026-02-13 02:34:03.747629+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597826	income	12	\N	\N
f8db13b4-d4ef-4cfe-84a2-f274052af59e	e2557758-cc0f-494e-a641-4ff2f855bfd4	EXPENSES	MISC - ALGABRE	500	2026-02-13 02:34:32.349785+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
54a91725-b403-4755-a740-b1a942355f57	e2557758-cc0f-494e-a641-4ff2f855bfd4	TAGUM ENROLLMENT	DAIRY B8 - REX JASPHER PONTERAS	8200	2026-02-13 08:43:42.756228+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1054	income	12	\N	\N
5e329311-5a08-4df2-b428-9e920f4f3bc6	e2557758-cc0f-494e-a641-4ff2f855bfd4	EXPENSES	B8 DAIRY IGP MISC - PONTERAS	1700	2026-02-13 08:44:22.218276+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
44fd904c-50a2-49c5-b174-def0c5a5da29	e2557758-cc0f-494e-a641-4ff2f855bfd4	MISC/BOOKING/IGP	MISC	15000	2026-02-13 09:00:40.25675+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
e57c657e-602f-4bca-a62e-4276b0966a43	e2557758-cc0f-494e-a641-4ff2f855bfd4	MISC/BOOKING/IGP	BOOKING ADMIN FEE	5000	2026-02-13 09:01:11.328085+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
607b7c7a-39c0-47be-8ed9-fb86dc227197	e2557758-cc0f-494e-a641-4ff2f855bfd4	PPE B6 & B7	DAIRY PPE	10700	2026-02-13 09:10:34.789571+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
9ae7f414-e542-4e10-b292-01607a6ef034	e2557758-cc0f-494e-a641-4ff2f855bfd4	COMLAB	COMLAB JANUARY TO FEBRUARY 13, 2026	5000	2026-02-13 09:01:51.803249+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-13 09:17:05.024+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	income	12	\N	\N
d8156309-ae01-4307-a032-a6c8ddc8ef3d	e2557758-cc0f-494e-a641-4ff2f855bfd4	INSURANCE	DAIRY B6 & B7	1800	2026-02-13 09:15:57.30111+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-13 09:17:12.913+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	income	12	\N	\N
3c42034a-bed5-4d31-9d6e-73ea0961e727	a6a76e94-9791-4816-848d-3f36941af7bc	DAVAO ENROLLMENT	APLS - ROMEL GILAGA	5500	2026-02-13 09:22:12.189987+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598600	income	12	\N	\N
5eacd02a-8963-4b73-97da-00be7c1048b2	a6a76e94-9791-4816-848d-3f36941af7bc	DAVAO ENROLLMENT	APLS - LORRIE MEL NILLAMA	5500	2026-02-13 09:22:51.600081+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1597951	income	12	\N	\N
243100cb-18e8-454e-921e-727093facca0	e2557758-cc0f-494e-a641-4ff2f855bfd4	TAGUM ENROLLMENT	APLS - EDRIAN MAR	6000	2026-02-13 09:38:13.272471+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597829	income	12	\N	\N
0272c1f3-a09c-48f5-aadf-e2a75a7e6233	e2557758-cc0f-494e-a641-4ff2f855bfd4	EXPENSES	MISC	500	2026-02-13 09:38:57.006949+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
3d327df2-e62e-4a23-b15a-2f6871da3add	0d6a3144-8365-4c5a-b436-881ab9f28b33	RECURRING PAYMENT	DAIRY B7 ALCUBEREZ - 2ND PAYMENT - RANDY ALCUBEREZ	7000	2026-02-14 06:35:39.512281+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1055	income	11	\N	\N
59172025-c927-4614-8efa-d14f41271c1a	0d6a3144-8365-4c5a-b436-881ab9f28b33	RECURRING PAYMENT	DAIRY B7 - MOTAS 2ND PAYMENT - PHILIP CHRISTIAN MOTAS	7000	2026-02-14 06:36:20.860691+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1056	income	14	\N	\N
ea3a9744-75c0-45d6-966e-ed02b0be026c	0d6a3144-8365-4c5a-b436-881ab9f28b33	RECURRING PAYMENT	DAIRY B7 - 2ND PAYMENT BARABA - KYLE NICOLE BARABA	10000	2026-02-14 06:37:19.849474+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1057	income	12	\N	\N
7e629377-c240-4731-a90b-d0ee314de89b	0d6a3144-8365-4c5a-b436-881ab9f28b33	RECURRING PAYMENT	DAIRY B7 - 2ND PAYMENT - MARVIN MARTINEZ	7000	2026-02-14 06:37:57.342101+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1058	income	12	\N	\N
f2831ed9-eceb-440c-8f86-8e8df903126f	0d6a3144-8365-4c5a-b436-881ab9f28b33	RECURRING PAYMENT	DAIRY B7 - 2ND PAYMENT MONTEROLA - JOHN VIRGIL MONTEROLA	10000	2026-02-14 06:38:41.020576+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1059	income	12	\N	\N
30db8619-550d-4d3e-960c-1daf465074bd	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	IGP MISC - GOLDE	1700	2026-02-18 08:58:26.712915+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
b663875e-ca0f-44d4-8668-d7a3a82e4fb1	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	MISC - GARCIA	500	2026-02-18 08:59:12.679427+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
5399bf36-b6d0-4ec6-8172-5b6720796cbc	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	TAGUM ENROLLMENT	APLS ENROLLMENT - LOVELLA GARCIA	6210	2026-02-16 10:19:38.110932+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-16 11:47:16.024+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	30041297	income	17	\N	\N
952fc773-cbd6-4caa-bd9c-6dec51ba5f97	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	MISC/BOOKING/IGP	CRISOSTOMO	14160	2026-02-16 11:50:35.719283+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
125283ac-cc27-4041-9ecf-c58c4d196c21	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	MISC/BOOKING/IGP	JAKE ARCENA	14160	2026-02-16 11:51:53.636491+00	\N	\N	\N	\N	income	12	\N	\N
3477822b-68c7-4979-a5b8-7433570bd14e	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	ADMIN FEE - CRISOSTOMO	500	2026-02-16 11:52:33.089452+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
ace297c7-a84e-42c5-b512-92344862bf4b	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	ADMIN FEE- ARCENA	500	2026-02-16 11:52:48.778497+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
c0461285-d817-45c8-bf73-b4488fa19fdf	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	FOOD	350	2026-02-16 11:53:06.4333+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
d2fd900f-ca22-4907-b3e8-d694a0d710ea	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	EXPENSES	MAMA NI WINBERTH	1000	2026-02-16 11:53:25.174155+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
e89fd36d-0ccb-4a68-92c1-d9aa0f1ca1b8	e5988f8d-a2f9-4267-9747-b727bb7d2acc	PRINT / PHOTOCOPY	READING (15 PESOS X 12 STUDENTS)	180	2026-02-17 04:40:21.125083+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
a2407864-82bc-4571-b063-4658ed395801	49ddbb7d-15e5-4d1b-90e4-e608757dc016	EXPENSES	PAYMENT FOR BATCH 5	100000	2026-02-17 08:54:21.500913+00	f7b083e6-4e93-4aed-8cc9-60c208ba8cbc	\N	\N	\N	expense	11	PREVIOUS_BALANCE	\N
3e0a7d2e-ddf0-4c8b-8a26-b6cadfe143e6	1551e00e-58a0-4939-8b87-92bc9d793630	PRINT / PHOTOCOPY	READING (12 PESOS X 19 STUDENTS)	228	2026-02-17 12:59:49.678908+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	N/A	income	12	\N	\N
a710dbbf-a9a7-47a0-8df6-6bfe9ff130d5	2ae56909-b262-4c99-b4af-44aa4373fcdb	EXPENSES	ELECTRIC BILL - JAN 2026	3060	2026-02-18 08:10:09.617831+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	04681174175	expense	12	PREVIOUS_BALANCE	\N
4249a5f3-da2e-4642-9f00-0f3b7196c99a	bd083e0b-6ed7-4d06-90df-d001c9ae04b2	TAGUM ENROLLMENT	DAIRY B8 - GOLDE - LOUMAR GOLDE	8200	2026-02-16 03:08:20.203577+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-18 08:21:29.512+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	1060	income	12	\N	\N
a14e3e28-d7c8-4a40-b25c-f3fdd0603b37	28125881-2856-4e07-a97d-a51598d5f6d0	TAGUM ENROLLMENT	SJ BUTCHERY - YVONNE DELOS SANTOS	21500	2026-02-18 09:03:47.999534+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597795	income	12	\N	\N
0b18f41c-848e-4dae-96c2-2c3401d180dd	28125881-2856-4e07-a97d-a51598d5f6d0	EXPENSES	B1 SJ IGM - DELOS SANTOS	1200	2026-02-18 09:05:21.467076+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
021b6fd0-3acf-4197-a71e-1143c4844cbd	28125881-2856-4e07-a97d-a51598d5f6d0	EXPENSES	LUNCH - SILINGAN	3050	2026-02-18 09:05:42.019653+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
7c763cc3-6d21-480b-8976-42436c41db29	28125881-2856-4e07-a97d-a51598d5f6d0	EXPENSES	PARCEL - WINBERTH	200	2026-02-18 09:06:13.881337+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
1573ffc9-4736-47b0-b823-b278af72486f	28125881-2856-4e07-a97d-a51598d5f6d0	EXPENSES	PARCEL - WINBERTH	300	2026-02-18 09:06:33.93748+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
1cfb633a-235a-4e9c-bf24-a2677fa70145	28125881-2856-4e07-a97d-a51598d5f6d0	EXPENSES	PARCEL - OFFICE	400	2026-02-18 09:06:57.178221+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	PRINTING	\N
11cb7c41-8da1-412f-b159-a74ae925d6dc	28125881-2856-4e07-a97d-a51598d5f6d0	MISC/BOOKING/IGP	ADMIN FEE - MORANTE	500	2026-02-18 09:07:44.116708+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	income	12	\N	\N
bc629326-f47e-4310-8e65-e9244c53dd81	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	PARCEL - SIR WINBERTH	361	2026-02-19 07:36:50.054653+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	PRINTING	\N
6fa33cfe-27ad-482d-a783-c56e5fc400fe	0125f836-6e77-43f2-a0a3-d9da3419794d	DAVAO ENROLLMENT	EVENING SESSION - ROJEN LLANO	5500	2026-02-19 08:52:42.266793+00	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N	\N	AR NO. 1598592	income	12	\N	\N
ba38d295-4185-450d-927e-b241acb018f3	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	BALOONS (GC BALOONS)	700	2026-02-19 09:47:12.699814+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	Ate Mons Money	\N
2a478c24-bf65-457a-a7b2-af420291568e	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	OPENING FLOWER (DOUBLE H FLOWER SHOP)	5000	2026-02-19 09:48:14.399583+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	002367	expense	12	Ate Mons Money	\N
b96963cf-ce5b-430b-9407-20e21943c4bf	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	SNACK (CHERISH FOODS)	230	2026-02-19 09:49:32.229721+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	Ate Mons Money	\N
7b6fb137-3b15-4b8b-9152-490bf4603ff3	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	OFFICE SUPPLY	1750	2026-02-19 09:50:24.929856+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	825446	expense	12	Ate Mons Money	\N
9e52d1ea-933d-43e5-9267-9e9bb1bb80d8	291f75ff-68aa-4342-8c30-68889f990dd7	EXPENSES	JACKFRUIT (PANDAPAN)	170	2026-02-19 09:53:49.997193+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	Ate Mons Money	\N
35390472-3ffa-49d6-9b13-87cfd2846dee	fd9006c2-896f-4d64-a4f2-974f6998c305	EXPENSES	PIKA PIKA PAYMENT (BLESSING)	3500	2026-02-20 03:16:47.075946+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	ATE MON'S MONEY	\N
0757e8d7-2da7-450f-80eb-1c3ecc417e29	fd9006c2-896f-4d64-a4f2-974f6998c305	EXPENSES	PRIEST STIPEND	4000	2026-02-20 03:17:52.205722+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	ATE MON'S MONEY	\N
4c851f65-5eda-4dc6-ab96-e0a1fb28d00c	fd9006c2-896f-4d64-a4f2-974f6998c305	EXPENSES	VIDEOGRAPHER	2500	2026-02-20 10:05:38.636235+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	ATE MON'S MONEY	\N
559e246f-cee9-4068-b4f0-7ea563291684	8c88ca20-bd53-4044-9101-b258d0e37ddf	EXPENSES	PARCEL - SIR WINBERTH	881	2026-02-23 03:25:29.48902+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-24 05:10:30.002+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	--	expense	12	TODAYS_REVENUE	\N
49545eea-3f91-4804-a72b-7efac6f850c3	fd9006c2-896f-4d64-a4f2-974f6998c305	TAGUM ENROLLMENT	DAIRY B8 - TAN - JASPER TAN	7000	2026-02-20 05:46:31.281805+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-20 10:10:00.326+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	1061	income	11	\N	\N
3f7e92a0-38d6-4860-b003-981700eebacf	fd9006c2-896f-4d64-a4f2-974f6998c305	TAGUM ENROLLMENT	DAIRY B8 - JASPER TAN	1200	2026-02-20 10:11:34.130006+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1061	income	12	\N	\N
c5462bc6-a37b-4575-88a2-a99f485dbd3a	fd9006c2-896f-4d64-a4f2-974f6998c305	TAGUM ENROLLMENT	DAIRY B8 - FERNAN CENITA	8200	2026-02-21 06:22:11.77556+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1063	income	13	\N	\N
88a9374c-01f8-4825-900e-206685a0efce	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 LAST PAYMENT - ANGELICA ALBARICO	6200	2026-02-23 01:22:32.497044+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1062	income	18	\N	\N
6346c664-edd4-4ef6-b5ed-00a8464b2253	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 LAST PAYMENT - JASON JHON TINAY	6200	2026-02-23 01:23:06.940047+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1064	income	18	\N	\N
fb9de568-a4fc-416b-8972-14dae0d58e33	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 LAST PAYMENT - MARIA ANGELA ARAGON	14000	2026-02-23 01:23:34.078237+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1065	income	12	\N	\N
45c4cfa8-cff8-496f-bac4-625afef25fdc	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 LAST PAYMENT - RAMON LESTER ARCEGA	18000	2026-02-23 01:24:09.17721+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1066	income	11	\N	\N
5e672174-48e9-4bfc-8b98-8ef0d3c4a713	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 LAST PAYMENT - JOHN VIRGIL MONTEROLA	11000	2026-02-23 01:24:47.004934+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1067	income	12	\N	\N
ac49401d-05a4-4dc9-abec-dc9f528c0fe9	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 3RD PAYMENT - MARVIN MARTINEZ	7000	2026-02-23 01:25:31.259416+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1068	income	12	\N	\N
53aee053-ecc6-4380-aa8b-47bc2da745f5	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 3RD PAYMENT - CHRISTIAN HALIC	20000	2026-02-23 01:26:04.828941+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1069	income	12	\N	\N
f2f25fb2-d452-43da-8a07-750224b8e9a7	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	RECURRING PAYMENT	DAIRY B7 3RD PAYMENT - RANDY ALCUBEREZ	7000	2026-02-23 01:26:38.183883+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1070	income	11	\N	\N
ebd85ef7-3020-4d02-9a29-9d87e66004fc	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	EXPENSES	CLENT GAS - COLLECTION NABUNTURAN	100	2026-02-23 01:31:04.717539+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
340c0f39-348e-4604-a80f-d4fce90d2cf3	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	EXPENSES	CLENT AND FENDER SNACKS - NABUNTURAN COLLECTION	100	2026-02-23 01:31:23.789594+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
e6dae1a9-fea1-4cfc-bb80-08072e61e61e	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	EXPENSES	CLENT AND FENDER LUNCH - NABUNTURAN COLLECTION	130	2026-02-23 01:31:41.640083+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
09097377-8a9d-4582-b66c-abb82e83837b	d27dee67-8acf-4fad-bd29-267fe6217e40	TAGUM ENROLLMENT	SJ B1 - SENADOS - RODEL SENADOS	10000	2026-02-24 09:07:01.356209+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597796	income	13	\N	\N
957cafb0-ba01-4c0b-bb50-a2835a175748	8c88ca20-bd53-4044-9101-b258d0e37ddf	GRADUATION FEE	BATCH 4,5,6,7	22700	2026-02-23 07:59:06.072927+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	income	12	\N	\N
7e42e26c-8575-4177-b8d8-6282f46334d1	b300ef1b-e970-4d5e-92e5-f7ef55f5c692	EXPENSES	MISC - HALIC	500	2026-02-23 08:09:08.058139+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
374ae839-127f-41df-8c96-cb5a5c9303d0	8c88ca20-bd53-4044-9101-b258d0e37ddf	EXPENSES	GRADUATION FOOD PACKAGE FEE	17500	2026-02-24 03:04:19.847263+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
fe2cd66c-d187-4c89-9903-8e6014c85b2f	8c88ca20-bd53-4044-9101-b258d0e37ddf	EXPENSES	GASOLINE	1600	2026-02-24 03:07:16.400599+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
d0eb576e-f5ae-43ac-91a6-bd774fbb0cc1	8c88ca20-bd53-4044-9101-b258d0e37ddf	EXPENSES	POMADE - SIR WINBERTH	380	2026-02-23 03:15:11.771094+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-24 05:10:21.847+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	-	expense	12	TODAYS_REVENUE	\N
5d7505f0-c051-4ced-a842-6f5b9d45dc52	d27dee67-8acf-4fad-bd29-267fe6217e40	TAGUM ENROLLMENT	APLS REVIEW - SABAS - JOSAH SABAS	6000	2026-02-24 09:08:19.161921+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597831	income	12	\N	\N
f2b1b523-3ac7-456e-9436-8f930f1ccbdb	d27dee67-8acf-4fad-bd29-267fe6217e40	EXPENSES	GAS	1900	2026-02-24 09:10:34.466229+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	-	expense	12	TODAYS_REVENUE	\N
ded99d92-029b-4480-954a-c73ff0dc126b	d27dee67-8acf-4fad-bd29-267fe6217e40	EXPENSES	PARCEL - TISSUE	600	2026-02-24 03:16:08.143486+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-24 09:53:36.792+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	-	expense	12	TODAYS_REVENUE	\N
5c23ba48-16ec-48a8-8a72-0ea3d89b621d	e4ec3092-2e20-4331-bfaf-f2621490f139	TAGUM ENROLLMENT	B8 DAIRY - TREME ZIME ARREZA	8200	2026-02-25 03:11:36.31794+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1071	income	12	\N	\N
5024912e-3ea3-402d-a970-481e5a4ccb13	e4ec3092-2e20-4331-bfaf-f2621490f139	LIGMON B3 FINAL PAYMENT	EDPAN - LIGMON B3	6500	2026-02-25 12:57:57.757922+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	1597797	income	12	\N	\N
d05f27fc-d341-4f23-a694-b865be4a2ece	873ec733-0be5-4637-b3af-649a950c57ca	EXPENSES	\N	1000	2026-02-26 04:42:44.811613+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N	\N	expense	\N	PREVIOUS_BALANCE	\N
3e51b1ef-28ef-492a-95ec-35578101d4d3	873ec733-0be5-4637-b3af-649a950c57ca	EXPENSES	\N	12	2026-02-26 04:51:45.685779+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N	\N	expense	\N	TODAYS_REVENUE	\N
019bd7de-3b8b-48fb-8e0c-83b9489792f5	873ec733-0be5-4637-b3af-649a950c57ca	EXPENSES	\N	1000	2026-02-26 05:00:30.443054+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N	\N	\N	expense	\N	PRINTING	\N
206ed056-ff90-4468-861b-12bd36c5eff0	873ec733-0be5-4637-b3af-649a950c57ca	CANTEEN	\N	1000	2026-02-26 05:25:40.778344+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-02-26 05:26:49.797+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	income	12	\N	\N
9cdab505-9e01-4f5c-98ec-183be48b9245	d27dee67-8acf-4fad-bd29-267fe6217e40	EXPENSES	APLS MISC - SABAS	500	2026-02-26 09:32:32.955543+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
5b564750-137e-4ca4-a074-a0866954c961	d27dee67-8acf-4fad-bd29-267fe6217e40	EXPENSES	SJ IGM - SENADOS	1200	2026-02-26 09:34:31.623747+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
4643d83f-1cfa-4166-91a6-f1195dad560d	e4ec3092-2e20-4331-bfaf-f2621490f139	EXPENSES	SNACKS PM	406	2026-02-25 13:08:11.346073+00	de717e45-803b-4ca2-8118-88eecfa63c2c	2026-02-26 09:43:49.061+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	expense	12	TODAYS_REVENUE	\N
b2a610d0-e358-44cf-8018-6e7fd67a74ad	e4ec3092-2e20-4331-bfaf-f2621490f139	EXPENSES	DAIRY B8 IGP - ARREZA	1200	2026-02-26 09:45:42.248743+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1071	expense	12	TODAYS_REVENUE	\N
5415a491-aa5d-499d-a820-aa4b6a56c49d	e4ec3092-2e20-4331-bfaf-f2621490f139	EXPENSES	B8 DAIRY MISC - ARREZA	500	2026-02-26 09:46:12.544447+00	\N	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
df4eee39-c41b-489c-b9c8-f5a351824c1a	9d7b51dc-b905-4727-880e-e18e848c307c	TAGUM ENROLLMENT	ESTACA - SJ BUTCHERY TRAINING DOWN PAYMENT - FRANK RAFAEL ESTACA	10000	2026-02-27 02:09:46.84197+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1597798	income	12	\N	\N
445dc156-081e-41da-900f-3d7bfbeefd47	9d7b51dc-b905-4727-880e-e18e848c307c	EXPENSES	SJ B1 IGM- ESTACA	1200	2026-02-27 02:47:28.886966+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
1722a46c-61c9-4031-9e53-83b3159cd855	9d7b51dc-b905-4727-880e-e18e848c307c	TAGUM ENROLLMENT	B8 DAIRY - HASHYL AUXILLO	8200	2026-02-27 04:38:00.738211+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1073	income	22	\N	\N
0e2f5239-93da-457b-b999-eff309b5243e	9d7b51dc-b905-4727-880e-e18e848c307c	EXPENSES	B8 DAIRY MISC - AUXILLO	500	2026-02-27 04:39:00.524253+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	\N	expense	12	TODAYS_REVENUE	\N
1d7b3fb9-0dc4-411d-9789-7e5405782968	9d7b51dc-b905-4727-880e-e18e848c307c	EXPENSES	B8 DAIRY IGP - AUXILLO	1200	2026-02-27 04:38:29.260411+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	2026-02-27 04:39:59.578+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	expense	12	TODAYS_REVENUE	\N
ecfbf8eb-8661-4519-acb7-e600c474ea06	e4ec3092-2e20-4331-bfaf-f2621490f139	RECURRING PAYMENT	B7 DAIRY - RANDY ALCUBEREZ	7000	2026-02-27 04:42:40.131345+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N	1074	income	11	\N	\N
\.


--
-- Data for Name: payment_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_table" ("id", "enrollment_id", "payment_no", "amount", "date_of_payment", "mode_of_payment", "remarks", "created_at", "is_voided", "voided_at", "void_reason", "receipt", "edited_by", "edited_at", "created_by", "revenue_detail_id") FROM stdin;
108	104	1	6500	2026-01-09	12	1ST PAYMENT	2026-01-12 07:26:40.282619+00	f	2026-01-12 07:26:40.282619+00	\N	1598086	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
109	104	2	7500	2026-01-11	12	2ND PAYMENT	2026-01-12 07:27:48.222838+00	f	2026-01-12 07:27:48.222838+00	\N	1598095	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
95	112	1	5000	2025-12-09	12		2026-01-12 06:30:03.178925+00	f	2026-01-12 06:30:03.178925+00	\N		3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-12 07:34:13.316+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
192	150	1	7000	2026-02-06	12	Batch 8 DAIRY	2026-02-06 05:40:28.59389+00	f	2026-02-06 05:40:28.59389+00	\N	1598136	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
194	151	1	6000	2026-02-06	12		2026-02-06 05:50:18.225627+00	f	2026-02-06 05:50:18.225627+00	\N	1597824	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
196	149	2	6210	2026-02-06	17		2026-02-06 06:53:27.104026+00	f	2026-02-06 06:53:27.104026+00	\N	1597823	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
198	153	1	6000	2026-02-06	13		2026-02-06 07:47:23.569527+00	f	2026-02-06 07:47:23.569527+00	\N	1597825	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
200	156	1	6000	2026-02-07	12	APLS - - NEAL JEUN GESORO	2026-02-07 08:01:49.126455+00	f	2026-02-07 08:01:49.126455+00	\N	1597826	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	cff6858c-9766-4aed-890e-e0d8a5b941e0
203	145	3	7000	2026-02-07	12	DAIRY B7 - MONTEROLA 1ST PAYMENT - JOHN VIRGIL MONTEROLA	2026-02-07 08:38:10.818024+00	f	2026-02-07 08:38:10.818024+00	\N	1598139	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	0a0e79da-de24-4254-9fb8-2135be1f0c06
212	165	1	6000	2026-02-09	11	LIRA MAY SIBONGGA	2026-02-09 10:08:35.452408+00	f	2026-02-09 10:08:35.452408+00	\N	1597801	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	0da81235-06f8-47d5-a33c-20301e73034d
110	111	1	5000	2025-12-31	14	1ST PAYMENT	2026-01-12 07:47:08.453216+00	f	2026-01-12 07:47:08.453216+00	\N	1598081	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
92	106	1	6250	2026-01-12	12	2ND PAYMENT - PARTIAL	2026-01-12 06:14:23.949089+00	f	2026-01-12 06:14:23.949089+00	\N	1598089	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
93	106	2	5000	2025-12-08	11	1ST PAYMENT	2026-01-12 06:19:15.884877+00	f	2026-01-12 06:19:15.884877+00	\N	1597899	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
96	112	2	6250	2026-01-12	12	2ND PAYMENT	2026-01-12 06:37:52.440797+00	f	2026-01-12 06:37:52.440797+00	\N	1598091	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
98	101	1	5000	2025-12-18	11	1ST PAYMENT	2026-01-12 06:44:25.625252+00	f	2026-01-12 06:44:25.625252+00	\N	1598067	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
99	101	2	6250	2026-01-11	12	2ND PAYMENT	2026-01-12 06:45:39.613755+00	f	2026-01-12 06:45:39.613755+00	\N	1598092	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
101	102	1	5000	2025-12-26	12	1ST PAYMENT	2026-01-12 06:58:37.727871+00	f	2026-01-12 06:58:37.727871+00	\N	1598080	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
102	102	2	6250	2026-01-11	13	2ND PAYMENT	2026-01-12 07:02:19.779484+00	f	2026-01-12 07:02:19.779484+00	\N	1598093	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
104	110	1	5000	2026-01-06	12	1ST PAYMENT	2026-01-12 07:11:51.769779+00	f	2026-01-12 07:11:51.769779+00	\N	1598082	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
105	110	2	9000	2026-01-11	12	2ND PAYMENT	2026-01-12 07:12:34.401019+00	f	2026-01-12 07:12:34.401019+00	\N	1598094	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
106	100	1	6000	2026-01-09	12	1ST PAYMENT	2026-01-12 07:23:18.843978+00	f	2026-01-12 07:23:18.843978+00	\N	1598087	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
107	100	2	8000	2026-01-11	12	2ND PAYMENT	2026-01-12 07:23:51.4173+00	f	2026-01-12 07:23:51.4173+00	\N	1598096	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
114	109	1	5000	2025-12-18	17	1ST PAYMENT	2026-01-12 07:57:35.321066+00	f	2026-01-12 07:57:35.321066+00	\N	1598068	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
115	109	2	6250	2026-01-12	17	2ND PAYMENT	2026-01-12 08:00:52.459797+00	f	2026-01-12 08:00:52.459797+00	\N		\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
123	104	3	7000	2026-01-17	13	3rd Payment	2026-01-17 07:01:20.800282+00	f	2026-01-17 07:01:20.800282+00	\N	1598101	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
124	102	4	7000	2026-01-17	13	3rd Payment	2026-01-17 07:02:20.699257+00	f	2026-01-17 07:02:20.699257+00	\N	1598102	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
125	106	4	6250	2026-01-17	12	3rd Payment	2026-01-17 07:06:52.156086+00	f	2026-01-17 07:06:52.156086+00	\N	1598103	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
126	100	3	7000	2026-01-17	13	3rd Payment	2026-01-17 07:07:50.640835+00	f	2026-01-17 07:07:50.640835+00	\N	1598105	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
127	112	4	6000	2026-01-17	12	3rd Payment	2026-01-17 07:08:41.156172+00	f	2026-01-17 07:08:41.156172+00	\N	1598104	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
128	110	3	7000	2026-01-17	13	3RD PAYMENT	2026-01-17 07:09:25.589594+00	f	2026-01-17 07:09:25.589594+00	\N	1598106	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
130	126	1	6000	2026-01-19	12		2026-01-19 07:16:03.540059+00	f	2026-01-19 07:16:03.540059+00	\N	1597809	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
131	127	1	6000	2026-01-19	12		2026-01-19 08:40:17.799298+00	f	2026-01-19 08:40:17.799298+00	\N	1597807	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
132	99	1	6000	2026-01-06	12		2026-01-19 08:43:46.41024+00	f	2026-01-19 08:43:46.41024+00	\N	1597804	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
133	132	1	6000	2026-01-22	13		2026-01-22 07:04:51.765664+00	f	2026-01-22 07:04:51.765664+00	\N		\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
134	133	1	3500	2026-01-15	13		2026-01-23 11:15:17.598252+00	f	2026-01-23 11:15:17.598252+00	\N	1597813	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
135	133	2	2500	2026-01-16	12		2026-01-23 11:15:46.441539+00	f	2026-01-23 11:15:46.441539+00	\N	1597808	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
136	104	4	7000	2026-01-25	13		2026-01-25 06:55:59.198415+00	f	2026-01-25 06:55:59.198415+00	\N	1598119	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
137	110	4	9000	2026-01-25	13		2026-01-25 06:57:46.937796+00	f	2026-01-25 06:57:46.937796+00	\N	1598118	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
138	102	5	7500	2026-01-25	13		2026-01-25 07:04:55.555278+00	f	2026-01-25 07:04:55.555278+00	\N	1598117	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
116	103	1	11800	2025-12-06	12		2026-01-12 08:06:19.122315+00	f	2026-01-12 08:06:19.122315+00	\N	1597789	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-01-25 07:07:46.601+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
139	103	2	18200	2026-01-25	12		2026-01-25 07:08:55.214773+00	f	2026-01-25 07:08:55.214773+00	\N	1598122	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
140	106	5	12500	2026-01-25	12		2026-01-25 07:11:06.932342+00	f	2026-01-25 07:11:06.932342+00	\N	1598121	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
141	112	5	12750	2026-01-25	12		2026-01-25 07:12:05.778803+00	f	2026-01-25 07:12:05.778803+00	\N	1598120	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
112	105	1	5000	2025-12-08	12		2026-01-12 07:53:03.620831+00	f	2026-01-12 07:53:03.620831+00	\N	1598051	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 03:03:52.998+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
143	111	2	11900	2026-01-15	13	No Receipt No.	2026-01-25 07:18:46.25866+00	f	2026-01-25 07:18:46.25866+00	\N		\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
144	109	3	6250	2026-01-19	12		2026-01-25 07:22:32.117517+00	f	2026-01-25 07:22:32.117517+00	\N	1598112	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
145	134	1	7000	2026-01-26	12	1ST PAYMENT	2026-01-26 06:02:06.977463+00	f	2026-01-26 06:02:06.977463+00	\N	1598116	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
147	133	3	3000	2026-01-26	12	PARTIAL	2026-01-26 09:51:06.572773+00	f	2026-01-26 09:51:06.572773+00	\N	1597814	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
148	137	1	7000	2026-01-27	11		2026-01-27 02:07:28.082943+00	f	2026-01-27 02:07:28.082943+00	\N	1598124	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
151	109	4	6250	2026-01-27	18	3RD PAYMENT	2026-01-27 09:58:16.505195+00	f	2026-01-27 09:58:16.505195+00	\N	1598098	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
152	138	1	10000	2026-01-28	12		2026-01-28 09:14:27.125574+00	f	2026-01-28 09:14:27.125574+00	\N	1597791	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
153	139	1	6000	2026-01-29	13	PAID	2026-01-29 03:00:46.755435+00	f	2026-01-29 03:00:46.755435+00	\N	1597816	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
154	140	1	2000	2025-12-10	12		2026-01-30 08:51:13.003528+00	f	2026-01-30 08:51:13.003528+00	\N	AR NO. 1598561	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
155	140	2	3500	2026-01-26	12		2026-01-30 08:52:10.028843+00	f	2026-01-30 08:52:10.028843+00	\N	AR NO. 1598580	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
156	141	1	5500	2026-01-12	12		2026-01-30 09:04:34.715803+00	f	2026-01-30 09:04:34.715803+00	\N	AR NO. 1598572	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
160	101	3	6250	2026-01-26	13		2026-01-30 09:46:46.149471+00	f	2026-01-30 09:46:46.149471+00	\N	1598125	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
161	142	1	5500	2026-01-30	12		2026-01-30 10:05:38.33479+00	f	2026-01-30 10:05:38.33479+00	\N	AR NO. 1598583	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
162	101	4	6250	2026-01-19	12		2026-01-31 03:20:15.544137+00	f	2026-01-31 03:20:15.544137+00	\N	1598113	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
163	109	5	6250	2026-02-02	12	Full Payment	2026-02-02 05:29:27.547148+00	f	2026-02-02 05:29:27.547148+00	\N	1598099	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
142	105	2	6250	2026-01-16	11		2026-01-25 07:16:31.612164+00	f	2026-01-25 07:16:31.612164+00	\N	1598107	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-03 03:03:43.348+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
165	101	6	6250	2026-01-31	14	Fully Paid	2026-02-02 06:31:29.733182+00	f	2026-02-02 06:31:29.733182+00	\N	1598130	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
164	101	5	6250	2026-01-19	12		2026-02-02 05:46:07.015019+00	t	2026-02-02 06:35:18.817+00	Wrong date encoded (Date, Receipt No.)	1598112	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-02 06:35:18.817+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
166	111	3	13100	2026-01-31	14	Fully Paid	2026-02-02 06:37:11.336176+00	f	2026-02-02 06:37:11.336176+00	\N	1598131	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
167	100	4	11000	2026-01-31	14		2026-02-02 06:39:32.624563+00	f	2026-02-02 06:39:32.624563+00	\N	1598132	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
168	100	5	3000	2026-01-31	12	Fully Paid	2026-02-02 06:39:58.729125+00	f	2026-02-02 06:39:58.729125+00	\N	1598132	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
169	143	1	2500	2026-01-09	12	PARTIAL - 2500	2026-02-02 08:21:13.753017+00	f	2026-02-02 08:21:13.753017+00	\N	1597790	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
170	143	2	7000	2026-01-28	12	2ND PARTIAL - 7000	2026-02-02 08:36:29.742806+00	f	2026-02-02 08:36:29.742806+00	\N	1597792	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
171	144	1	6000	2026-02-02	17		2026-02-02 08:55:35.835516+00	f	2026-02-02 08:55:35.835516+00	\N	1598134	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
172	104	5	7000	2026-01-31	14		2026-02-03 02:06:25.01293+00	f	2026-02-03 02:06:25.01293+00	\N	1598133	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
173	128	1	7000	2026-01-20	12	DAIRY B7	2026-02-03 02:11:37.351216+00	f	2026-02-03 02:11:37.351216+00	\N	1598115	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
174	102	6	4250	2026-01-31	14	Fully Paid	2026-02-03 02:13:20.483652+00	f	2026-02-03 02:13:20.483652+00	\N	1598128	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
175	105	3	7000	2026-01-31	12		2026-02-03 02:17:29.976804+00	f	2026-02-03 02:17:29.976804+00	\N	1598126	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
176	130	1	6000	2026-01-22	12		2026-02-03 02:20:56.442775+00	f	2026-02-03 02:20:56.442775+00	\N	1597810	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
177	131	1	6000	2026-01-22	12		2026-02-03 02:30:08.383714+00	f	2026-02-03 02:30:08.383714+00	\N	1597811	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
178	110	5	1000	2026-01-31	14		2026-02-03 02:37:10.462918+00	f	2026-02-03 02:37:10.462918+00	\N	1598129	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
179	110	6	4000	2026-01-31	12		2026-02-03 02:37:57.852095+00	f	2026-02-03 02:37:57.852095+00	\N	1598129	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
180	145	1	2000	2026-02-04	12		2026-02-04 03:59:10.504126+00	f	2026-02-04 03:59:10.504126+00	\N	1598135	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
181	145	2	5000	2026-02-04	13		2026-02-04 04:00:31.473694+00	f	2026-02-04 04:00:31.473694+00	\N	1598135	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
182	146	1	8000	2026-02-04	18	PAID	2026-02-04 08:37:28.080509+00	f	2026-02-04 08:37:28.080509+00	\N	1597817	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
186	147	1	5500	2026-01-26	12		2026-02-05 10:20:35.123947+00	f	2026-02-05 10:20:35.123947+00	\N	AR NO. 1598579	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
187	148	1	5500	2026-01-29	12		2026-02-05 10:35:56.590425+00	f	2026-02-05 10:35:56.590425+00	\N	AR NO. 1598596	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
195	152	1	6000	2026-02-06	12	CRESENCIO LINGANAY	2026-02-06 06:09:05.616551+00	f	2026-02-06 06:09:05.616551+00	\N	1597821	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
193	149	1	6000	2026-02-06	17		2026-02-06 05:47:25.539802+00	t	2026-02-06 06:24:11.571+00	DID NOT INCLUDE 210 POS PROCESSING FEE. RE-ENCODE.	1597823	7f319a76-25a0-48b8-ba5e-389684f5daf2	2026-02-06 06:24:11.571+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
199	155	1	8200	2026-02-07	13	DAIRY B8 - MARIFEL GEMENEZ	2026-02-07 07:59:31.086503+00	f	2026-02-07 07:59:31.086503+00	\N	1053	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	74d223e8-bc17-410c-8c20-b87796eaac83
201	157	1	3000	2026-02-07	12	DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA	2026-02-07 08:32:37.843542+00	f	2026-02-07 08:32:37.843542+00	\N	1598137	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	cc64c330-a600-4e90-acae-b9d46615f008
202	137	2	7000	2026-02-07	11	BAIRY B7 - ALCUBEREZ 1ST PAYMENT - RANDY ALCUBEREZ	2026-02-07 08:35:11.890695+00	f	2026-02-07 08:35:11.890695+00	\N	1598138	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	788fe454-65c4-4056-bd7d-3a45ef817708
204	158	1	10000	2026-02-07	12	DAIRY B7 - ALBARICO 1ST PAYMENT - ANGELICA ALBARICO	2026-02-07 08:43:32.370515+00	f	2026-02-07 08:43:32.370515+00	\N	1598140	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	d799bc95-5bd7-4b8c-94aa-c40c9656947f
205	159	1	10000	2026-02-07	12	DAIRY B7 - TINAY 1ST PAYMENT - JASON JHON TINAY	2026-02-07 08:47:46.382129+00	f	2026-02-07 08:47:46.382129+00	\N	1598141	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	59132a63-7ccc-495d-8748-d54485c99f08
206	160	1	7000	2026-02-07	12	DAIRY B7 - ARAGON 1ST PAYMENT - MARIA ANGELA ARAGON	2026-02-07 08:51:11.14219+00	f	2026-02-07 08:51:11.14219+00	\N	1598142	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7c3790fc-f2c4-412f-9f25-96f146115cc5
207	161	1	7000	2026-02-07	12	DAIRY B7 - MARTINEZ 1ST PAYMENT - MARVIN MARTINEZ	2026-02-07 08:56:16.840249+00	f	2026-02-07 08:56:16.840249+00	\N	1598143	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	978c419f-1987-4fc8-95e1-49a2423d7cdd
208	154	1	10000	2026-02-07	12	DAIRY B7 - ARCEGA 1ST PAYMENT - RAMON LESTER ARCEGA	2026-02-07 08:58:16.26153+00	f	2026-02-07 08:58:16.26153+00	\N	1598144	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	825dcc2d-d93d-43a9-8518-9f3d5aeaf52e
209	162	1	7000	2026-02-07	12	DAIRY B7 - HALIC 1ST PAYMENT - CHRISTIAN HALIC	2026-02-07 09:04:57.072608+00	f	2026-02-07 09:04:57.072608+00	\N	1598145	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	952279f4-bbb6-4f66-b199-bf9fba547e19
211	128	2	7000	2026-02-07	12	DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS	2026-02-07 09:25:09.215581+00	f	2026-02-07 09:25:09.215581+00	\N	1598148	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	c573cdcd-40ca-4e77-9301-d2711d4f7135
213	166	1	5000	2025-12-17	11		2026-02-09 11:33:09.842485+00	f	2026-02-09 11:33:09.842485+00	\N	1598063	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
215	109	6	3500	2026-02-09	12	RON ANTHONY MEDENILLA	2026-02-09 12:09:55.005663+00	f	2026-02-09 12:09:55.005663+00	\N	1597916	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
216	105	4	6000	2026-02-11	12	NEW RECEIPT	2026-02-11 05:44:23.70609+00	f	2026-02-11 05:44:23.70609+00	\N	1002	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
220	167	1	8200	2026-02-10	11		2026-02-11 12:38:36.203279+00	f	2026-02-11 12:38:36.203279+00	\N	1598149	\N	\N	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N
221	168	1	6000	2026-02-13	12		2026-02-13 02:23:33.840799+00	f	2026-02-13 02:23:33.840799+00	\N		\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
222	169	1	8200	2026-02-13	12	DOWN PAYMENT	2026-02-13 06:19:31.766813+00	f	2026-02-13 06:19:31.766813+00	\N	1054	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
223	170	1	5500	2026-02-09	12		2026-02-13 09:08:09.670301+00	f	2026-02-13 09:08:09.670301+00	\N	AR NO. 1597951	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
224	171	1	5500	2026-02-09	12		2026-02-13 09:17:28.409425+00	f	2026-02-13 09:17:28.409425+00	\N	AR NO. 1598600	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
225	172	1	6000	2026-02-13	12		2026-02-13 09:37:13.625093+00	f	2026-02-13 09:37:13.625093+00	\N	1597829	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
226	173	1	5500	2026-02-02	12		2026-02-13 09:38:03.8986+00	f	2026-02-13 09:38:03.8986+00	\N	AR NO. 1598585	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
227	174	1	5500	2026-01-30	12		2026-02-13 09:50:24.341574+00	f	2026-02-13 09:50:24.341574+00	\N	AR NO. 1598584	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
231	166	2	25000	2026-02-05	18	FULL PAYMENT - DAIRY BATCH 7	2026-02-14 00:56:34.600297+00	f	2026-02-14 00:56:34.600297+00	\N	1598135	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
229	161	2	7000	2026-01-07	12	DOWNPAYMENT	2026-02-14 00:52:07.831689+00	f	2026-02-14 00:52:07.831689+00	\N	1598085	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-02-14 00:57:26.572+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
232	166	3	5000	2026-02-14	12	EARLY REGISTRATION DISCOUNT	2026-02-14 00:57:47.602233+00	f	2026-02-14 00:57:47.602233+00	\N	-	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
233	158	2	13800	2025-12-17	11	DOWN PAYMENT	2026-02-14 01:00:43.51008+00	f	2026-02-14 01:00:43.51008+00	\N	1598064	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
234	159	2	13800	2025-12-13	11	DOWN PAYMENT	2026-02-14 01:02:16.360111+00	f	2026-02-14 01:02:16.360111+00	\N	1598065	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
235	154	2	7000	2026-01-13	13	DOWN PAYMENT	2026-02-14 01:06:55.732973+00	f	2026-02-14 01:06:55.732973+00	\N	-	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
236	160	2	7000	2026-01-30	13	DOWN PAYMENT 	2026-02-14 01:35:22.826069+00	f	2026-02-14 01:35:22.826069+00	\N	1598127	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
237	162	2	6200	2026-01-30	13	HALIC - DAIRY B7 DOWNPAYMENT	2026-02-14 01:37:54.248565+00	f	2026-02-14 01:37:54.248565+00	\N	1598123	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
238	164	2	7000	2026-01-15	11	DOWN PAYMENT	2026-02-14 01:40:54.119143+00	f	2026-02-14 01:40:54.119143+00	\N		\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
239	175	1	5000	2025-12-31	18	DOWN PAYMENT	2026-02-14 01:53:09.20081+00	f	2026-02-14 01:53:09.20081+00	\N	1598084	\N	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
245	177	1	7000	2026-02-16	12	DAIRY B8 - GOLDE - LOUMAR GOLDE	2026-02-16 03:08:21.698075+00	f	2026-02-16 03:08:21.698075+00	\N	1060	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	4249a5f3-da2e-4642-9f00-0f3b7196c99a
210	164	1	28000	2026-02-07	12	DAIRY B7 - PARUMOG, JOSEPH(FULL PAYMENT) - JOSEPH PARUMOG	2026-02-07 09:19:44.546709+00	f	2026-02-07 09:19:44.546709+00	\N	1598146	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-02-14 01:42:17.208+00	de717e45-803b-4ca2-8118-88eecfa63c2c	420e4fa0-f0af-4289-aeab-7b3218241392
240	137	3	7000	2026-02-14	11	DAIRY B7 ALCUBEREZ - 2ND PAYMENT - RANDY ALCUBEREZ	2026-02-14 06:35:41.458456+00	f	2026-02-14 06:35:41.458456+00	\N	1055	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	3d327df2-e62e-4a23-b15a-2f6871da3add
241	128	3	7000	2026-02-14	14	DAIRY B7 - MOTAS 2ND PAYMENT - PHILIP CHRISTIAN MOTAS	2026-02-14 06:36:22.479394+00	f	2026-02-14 06:36:22.479394+00	\N	1056	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	59172025-c927-4614-8efa-d14f41271c1a
242	157	3	10000	2026-02-14	12	DAIRY B7 - 2ND PAYMENT BARABA - KYLE NICOLE BARABA	2026-02-14 06:37:21.318344+00	f	2026-02-14 06:37:21.318344+00	\N	1057	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	ea3a9744-75c0-45d6-966e-ed02b0be026c
243	161	3	7000	2026-02-14	12	DAIRY B7 - 2ND PAYMENT - MARVIN MARTINEZ	2026-02-14 06:37:58.83545+00	f	2026-02-14 06:37:58.83545+00	\N	1058	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	7e629377-c240-4731-a90b-d0ee314de89b
244	145	4	10000	2026-02-14	12	DAIRY B7 - 2ND PAYMENT MONTEROLA - JOHN VIRGIL MONTEROLA	2026-02-14 06:38:42.687603+00	f	2026-02-14 06:38:42.687603+00	\N	1059	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	f2831ed9-eceb-440c-8f86-8e8df903126f
246	178	1	6000	2026-02-16	17	GARCIA - APLS ENROLLMENT - LOVELLA GARCIA	2026-02-16 10:19:39.740251+00	f	2026-02-16 10:19:39.740251+00	\N	30041297	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	5399bf36-b6d0-4ec6-8172-5b6720796cbc
247	179	1	21500	2026-02-18	12	SJ BUTCHERY - YVONNE DELOS SANTOS	2026-02-18 09:03:49.173103+00	f	2026-02-18 09:03:49.173103+00	\N	1597795	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	a14e3e28-d7c8-4a40-b25c-f3fdd0603b37
248	182	1	5500	2026-02-02	12		2026-02-19 08:48:26.211907+00	f	2026-02-19 08:48:26.211907+00	\N	AR NO. 1598592	\N	\N	2da96c4c-a4b2-4946-8329-97da1e2f8704	\N
250	183	1	8200	2026-02-20	12	DAIRY B8 - TAN - JASPER TAN	2026-02-20 05:46:33.022392+00	f	2026-02-20 05:46:33.022392+00	\N	1061	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	49545eea-3f91-4804-a72b-7efac6f850c3
251	184	1	8200	2026-02-20	13	DAIRY B8 - FERNAN CENITA	2026-02-21 06:22:13.815723+00	f	2026-02-21 06:22:13.815723+00	\N	1063	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	c5462bc6-a37b-4575-88a2-a99f485dbd3a
252	158	3	6200	2026-02-22	18	DAIRY B7 LAST PAYMENT - ANGELICA ALBARICO	2026-02-23 01:22:34.447356+00	f	2026-02-23 01:22:34.447356+00	\N	1062	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	88a9374c-01f8-4825-900e-206685a0efce
253	159	3	6200	2026-02-22	18	DAIRY B7 LAST PAYMENT - JASON JHON TINAY	2026-02-23 01:23:09.334289+00	f	2026-02-23 01:23:09.334289+00	\N	1064	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	6346c664-edd4-4ef6-b5ed-00a8464b2253
254	160	3	14000	2026-02-22	12	DAIRY B7 LAST PAYMENT - MARIA ANGELA ARAGON	2026-02-23 01:23:35.666191+00	f	2026-02-23 01:23:35.666191+00	\N	1065	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	fb9de568-a4fc-416b-8972-14dae0d58e33
255	154	3	18000	2026-02-22	11	DAIRY B7 LAST PAYMENT - RAMON LESTER ARCEGA	2026-02-23 01:24:10.689413+00	f	2026-02-23 01:24:10.689413+00	\N	1066	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	45c4cfa8-cff8-496f-bac4-625afef25fdc
256	145	5	11000	2026-02-22	12	DAIRY B7 LAST PAYMENT - JOHN VIRGIL MONTEROLA	2026-02-23 01:24:48.648155+00	f	2026-02-23 01:24:48.648155+00	\N	1067	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	5e672174-48e9-4bfc-8b98-8ef0d3c4a713
257	161	4	7000	2026-02-22	12	DAIRY B7 3RD PAYMENT - MARVIN MARTINEZ	2026-02-23 01:25:32.977407+00	f	2026-02-23 01:25:32.977407+00	\N	1068	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	ac49401d-05a4-4dc9-abec-dc9f528c0fe9
258	162	3	20000	2026-02-22	12	DAIRY B7 3RD PAYMENT - CHRISTIAN HALIC	2026-02-23 01:26:06.332156+00	f	2026-02-23 01:26:06.332156+00	\N	1069	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	53aee053-ecc6-4380-aa8b-47bc2da745f5
259	137	4	7000	2026-02-22	11	DAIRY B7 3RD PAYMENT - RANDY ALCUBEREZ	2026-02-23 01:26:39.804819+00	f	2026-02-23 01:26:39.804819+00	\N	1070	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	f2f25fb2-d452-43da-8a07-750224b8e9a7
228	157	2	7000	2026-01-20	12	DOWN PAYMENT	2026-02-14 00:46:16.185982+00	f	2026-02-14 00:46:16.185982+00	\N		3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-02-23 06:23:38.483+00	de717e45-803b-4ca2-8118-88eecfa63c2c	\N
260	188	1	10000	2026-02-24	13	SJ B1 - SENADOS - RODEL SENADOS	2026-02-24 09:07:02.859539+00	f	2026-02-24 09:07:02.859539+00	\N	1597796	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	09097377-8a9d-4582-b66c-abb82e83837b
261	187	1	6000	2026-02-24	12	APLS REVIEW - SABAS - JOSAH SABAS	2026-02-24 09:08:20.59189+00	f	2026-02-24 09:08:20.59189+00	\N	1597831	\N	\N	de717e45-803b-4ca2-8118-88eecfa63c2c	5d7505f0-c051-4ced-a842-6f5b9d45dc52
263	189	1	7000	2026-02-25	12		2026-02-26 09:38:16.108506+00	f	2026-02-26 09:38:16.108506+00	\N	1071	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
264	190	1	10000	2026-02-27	12	ESTACA - SJ BUTCHERY TRAINING DOWN PAYMENT - FRANK RAFAEL ESTACA	2026-02-27 02:09:48.545418+00	f	2026-02-27 02:09:48.545418+00	\N	1597798	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	df4eee39-c41b-489c-b9c8-f5a351824c1a
265	191	1	7000	2026-02-27	22		2026-02-27 04:36:34.871548+00	f	2026-02-27 04:36:34.871548+00	\N	1073	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N
266	137	5	7000	2026-02-25	11	B7 DAIRY - RANDY ALCUBEREZ	2026-02-27 04:42:41.801032+00	f	2026-02-27 04:42:41.801032+00	\N	1074	\N	\N	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	ecfbf8eb-8661-4519-acb7-e600c474ea06
\.


--
-- Data for Name: soa_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."soa_table" ("id", "soa_no", "enrollment_id", "date_issued", "total_payments", "balance", "payments_snapshot", "extras_snapshot", "generated_at", "generated_by", "status") FROM stdin;
233	SOA-2026-0103-1769309897705	103	2026-01-25 00:00:00+00	18000	18200	[{"id": 116, "amount": 11800, "receipt": null, "remarks": "1ST PAYMENT (NO RECEIPT NUMBER)", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-06", "mode_of_payment": "CASH"}, {"id": 117, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-06", "mode_of_payment": "CASH"}]	[{"id": 48, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE (NO RECEIPT NUMBER)", "is_voided": false, "date_of_payment": "2025-12-06T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 02:58:17.705+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
252	SOA-2026-0109-1769562895764	109	2026-01-28 00:00:00+00	24950	6250	[{"id": 114, "amount": 5000, "receipt": "1598068", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "MAYA POS"}, {"id": 115, "amount": 6250, "receipt": null, "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "MAYA POS"}, {"id": 144, "amount": 6250, "receipt": "1598112", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 151, "amount": 6250, "receipt": "1598098", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-27", "mode_of_payment": "MAYA QRPH"}]	[{"id": 47, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "MAYA POS"}]	2026-01-28 01:14:55.764+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
290	SOA-2026-0128-1771660578116	128	2026-02-21 00:00:00+00	22200	14000	[{"id": 173, "amount": 7000, "receipt": "1598115", "remarks": "DAIRY B7", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 211, "amount": 7000, "receipt": "1598148", "remarks": "DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 241, "amount": 7000, "receipt": "1056", "remarks": "DAIRY B7 - MOTAS 2ND PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "GCASH - JONARD"}]	[{"id": 53, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-20T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 07:56:18.116+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
234	SOA-2026-0106-1769309950488	106	2026-01-25 00:00:00+00	23700	12500	[{"id": 92, "amount": 6250, "receipt": "1598089", "remarks": "2ND PAYMENT - PARTIAL", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-12", "mode_of_payment": "CASH"}, {"id": 93, "amount": 5000, "receipt": "1597899", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-08", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 94, "amount": 5000, "receipt": null, "remarks": "EARLY RESERVATION DISCOUNT ", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-08", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 125, "amount": 6250, "receipt": "1598103", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "CASH"}]	[{"id": 36, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-08T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-01-25 02:59:10.488+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
235	SOA-2026-0105-1769309968030	105	2026-01-25 00:00:00+00	11200	25000	[{"id": 112, "amount": 5000, "receipt": null, "remarks": "1ST PAYMENT (WALAY RECEIPT NUMBER SA FORM)", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-08", "mode_of_payment": "CASH"}, {"id": 113, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-08", "mode_of_payment": "CASH"}]	[{"id": 46, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-08T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 02:59:28.03+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
236	SOA-2026-0112-1769309992574	112	2026-01-25 00:00:00+00	23450	12750	[{"id": 95, "amount": 5000, "receipt": null, "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-09", "mode_of_payment": "CASH"}, {"id": 96, "amount": 6250, "receipt": "1598091", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "CASH"}, {"id": 97, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-09", "mode_of_payment": "CASH"}, {"id": 127, "amount": 6000, "receipt": "1598104", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "CASH"}]	[{"id": 44, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 02:59:52.574+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
237	SOA-2026-0109-1769310007793	109	2026-01-25 00:00:00+00	17450	18750	[{"id": 114, "amount": 5000, "receipt": "1598068", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "MAYA POS"}, {"id": 115, "amount": 6250, "receipt": null, "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "MAYA POS"}, {"id": 118, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-18", "mode_of_payment": "CASH"}]	[{"id": 47, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "MAYA POS"}]	2026-01-25 03:00:07.793+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
253	SOA-2026-0100-1769765938128	100	2026-01-30 00:00:00+00	22700	14000	[{"id": 106, "amount": 6000, "receipt": "1598087", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-09", "mode_of_payment": "CASH"}, {"id": 107, "amount": 8000, "receipt": "1598096", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 126, "amount": 7000, "receipt": "1598105", "remarks": "3rd Payment", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 39, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 40, "fee": 500, "name": "MISC", "remarks": "INCLUDED IN THE 35,000", "is_voided": false, "date_of_payment": "2026-01-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:38:58.128+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
291	SOA-2026-0158-1771660650571	158	2026-02-21 00:00:00+00	23800	6200	[{"id": 204, "amount": 10000, "receipt": "1598140", "remarks": "DAIRY B7 - ALBARICO 1ST PAYMENT - ANGELICA ALBARICO", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 233, "amount": 13800, "receipt": "1598064", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-17", "mode_of_payment": "BPI - JONARD"}]	[]	2026-02-21 07:57:30.571+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
238	SOA-2026-0101-1769310057982	101	2026-01-25 00:00:00+00	17450	18750	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 100, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-18", "mode_of_payment": "CASH"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 03:00:57.982+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
239	SOA-2026-0102-1769310071894	102	2026-01-25 00:00:00+00	24450	11750	[{"id": 101, "amount": 5000, "receipt": "1598080", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 102, "amount": 6250, "receipt": "1598093", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "GCASH - WIN"}, {"id": 103, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT ", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 124, "amount": 7000, "receipt": "1598102", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 49, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 03:01:11.894+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
241	SOA-2026-0110-1769310107963	110	2026-01-25 00:00:00+00	22700	14000	[{"id": 104, "amount": 5000, "receipt": "1598082", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}, {"id": 105, "amount": 9000, "receipt": "1598094", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 128, "amount": 7000, "receipt": "1598106", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 37, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 38, "fee": 500, "name": "MISC", "remarks": "INCLUDED ON 35,000", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 03:01:47.963+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
242	SOA-2026-0104-1769310125385	104	2026-01-25 00:00:00+00	22700	14000	[{"id": 108, "amount": 6500, "receipt": "1598086", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-09", "mode_of_payment": "CASH"}, {"id": 109, "amount": 7500, "receipt": "1598095", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 123, "amount": 7000, "receipt": "1598101", "remarks": "3rd Payment", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 41, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-12T00:00:00+00:00", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 42, "fee": 500, "name": "MISC", "remarks": "INCLUDED IN THE 35,000", "is_voided": false, "date_of_payment": "2026-01-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 03:02:05.385+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
254	SOA-2026-0101-1769766007047	101	2026-01-30 00:00:00+00	12450	18750	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:40:07.047+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
292	SOA-2026-0160-1771660664687	160	2026-02-21 00:00:00+00	15700	21000	[{"id": 206, "amount": 7000, "receipt": "1598142", "remarks": "DAIRY B7 - ARAGON 1ST PAYMENT - MARIA ANGELA ARAGON", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 236, "amount": 7000, "receipt": "1598127", "remarks": "DOWN PAYMENT ", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-30", "mode_of_payment": "GCASH - WIN"}]	[{"id": 65, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-30T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 66, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-30T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 07:57:44.687+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
240	SOA-2026-0111-1769310085535	111	2026-01-25 00:00:00+00	11200	25000	[{"id": 110, "amount": 5000, "receipt": "1598081", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-31", "mode_of_payment": "GCASH - JONARD"}, {"id": 111, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-31", "mode_of_payment": "CASH"}]	[{"id": 45, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-31T00:00:00+00:00", "mode_of_payment": "GCASH - JONARD"}]	2026-01-25 03:01:25.535+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
243	SOA-2026-0100-1769310154144	100	2026-01-25 00:00:00+00	22700	14000	[{"id": 106, "amount": 6000, "receipt": "1598087", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-09", "mode_of_payment": "CASH"}, {"id": 107, "amount": 8000, "receipt": "1598096", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 126, "amount": 7000, "receipt": "1598105", "remarks": "3rd Payment", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 39, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 40, "fee": 500, "name": "MISC", "remarks": "INCLUDED IN THE 35,000", "is_voided": false, "date_of_payment": "2026-01-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 03:02:34.144+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
255	SOA-2026-0101-1769766409978	101	2026-01-30 00:00:00+00	18700	12500	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 160, "amount": 6250, "receipt": "1598125", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-26", "mode_of_payment": "GCASH - WIN"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:46:49.978+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
256	SOA-2026-0102-1769766437202	102	2026-01-30 00:00:00+00	26950	4250	[{"id": 101, "amount": 5000, "receipt": "1598080", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 102, "amount": 6250, "receipt": "1598093", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "GCASH - WIN"}, {"id": 124, "amount": 7000, "receipt": "1598102", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 138, "amount": 7500, "receipt": "1598117", "remarks": null, "is_voided": false, "payment_no": 5, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 49, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:47:17.202+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
293	SOA-2026-0161-1771660724749	161	2026-02-21 00:00:00+00	22700	14000	[{"id": 207, "amount": 7000, "receipt": "1598143", "remarks": "DAIRY B7 - MARTINEZ 1ST PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 229, "amount": 7000, "receipt": "1598085", "remarks": "DOWNPAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-07", "mode_of_payment": "CASH"}, {"id": 243, "amount": 7000, "receipt": "1058", "remarks": "DAIRY B7 - 2ND PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[{"id": 60, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-14T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 61, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 07:58:44.749+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
294	SOA-2026-0137-1771660757132	137	2026-02-21 00:00:00+00	22200	14000	[{"id": 148, "amount": 7000, "receipt": "1598124", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-27", "mode_of_payment": "BPI - JONARD"}, {"id": 202, "amount": 7000, "receipt": "1598138", "remarks": "BAIRY B7 - ALCUBEREZ 1ST PAYMENT - RANDY ALCUBEREZ", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "BPI - JONARD"}, {"id": 240, "amount": 7000, "receipt": "1055", "remarks": "DAIRY B7 ALCUBEREZ - 2ND PAYMENT - RANDY ALCUBEREZ", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "BPI - JONARD"}]	[{"id": 51, "fee": 1200, "name": "INSURANCE/PPE", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-27T00:00:00+00:00", "mode_of_payment": "BPI - JONARD"}]	2026-02-21 07:59:17.132+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
244	SOA-2026-0104-1769324170335	104	2026-01-25 00:00:00+00	29700	7000	[{"id": 108, "amount": 6500, "receipt": "1598086", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-09", "mode_of_payment": "CASH"}, {"id": 109, "amount": 7500, "receipt": "1598095", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 123, "amount": 7000, "receipt": "1598101", "remarks": "3rd Payment", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 136, "amount": 7000, "receipt": "1598119", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 41, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-12T00:00:00+00:00", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 42, "fee": 500, "name": "MISC", "remarks": "INCLUDED IN THE 35,000", "is_voided": false, "date_of_payment": "2026-01-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 06:56:10.335+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
257	SOA-2026-0104-1769766484433	104	2026-01-30 00:00:00+00	29700	7000	[{"id": 108, "amount": 6500, "receipt": "1598086", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-09", "mode_of_payment": "CASH"}, {"id": 109, "amount": 7500, "receipt": "1598095", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 123, "amount": 7000, "receipt": "1598101", "remarks": "3rd Payment", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 136, "amount": 7000, "receipt": "1598119", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 41, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-12T00:00:00+00:00", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 42, "fee": 500, "name": "MISC", "remarks": "INCLUDED IN THE 35,000", "is_voided": false, "date_of_payment": "2026-01-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:48:04.433+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
295	SOA-2026-0157-1771660839768	157	2026-02-21 00:00:00+00	21200	15000	[{"id": 201, "amount": 3000, "receipt": "1598137", "remarks": "DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 228, "amount": 7000, "receipt": null, "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-20", "mode_of_payment": "BDO - MON"}, {"id": 242, "amount": 10000, "receipt": "1057", "remarks": "DAIRY B7 - 2ND PAYMENT BARABA - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[{"id": 58, "fee": 1200, "name": "IGP", "remarks": "PAID", "is_voided": false, "date_of_payment": "2026-02-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 08:00:39.768+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
245	SOA-2026-0110-1769324278967	110	2026-01-25 00:00:00+00	31700	5000	[{"id": 104, "amount": 5000, "receipt": "1598082", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}, {"id": 105, "amount": 9000, "receipt": "1598094", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 128, "amount": 7000, "receipt": "1598106", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 137, "amount": 9000, "receipt": "1598118", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 37, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 38, "fee": 500, "name": "MISC", "remarks": "INCLUDED ON 35,000", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 06:57:58.967+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
246	SOA-2026-0102-1769324324664	102	2026-01-25 00:00:00+00	24450	11750	[{"id": 101, "amount": 5000, "receipt": "1598080", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 102, "amount": 6250, "receipt": "1598093", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "GCASH - WIN"}, {"id": 103, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT ", "is_voided": false, "payment_no": 3, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 124, "amount": 7000, "receipt": "1598102", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}]	[{"id": 49, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 06:58:44.664+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
258	SOA-2026-0105-1769766531067	105	2026-01-30 00:00:00+00	12450	18750	[{"id": 112, "amount": 5000, "receipt": null, "remarks": "1ST PAYMENT (WALAY RECEIPT NUMBER SA FORM)", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-08", "mode_of_payment": "CASH"}, {"id": 142, "amount": 6250, "receipt": null, "remarks": "No Receipt No.", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-16", "mode_of_payment": "ACCESS POINT BPI"}]	[{"id": 46, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-08T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:48:51.067+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
260	SOA-2026-0110-1769766602351	110	2026-01-30 00:00:00+00	31700	5000	[{"id": 104, "amount": 5000, "receipt": "1598082", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}, {"id": 105, "amount": 9000, "receipt": "1598094", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 128, "amount": 7000, "receipt": "1598106", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 137, "amount": 9000, "receipt": "1598118", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 37, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 38, "fee": 500, "name": "MISC", "remarks": "INCLUDED ON 35,000", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-30 09:50:02.351+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
296	SOA-2026-0145-1771660886539	145	2026-02-21 00:00:00+00	25200	11000	[{"id": 180, "amount": 2000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-04", "mode_of_payment": "CASH"}, {"id": 181, "amount": 5000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-04", "mode_of_payment": "GCASH - WIN"}, {"id": 203, "amount": 7000, "receipt": "1598139", "remarks": "DAIRY B7 - MONTEROLA 1ST PAYMENT - JOHN VIRGIL MONTEROLA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 244, "amount": 10000, "receipt": "1059", "remarks": "DAIRY B7 - 2ND PAYMENT MONTEROLA - JOHN VIRGIL MONTEROLA", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[{"id": 54, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-04T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-02-21 08:01:26.539+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
247	SOA-2026-0102-1769324752190	102	2026-01-25 00:00:00+00	26950	9250	[{"id": 101, "amount": 5000, "receipt": "1598080", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-26", "mode_of_payment": "CASH"}, {"id": 102, "amount": 6250, "receipt": "1598093", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "GCASH - WIN"}, {"id": 124, "amount": 7000, "receipt": "1598102", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 138, "amount": 7500, "receipt": "1598117", "remarks": null, "is_voided": false, "payment_no": 5, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 49, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 07:05:52.19+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
259	SOA-2026-0109-1769766575117	109	2026-01-30 00:00:00+00	24950	6250	[{"id": 114, "amount": 5000, "receipt": "1598068", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "MAYA POS"}, {"id": 115, "amount": 6250, "receipt": null, "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "MAYA POS"}, {"id": 144, "amount": 6250, "receipt": "1598112", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 151, "amount": 6250, "receipt": "1598098", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-27", "mode_of_payment": "MAYA QRPH"}]	[{"id": 47, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "MAYA POS"}]	2026-01-30 09:49:35.117+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
297	SOA-2026-0154-1771660973064	154	2026-02-21 00:00:00+00	18700	18000	[{"id": 208, "amount": 10000, "receipt": "1598144", "remarks": "DAIRY B7 - ARCEGA 1ST PAYMENT - RAMON LESTER ARCEGA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 235, "amount": 7000, "receipt": "-", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-13", "mode_of_payment": "GCASH - WIN"}]	[{"id": 62, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRAD FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 63, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "BDO - MON"}]	2026-02-21 08:02:53.064+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
248	SOA-2026-0106-1769325073334	106	2026-01-25 00:00:00+00	31200	5000	[{"id": 92, "amount": 6250, "receipt": "1598089", "remarks": "2ND PAYMENT - PARTIAL", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-12", "mode_of_payment": "CASH"}, {"id": 93, "amount": 5000, "receipt": "1597899", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-08", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 125, "amount": 6250, "receipt": "1598103", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "CASH"}, {"id": 140, "amount": 12500, "receipt": "1598121", "remarks": null, "is_voided": false, "payment_no": 5, "date_of_payment": "2026-01-25", "mode_of_payment": "CASH"}]	[{"id": 36, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-08T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-01-25 07:11:13.334+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
261	SOA-2026-0111-1769766638155	111	2026-01-30 00:00:00+00	18100	13100	[{"id": 110, "amount": 5000, "receipt": "1598081", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-31", "mode_of_payment": "GCASH - JONARD"}, {"id": 143, "amount": 11900, "receipt": null, "remarks": "No Receipt No.", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-15", "mode_of_payment": "GCASH - WIN"}]	[{"id": 45, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-31T00:00:00+00:00", "mode_of_payment": "GCASH - JONARD"}]	2026-01-30 09:50:38.155+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
298	SOA-2026-0134-1771661031431	134	2026-02-21 00:00:00+00	8700	28000	[{"id": 145, "amount": 7000, "receipt": "1598116", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-26", "mode_of_payment": "CASH"}]	[{"id": 50, "fee": 1200, "name": "IGP", "remarks": "IGP", "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 64, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 08:03:51.431+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
249	SOA-2026-0112-1769325136016	112	2026-01-25 00:00:00+00	31200	5000	[{"id": 95, "amount": 5000, "receipt": null, "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-09", "mode_of_payment": "CASH"}, {"id": 96, "amount": 6250, "receipt": "1598091", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "CASH"}, {"id": 127, "amount": 6000, "receipt": "1598104", "remarks": "3rd Payment", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-17", "mode_of_payment": "CASH"}, {"id": 141, "amount": 12750, "receipt": "1598120", "remarks": null, "is_voided": false, "payment_no": 5, "date_of_payment": "2026-01-25", "mode_of_payment": "CASH"}]	[{"id": 44, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-09T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 07:12:16.016+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
262	SOA-2026-0101-1769829662404	101	2026-01-31 00:00:00+00	24950	6250	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 160, "amount": 6250, "receipt": "1598125", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-26", "mode_of_payment": "GCASH - WIN"}, {"id": 162, "amount": 6250, "receipt": "1598113", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-31 03:21:02.404+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
299	SOA-2026-0189-1772098811950	189	2026-02-26 00:00:00+00	8700	28000	[{"id": 263, "amount": 7000, "receipt": "1071", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-25", "mode_of_payment": "CASH"}]	[{"id": 75, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-25T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 76, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-25T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-26 09:40:11.95+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
250	SOA-2026-0101-1769325294105	101	2026-01-25 00:00:00+00	12450	23750	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-25 07:14:54.105+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
263	SOA-2026-0109-1770003767718	109	2026-02-02 00:00:00+00	24950	6250	[{"id": 114, "amount": 5000, "receipt": "1598068", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "MAYA POS"}, {"id": 115, "amount": 6250, "receipt": null, "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "MAYA POS"}, {"id": 144, "amount": 6250, "receipt": "1598112", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 151, "amount": 6250, "receipt": "1598098", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-27", "mode_of_payment": "MAYA QRPH"}]	[{"id": 47, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "MAYA POS"}]	2026-02-02 03:42:47.718+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
300	SOA-2026-0157-1772157809301	157	2026-02-27 00:00:00+00	21200	15000	[{"id": 201, "amount": 3000, "receipt": "1598137", "remarks": "DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 228, "amount": 7000, "receipt": null, "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 242, "amount": 10000, "receipt": "1057", "remarks": "DAIRY B7 - 2ND PAYMENT BARABA - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[{"id": 58, "fee": 1200, "name": "IGP", "remarks": "PAID", "is_voided": false, "date_of_payment": "2026-02-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 02:03:29.301+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
251	SOA-2026-0110-1769404947147	110	2026-01-26 00:00:00+00	31700	5000	[{"id": 104, "amount": 5000, "receipt": "1598082", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}, {"id": 105, "amount": 9000, "receipt": "1598094", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 128, "amount": 7000, "receipt": "1598106", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 137, "amount": 9000, "receipt": "1598118", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 37, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 38, "fee": 500, "name": "MISC", "remarks": "INCLUDED ON 35,000", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-26 05:22:27.147+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
264	SOA-2026-0109-1770010208954	109	2026-02-02 00:00:00+00	31200	0	[{"id": 114, "amount": 5000, "receipt": "1598068", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "MAYA POS"}, {"id": 115, "amount": 6250, "receipt": null, "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-12", "mode_of_payment": "MAYA POS"}, {"id": 144, "amount": 6250, "receipt": "1598112", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 151, "amount": 6250, "receipt": "1598098", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-27", "mode_of_payment": "MAYA QRPH"}, {"id": 163, "amount": 6250, "receipt": "1598099", "remarks": "Full Payment", "is_voided": false, "payment_no": 5, "date_of_payment": "2026-02-02", "mode_of_payment": "CASH"}]	[{"id": 47, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "MAYA POS"}]	2026-02-02 05:30:08.954+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
301	SOA-2026-0128-1772157830415	128	2026-02-27 00:00:00+00	22200	14000	[{"id": 173, "amount": 7000, "receipt": "1598115", "remarks": "DAIRY B7", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 211, "amount": 7000, "receipt": "1598148", "remarks": "DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 241, "amount": 7000, "receipt": "1056", "remarks": "DAIRY B7 - MOTAS 2ND PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "GCASH - JONARD"}]	[{"id": 53, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-20T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 02:03:50.415+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
265	SOA-2026-0101-1770014142527	101	2026-02-02 00:00:00+00	31200	0	[{"id": 98, "amount": 5000, "receipt": "1598067", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-18", "mode_of_payment": "ACCESS POINT BPI"}, {"id": 99, "amount": 6250, "receipt": "1598092", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 160, "amount": 6250, "receipt": "1598125", "remarks": null, "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-26", "mode_of_payment": "GCASH - WIN"}, {"id": 162, "amount": 6250, "receipt": "1598113", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 164, "amount": 6250, "receipt": "1598112", "remarks": null, "is_voided": true, "payment_no": 5, "date_of_payment": "2026-01-19", "mode_of_payment": "CASH"}, {"id": 165, "amount": 6250, "receipt": "1598130", "remarks": "Fully Paid", "is_voided": false, "payment_no": 6, "date_of_payment": "2026-01-31", "mode_of_payment": "GCASH - JONARD"}]	[{"id": 43, "fee": 1200, "name": "B6 DAIRY IGP FEE", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2025-12-18T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-02 06:35:42.527+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	Active
302	SOA-2026-0162-1772166308991	162	2026-02-27 00:00:00+00	34900	1800	[{"id": 209, "amount": 7000, "receipt": "1598145", "remarks": "DAIRY B7 - HALIC 1ST PAYMENT - CHRISTIAN HALIC", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 237, "amount": 6200, "receipt": "1598123", "remarks": "HALIC - DAIRY B7 DOWNPAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-30", "mode_of_payment": "GCASH - WIN"}, {"id": 258, "amount": 20000, "receipt": "1069", "remarks": "DAIRY B7 3RD PAYMENT - CHRISTIAN HALIC", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-22", "mode_of_payment": "CASH"}]	[{"id": 67, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 68, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 04:25:08.991+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
266	SOA-2026-0099-1770022776538	99	2026-02-02 00:00:00+00	6000	0	[{"id": 132, "amount": 6000, "receipt": "1597804", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}]	[]	2026-02-02 08:59:36.538+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
303	SOA-2026-0161-1772166525110	161	2026-02-27 00:00:00+00	29700	7000	[{"id": 207, "amount": 7000, "receipt": "1598143", "remarks": "DAIRY B7 - MARTINEZ 1ST PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 229, "amount": 7000, "receipt": "1598085", "remarks": "DOWNPAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-07", "mode_of_payment": "CASH"}, {"id": 243, "amount": 7000, "receipt": "1058", "remarks": "DAIRY B7 - 2ND PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}, {"id": 257, "amount": 7000, "receipt": "1068", "remarks": "DAIRY B7 3RD PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 4, "date_of_payment": "2026-02-22", "mode_of_payment": "CASH"}]	[{"id": 60, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-14T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 61, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 04:28:45.11+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
267	SOA-2026-0110-1770032280014	110	2026-02-02 00:00:00+00	31700	5000	[{"id": 104, "amount": 5000, "receipt": "1598082", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}, {"id": 105, "amount": 9000, "receipt": "1598094", "remarks": "2ND PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-11", "mode_of_payment": "CASH"}, {"id": 128, "amount": 7000, "receipt": "1598106", "remarks": "3RD PAYMENT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-01-17", "mode_of_payment": "GCASH - WIN"}, {"id": 137, "amount": 9000, "receipt": "1598118", "remarks": null, "is_voided": false, "payment_no": 4, "date_of_payment": "2026-01-25", "mode_of_payment": "GCASH - WIN"}]	[{"id": 37, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRADUATION FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 38, "fee": 500, "name": "MISC", "remarks": "INCLUDED ON 35,000", "is_voided": false, "date_of_payment": "2026-01-11T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-02 11:38:00.014+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
304	SOA-2026-0157-1772166704402	157	2026-02-27 00:00:00+00	21200	15000	[{"id": 201, "amount": 3000, "receipt": "1598137", "remarks": "DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 228, "amount": 7000, "receipt": null, "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 242, "amount": 10000, "receipt": "1057", "remarks": "DAIRY B7 - 2ND PAYMENT BARABA - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[{"id": 58, "fee": 1200, "name": "IGP", "remarks": "PAID", "is_voided": false, "date_of_payment": "2026-02-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 04:31:44.402+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
268	SOA-2026-0130-1770085160861	130	2026-02-03 00:00:00+00	0	6000	[]	[]	2026-02-03 02:19:20.861+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
305	SOA-2026-0191-1772166982599	191	2026-02-27 00:00:00+00	1700	35000	[]	[{"id": 78, "fee": 1200, "name": "B8 DAIRY IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-27T00:00:00+00:00", "mode_of_payment": "MARIBANK - MON"}, {"id": 79, "fee": 500, "name": "B8 DAIRY MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-27T00:00:00+00:00", "mode_of_payment": "MARIBANK - MON"}]	2026-02-27 04:36:22.599+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
306	SOA-2026-0191-1772166998198	191	2026-02-27 00:00:00+00	8700	28000	[{"id": 265, "amount": 7000, "receipt": "1073", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-27", "mode_of_payment": "MARIBANK - MON"}]	[{"id": 78, "fee": 1200, "name": "B8 DAIRY IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-27T00:00:00+00:00", "mode_of_payment": "MARIBANK - MON"}, {"id": 79, "fee": 500, "name": "B8 DAIRY MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-27T00:00:00+00:00", "mode_of_payment": "MARIBANK - MON"}]	2026-02-27 04:36:38.198+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
269	SOA-2026-0145-1770177638999	145	2026-02-04 00:00:00+00	8200	28000	[{"id": 180, "amount": 2000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-04", "mode_of_payment": "CASH"}, {"id": 181, "amount": 5000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-04", "mode_of_payment": "GCASH - WIN"}]	[{"id": 54, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-04T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-02-04 04:00:38.999+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
307	SOA-2026-0134-1772168973322	134	2026-02-27 00:00:00+00	8700	28000	[{"id": 145, "amount": 7000, "receipt": "1598116", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-26", "mode_of_payment": "CASH"}]	[{"id": 50, "fee": 1200, "name": "IGP", "remarks": "IGP", "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 64, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 05:09:33.322+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
270	SOA-2026-0099-1770356086772	99	2026-02-06 00:00:00+00	6000	0	[{"id": 132, "amount": 6000, "receipt": "1597804", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-06", "mode_of_payment": "CASH"}]	[]	2026-02-06 05:34:46.772+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	Active
308	SOA-2026-0128-1772169155336	128	2026-02-27 00:00:00+00	22200	14000	[{"id": 173, "amount": 7000, "receipt": "1598115", "remarks": "DAIRY B7", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 211, "amount": 7000, "receipt": "1598148", "remarks": "DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 241, "amount": 7000, "receipt": "1056", "remarks": "DAIRY B7 - MOTAS 2ND PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "GCASH - JONARD"}]	[{"id": 53, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-20T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 05:12:35.336+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
271	SOA-2026-0145-1771029486490	145	2026-02-14 00:00:00+00	15200	21000	[{"id": 180, "amount": 2000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-04", "mode_of_payment": "CASH"}, {"id": 181, "amount": 5000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-04", "mode_of_payment": "GCASH - WIN"}, {"id": 203, "amount": 7000, "receipt": "1598139", "remarks": "DAIRY B7 - MONTEROLA 1ST PAYMENT - JOHN VIRGIL MONTEROLA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}]	[{"id": 54, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-04T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-02-14 00:38:06.49+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
309	SOA-2026-0134-1772169179495	134	2026-02-27 00:00:00+00	8700	28000	[{"id": 145, "amount": 7000, "receipt": "1598116", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-26", "mode_of_payment": "CASH"}]	[{"id": 50, "fee": 1200, "name": "IGP", "remarks": "IGP", "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 64, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-27 05:12:59.495+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
272	SOA-2026-0145-1771029545734	145	2026-02-14 00:00:00+00	15200	21000	[{"id": 180, "amount": 2000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-04", "mode_of_payment": "CASH"}, {"id": 181, "amount": 5000, "receipt": "1598135", "remarks": null, "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-04", "mode_of_payment": "GCASH - WIN"}, {"id": 203, "amount": 7000, "receipt": "1598139", "remarks": "DAIRY B7 - MONTEROLA 1ST PAYMENT - JOHN VIRGIL MONTEROLA", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}]	[{"id": 54, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-04T00:00:00+00:00", "mode_of_payment": "GCASH - WIN"}]	2026-02-14 00:39:05.734+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
273	SOA-2026-0128-1771029723323	128	2026-02-14 00:00:00+00	15200	21000	[{"id": 173, "amount": 7000, "receipt": "1598115", "remarks": "DAIRY B7", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-20", "mode_of_payment": "CASH"}, {"id": 211, "amount": 7000, "receipt": "1598148", "remarks": "DAIRY B7 - MOTAS 1ST PAYMENT - PHILIP CHRISTIAN MOTAS", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}]	[{"id": 53, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-20T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 00:42:03.323+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
274	SOA-2026-0137-1771029895352	137	2026-02-14 00:00:00+00	15200	21000	[{"id": 148, "amount": 7000, "receipt": "1598124", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-27", "mode_of_payment": "BPI - JONARD"}, {"id": 202, "amount": 7000, "receipt": "1598138", "remarks": "BAIRY B7 - ALCUBEREZ 1ST PAYMENT - RANDY ALCUBEREZ", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-07", "mode_of_payment": "BPI - JONARD"}]	[{"id": 51, "fee": 1200, "name": "INSURANCE/PPE", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-27T00:00:00+00:00", "mode_of_payment": "BPI - JONARD"}]	2026-02-14 00:44:55.352+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
275	SOA-2026-0157-1771029984366	157	2026-02-14 00:00:00+00	11200	25000	[{"id": 201, "amount": 3000, "receipt": "1598137", "remarks": "DAIRY B7 - BARABA 1ST PAYMENT (PARTIAL) - KYLE NICOLE BARABA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 228, "amount": 7000, "receipt": null, "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-20", "mode_of_payment": "BDO - MON"}]	[{"id": 58, "fee": 1200, "name": "IGP", "remarks": "PAID", "is_voided": false, "date_of_payment": "2026-02-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 00:46:24.366+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
276	SOA-2026-0161-1771030361943	161	2026-02-14 00:00:00+00	15700	21000	[{"id": 207, "amount": 7000, "receipt": "1598143", "remarks": "DAIRY B7 - MARTINEZ 1ST PAYMENT - MARVIN MARTINEZ", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 229, "amount": 7000, "receipt": "1598085", "remarks": null, "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-07", "mode_of_payment": "CASH"}]	[{"id": 60, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-14T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 61, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-07T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 00:52:41.943+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
277	SOA-2026-0166-1771030674720	166	2026-02-14 00:00:00+00	35000	0	[{"id": 213, "amount": 5000, "receipt": "1598063", "remarks": null, "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-17", "mode_of_payment": "BPI - JONARD"}, {"id": 231, "amount": 25000, "receipt": "1598135", "remarks": "FULL PAYMENT - DAIRY BATCH 7", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-02-05", "mode_of_payment": "MAYA QRPH"}, {"id": 232, "amount": 5000, "receipt": "-", "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 3, "date_of_payment": "2026-02-14", "mode_of_payment": "CASH"}]	[]	2026-02-14 00:57:54.72+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
278	SOA-2026-0158-1771030851770	158	2026-02-14 00:00:00+00	23800	6200	[{"id": 204, "amount": 10000, "receipt": "1598140", "remarks": "DAIRY B7 - ALBARICO 1ST PAYMENT - ANGELICA ALBARICO", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 233, "amount": 13800, "receipt": "1598064", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-17", "mode_of_payment": "BPI - JONARD"}]	[]	2026-02-14 01:00:51.77+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
279	SOA-2026-0159-1771030947801	159	2026-02-14 00:00:00+00	23800	6200	[{"id": 205, "amount": 10000, "receipt": "1598141", "remarks": "DAIRY B7 - TINAY 1ST PAYMENT - JASON JHON TINAY", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 234, "amount": 13800, "receipt": "1598065", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-13", "mode_of_payment": "BPI - JONARD"}]	[]	2026-02-14 01:02:27.801+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
280	SOA-2026-0154-1771031168204	154	2026-02-14 00:00:00+00	11700	25000	[{"id": 208, "amount": 10000, "receipt": "1598144", "remarks": "DAIRY B7 - ARCEGA 1ST PAYMENT - RAMON LESTER ARCEGA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}]	[{"id": 62, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRAD FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 63, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "BDO - MON"}]	2026-02-14 01:06:08.204+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
281	SOA-2026-0154-1771031221595	154	2026-02-14 00:00:00+00	18700	18000	[{"id": 208, "amount": 10000, "receipt": "1598144", "remarks": "DAIRY B7 - ARCEGA 1ST PAYMENT - RAMON LESTER ARCEGA", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 235, "amount": 7000, "receipt": "-", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-13", "mode_of_payment": "GCASH - WIN"}]	[{"id": 62, "fee": 1200, "name": "IGP", "remarks": "INSURANCE, GRAD FEE, PPE", "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 63, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-13T00:00:00+00:00", "mode_of_payment": "BDO - MON"}]	2026-02-14 01:07:01.595+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
282	SOA-2026-0134-1771032719025	134	2026-02-14 00:00:00+00	8200	28000	[{"id": 145, "amount": 7000, "receipt": "1598116", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-26", "mode_of_payment": "CASH"}]	[{"id": 50, "fee": 1200, "name": "IGP", "remarks": "IGP", "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:31:59.025+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
283	SOA-2026-0134-1771032745636	134	2026-02-14 00:00:00+00	8700	28000	[{"id": 145, "amount": 7000, "receipt": "1598116", "remarks": "1ST PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-01-26", "mode_of_payment": "CASH"}]	[{"id": 50, "fee": 1200, "name": "IGP", "remarks": "IGP", "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 64, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-26T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:32:25.636+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
284	SOA-2026-0160-1771032975451	160	2026-02-14 00:00:00+00	15700	21000	[{"id": 206, "amount": 7000, "receipt": "1598142", "remarks": "DAIRY B7 - ARAGON 1ST PAYMENT - MARIA ANGELA ARAGON", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 236, "amount": 7000, "receipt": "1598127", "remarks": "DOWN PAYMENT ", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-30", "mode_of_payment": "GCASH - WIN"}]	[{"id": 65, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-30T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 66, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-30T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:36:15.451+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
285	SOA-2026-0162-1771033116263	162	2026-02-14 00:00:00+00	14900	21800	[{"id": 209, "amount": 7000, "receipt": "1598145", "remarks": "DAIRY B7 - HALIC 1ST PAYMENT - CHRISTIAN HALIC", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 237, "amount": 6200, "receipt": "1598123", "remarks": "HALIC - DAIRY B7 DOWNPAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-30", "mode_of_payment": "GCASH - WIN"}]	[{"id": 67, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 68, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:38:36.263+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
286	SOA-2026-0164-1771033617002	164	2026-02-14 00:00:00+00	36700	0	[{"id": 210, "amount": 28000, "receipt": "1598146", "remarks": "DAIRY B7 - PARUMOG, JOSEPH(FULL PAYMENT) - JOSEPH PARUMOG", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 238, "amount": 7000, "receipt": null, "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-15", "mode_of_payment": "BPI - JONARD"}]	[{"id": 69, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-02-14T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 70, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-15T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:46:57.002+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
287	SOA-2026-0175-1771034028628	175	2026-02-14 00:00:00+00	6700	25000	[{"id": 239, "amount": 5000, "receipt": "1598084", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-31", "mode_of_payment": "MAYA QRPH"}]	[{"id": 71, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2025-12-31T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 72, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2025-12-31T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-14 01:53:48.628+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	Active
288	SOA-2026-0162-1771660393774	162	2026-02-21 00:00:00+00	14900	21800	[{"id": 209, "amount": 7000, "receipt": "1598145", "remarks": "DAIRY B7 - HALIC 1ST PAYMENT - CHRISTIAN HALIC", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 237, "amount": 6200, "receipt": "1598123", "remarks": "HALIC - DAIRY B7 DOWNPAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2026-01-30", "mode_of_payment": "GCASH - WIN"}]	[{"id": 67, "fee": 500, "name": "MISC", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}, {"id": 68, "fee": 1200, "name": "IGP", "remarks": null, "is_voided": false, "date_of_payment": "2026-01-24T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-02-21 07:53:13.774+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
214	SOA-2026-0103-1768964589225	103	2026-01-21 00:00:00+00	18000	18200	[{"id": 116, "amount": 11800, "receipt": null, "remarks": "1ST PAYMENT (NO RECEIPT NUMBER)", "is_voided": false, "payment_no": 1, "date_of_payment": "2025-12-06", "mode_of_payment": "CASH"}, {"id": 117, "amount": 5000, "receipt": null, "remarks": "EARLY REGISTRATION DISCOUNT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-06", "mode_of_payment": "CASH"}]	[{"id": 48, "fee": 1200, "name": "B6 DAIRY FARMING PPE", "remarks": "INSURANCE, GRADUATION FEE, PPE (NO RECEIPT NUMBER)", "is_voided": false, "date_of_payment": "2025-12-06T00:00:00+00:00", "mode_of_payment": "CASH"}]	2026-01-21 03:03:09.225+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	Active
289	SOA-2026-0159-1771660496258	159	2026-02-21 00:00:00+00	23800	6200	[{"id": 205, "amount": 10000, "receipt": "1598141", "remarks": "DAIRY B7 - TINAY 1ST PAYMENT - JASON JHON TINAY", "is_voided": false, "payment_no": 1, "date_of_payment": "2026-02-07", "mode_of_payment": "CASH"}, {"id": 234, "amount": 13800, "receipt": "1598065", "remarks": "DOWN PAYMENT", "is_voided": false, "payment_no": 2, "date_of_payment": "2025-12-13", "mode_of_payment": "BPI - JONARD"}]	[]	2026-02-21 07:54:56.258+00	de717e45-803b-4ca2-8118-88eecfa63c2c	Active
\.


--
-- Data for Name: student_year_counters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."student_year_counters" ("year", "counter") FROM stdin;
2026	2
2025	29
\.


--
-- Data for Name: transaction_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transaction_table" ("id", "transaction_name", "created_at", "created_by", "edited_at", "edited_by") FROM stdin;
3	PRINT / PHOTOCOPY	2025-12-22 10:05:03.669746+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
4	CANTEEN	2025-12-22 10:05:12.19274+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2025-12-22 10:05:22.727+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7
6	CERTIFICATIONS	2025-12-22 10:05:39.251369+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
7	CONSULTANCY	2025-12-22 10:05:46.200384+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
10	EXPENSES	2025-12-22 10:06:05.094621+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
8	CV/SOP	2025-12-22 10:05:52.41745+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-12 08:05:54.374+00	7f319a76-25a0-48b8-ba5e-389684f5daf2
12	MISC/BOOKING/IGP	2026-01-12 08:06:26.392754+00	7f319a76-25a0-48b8-ba5e-389684f5daf2	\N	\N
13	RECURRING PAYMENT	2026-01-20 02:50:09.175937+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
2	TAGUM ENROLLMENT	2025-12-22 10:04:51.106503+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-20 02:50:45.307+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7
14	DAVAO ENROLLMENT	2026-01-20 02:50:49.147386+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N	\N
15	WEBTOOL	2026-02-05 05:15:57.620115+00	3b0f6f67-8a9e-41c4-b5ee-ce5c5f81008b	\N	\N
\.


--
-- Data for Name: validity_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."validity_settings" ("id", "branch_id", "review_mode", "duration_value", "duration_unit", "created_at", "edited_at", "created_by", "edited_by") FROM stdin;
3d811f36-3e51-406f-9e52-ddea10d62f74	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	FACE TO FACE	1	YEAR	2026-01-12 07:22:49.589099+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
7aad260f-ff2b-47b6-9767-1ca7dc530ab4	d5614b25-79f7-4e39-b3fc-52b6f1b6f770	ONLINE	4	MONTH	2026-01-12 07:22:56.434418+00	\N	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	\N
cfc2caf4-01f9-48a2-a6dd-3f1de8a6f7fc	fefb9e21-347d-4cd5-b1c0-4de05d079d94	FACE TO FACE	3	MONTH	2026-01-12 07:23:06.046713+00	2026-01-23 03:54:33.706+00	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	7f319a76-25a0-48b8-ba5e-389684f5daf2
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
images	images	\N	2026-01-13 07:27:09.868786+00	2026-01-13 07:27:09.868786+00	f	f	\N	\N	\N	STANDARD
student-photos	student-photos	\N	2026-01-13 07:30:07.878433+00	2026-01-13 07:30:07.878433+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
1afd181e-b8f4-4b43-9990-121e4328bac1	student-photos	20260009/.emptyFolderPlaceholder	\N	2026-01-13 07:48:11.243996+00	2026-01-13 07:48:11.243996+00	2026-01-13 07:48:11.243996+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2026-01-13T07:48:11.244Z", "contentLength": 0, "httpStatusCode": 200}	a3846766-5c71-49a4-b477-1aca03625952	\N	{}
e602dfa9-521b-4538-8aa0-1ad9455e8435	student-photos	20260009/126_1768290528277.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-13 07:48:48.840751+00	2026-01-13 07:48:48.840751+00	2026-01-13 07:48:48.840751+00	{"eTag": "\\"284c7fd7862bbc7df5deb04483e795f7\\"", "size": 8182, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-01-13T07:48:49.000Z", "contentLength": 8182, "httpStatusCode": 200}	a1ef10d3-d612-4168-b89a-1d18ed883db7	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
7e3bf1f1-1827-4256-ad08-403e2d1934a9	student-photos	20260009/126_1768291514136.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-13 08:05:14.739671+00	2026-01-13 08:05:14.739671+00	2026-01-13 08:05:14.739671+00	{"eTag": "\\"4d3f2194f3d1cc6873d6f20e8729443f\\"", "size": 71964, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-13T08:05:15.000Z", "contentLength": 71964, "httpStatusCode": 200}	1debad65-ddde-4fa4-b634-35c977dd750f	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
a9538c68-e17f-443f-b4b2-75c002dcf056	student-photos	20260009/126_1768291639958.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-13 08:07:20.347334+00	2026-01-13 08:07:20.347334+00	2026-01-13 08:07:20.347334+00	{"eTag": "\\"786058167a992facd787f5d7c72ab18e\\"", "size": 67624, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-13T08:07:21.000Z", "contentLength": 67624, "httpStatusCode": 200}	7928b24a-9254-4e77-90ee-43c2cb4a6ff8	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
8625908a-a69b-49d7-bc07-5f97869033ec	student-photos	20260009/126_1768291761913.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-13 08:09:22.499938+00	2026-01-13 08:09:22.499938+00	2026-01-13 08:09:22.499938+00	{"eTag": "\\"5bdace8801a2f2daee8e9b9f71390073\\"", "size": 68386, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-13T08:09:23.000Z", "contentLength": 68386, "httpStatusCode": 200}	6d1619cf-ddab-426a-8333-d4810e4400eb	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
1205391a-8163-4a34-82db-94e8855cec43	student-photos	20260009/126_1768350310551.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 00:25:11.118932+00	2026-01-14 00:25:11.118932+00	2026-01-14 00:25:11.118932+00	{"eTag": "\\"6a72d906b0b1b86fe3a33cc1e1bfea5a\\"", "size": 70305, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T00:25:12.000Z", "contentLength": 70305, "httpStatusCode": 200}	a0770ed7-fba3-486f-af62-466352d0f934	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
3da9360b-0499-4de9-b797-58ff0007e394	student-photos	20260009/126_1768350334308.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 00:25:34.18616+00	2026-01-14 00:25:34.18616+00	2026-01-14 00:25:34.18616+00	{"eTag": "\\"9cb98989ca6467b218d6ed4d6b2afb5f\\"", "size": 69334, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T00:25:35.000Z", "contentLength": 69334, "httpStatusCode": 200}	f2838b71-7cbe-4bf0-b075-2c26e5a099b7	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
2a6bab3a-b8c7-495d-beba-35c94c5f39ad	student-photos	20260009/126_1768350353209.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 00:25:53.148949+00	2026-01-14 00:25:53.148949+00	2026-01-14 00:25:53.148949+00	{"eTag": "\\"6c16b9753c67e78aa2cc0388945f219b\\"", "size": 77810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T00:25:54.000Z", "contentLength": 77810, "httpStatusCode": 200}	d84469cf-8895-4cf2-97c6-ec9507cabff8	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
9a3fa83c-51cb-4159-990a-db3aeb369a3c	student-photos	20260009/126_1768359962176.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:06:02.453475+00	2026-01-14 03:06:02.453475+00	2026-01-14 03:06:02.453475+00	{"eTag": "\\"683bb85895c6b8218c7820bc8c80b14a\\"", "size": 68991, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:06:03.000Z", "contentLength": 68991, "httpStatusCode": 200}	804b9909-3681-4f9c-963e-551f3650ccdd	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
57e49926-cb40-4846-850a-81ae87c9ef0a	student-photos	20260009/126_1768360977219.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:22:57.490357+00	2026-01-14 03:22:57.490357+00	2026-01-14 03:22:57.490357+00	{"eTag": "\\"af4f9cd95270b055d5d7949136ea2fee\\"", "size": 30653, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:22:58.000Z", "contentLength": 30653, "httpStatusCode": 200}	433b76f8-ecf1-46a2-80fe-dbee41adf9b6	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
1c32eef4-8f6b-4030-93d3-1c75546406ed	student-photos	20260009/126_1768361001226.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:23:20.880632+00	2026-01-14 03:23:20.880632+00	2026-01-14 03:23:20.880632+00	{"eTag": "\\"fda7d6fdcfa8005c6b8efb29f5cc8fd4\\"", "size": 30786, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:23:21.000Z", "contentLength": 30786, "httpStatusCode": 200}	3878838e-d43e-4575-8718-073901d22b95	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
f7793d3f-3963-4c88-953f-a801e5111dbf	student-photos	20260009/126_1768361290577.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:28:10.907695+00	2026-01-14 03:28:10.907695+00	2026-01-14 03:28:10.907695+00	{"eTag": "\\"7d3ff1df85f777c7a63b2ae3beea43f1\\"", "size": 32664, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:28:11.000Z", "contentLength": 32664, "httpStatusCode": 200}	9a5f3af0-8848-4469-9dec-66dd5679e2fb	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
49c704cd-734a-4191-972a-92e38d5a0124	student-photos	20260009/126_1768361468187.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:31:08.245637+00	2026-01-14 03:31:08.245637+00	2026-01-14 03:31:08.245637+00	{"eTag": "\\"98db64f62a18fd8c53c5545e0ea2c8d4\\"", "size": 35649, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:31:09.000Z", "contentLength": 35649, "httpStatusCode": 200}	a030c641-380d-4cc5-a027-c632ef1f207c	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
c06301d2-2280-4ecd-9c4b-01495442555b	student-photos	20260009/126_1768361511581.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:31:51.82794+00	2026-01-14 03:31:51.82794+00	2026-01-14 03:31:51.82794+00	{"eTag": "\\"9f3abc613c3b574fe9e34c1e97a7222f\\"", "size": 29476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:31:52.000Z", "contentLength": 29476, "httpStatusCode": 200}	383d1a66-fd01-4489-af95-871f08b3af4b	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
06a48967-1c83-4f1b-ab4e-b46652d82232	student-photos	20260009/126_1768361799538.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:36:39.795751+00	2026-01-14 03:36:39.795751+00	2026-01-14 03:36:39.795751+00	{"eTag": "\\"05d17db83dffa15f6090d6e69a5dae81\\"", "size": 27389, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:36:40.000Z", "contentLength": 27389, "httpStatusCode": 200}	ddca2326-f14c-464f-aa1c-cc0bda51e1eb	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
d5ffc460-01e6-486a-80c1-084dc0e4f687	student-photos	20260009/126_1768361951787.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:39:12.043765+00	2026-01-14 03:39:12.043765+00	2026-01-14 03:39:12.043765+00	{"eTag": "\\"2adbf7a267268444ae1ca545e645e10e\\"", "size": 22927, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:39:12.000Z", "contentLength": 22927, "httpStatusCode": 200}	0c87da53-2e95-4809-bb89-1f518b9b1f6f	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
8f9f533c-5f73-453a-bb86-e406cc041c48	student-photos	20260009/126_1768362087944.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:41:28.026533+00	2026-01-14 03:41:28.026533+00	2026-01-14 03:41:28.026533+00	{"eTag": "\\"03ae12ba3272c45d277ec1cbf6a57d19\\"", "size": 24690, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:41:28.000Z", "contentLength": 24690, "httpStatusCode": 200}	933e5c3a-8ba8-4fad-9321-a3ca8c7b0f86	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
78c2b4a0-bf3a-4e8f-83c5-3ba9609ea5df	student-photos	20260009/126_1768362100155.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:41:39.918946+00	2026-01-14 03:41:39.918946+00	2026-01-14 03:41:39.918946+00	{"eTag": "\\"d6445780d18396a54e8d902c2c55b50a\\"", "size": 23042, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:41:40.000Z", "contentLength": 23042, "httpStatusCode": 200}	c651fc98-e37c-4fac-ab7a-9d1d1b9e98cb	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
7f977263-2018-42bf-b20e-c3b2f9f9324e	student-photos	20260009/126_1768362114379.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:41:54.471351+00	2026-01-14 03:41:54.471351+00	2026-01-14 03:41:54.471351+00	{"eTag": "\\"07d9157d4e9d69f76529f03a8fdb39a8\\"", "size": 24294, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:41:55.000Z", "contentLength": 24294, "httpStatusCode": 200}	0d90704f-fa89-414e-816f-e63e3ce26aff	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
b0c30310-3639-4e40-8309-b87396565494	student-photos	20260009/126_1768362164750.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:42:44.885858+00	2026-01-14 03:42:44.885858+00	2026-01-14 03:42:44.885858+00	{"eTag": "\\"15ceef6d14cb460dc70c98eb3cb72c5c\\"", "size": 26812, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:42:45.000Z", "contentLength": 26812, "httpStatusCode": 200}	8188950a-ad40-4f42-a236-c5c40db6327c	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
d228779f-239a-4d9d-a146-7890bab63b69	student-photos	20260009/126_1768362319520.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 03:45:19.723969+00	2026-01-14 03:45:19.723969+00	2026-01-14 03:45:19.723969+00	{"eTag": "\\"0318ef4788a1fe8497037417aa2527a1\\"", "size": 38247, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T03:45:20.000Z", "contentLength": 38247, "httpStatusCode": 200}	9e20bf53-d456-4eeb-b8ea-b38a6c6d85f8	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
5a245ae8-5514-41f0-ae05-4d3bfbee7f03	student-photos	20260009/126_1768369771065.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 05:49:31.630112+00	2026-01-14 05:49:31.630112+00	2026-01-14 05:49:31.630112+00	{"eTag": "\\"d0d9d607e8bd92ec54433c88dda68d40\\"", "size": 405768, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T05:49:32.000Z", "contentLength": 405768, "httpStatusCode": 200}	8c05088b-f98b-40c4-9e56-566f9c73e524	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
b31884af-3f30-4d59-b7cd-c74fc2799807	student-photos	20260009/126_1768373148571.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 06:45:48.475615+00	2026-01-14 06:45:48.475615+00	2026-01-14 06:45:48.475615+00	{"eTag": "\\"258670f471a0720b7ef857a1206fb3ea\\"", "size": 66279, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T06:45:49.000Z", "contentLength": 66279, "httpStatusCode": 200}	1ce42b18-cd06-4fc4-9402-f589b07367d5	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
391f77cf-49e0-44a3-badc-16396985ae54	student-photos	20260009/126_1768373581580.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 06:53:01.416499+00	2026-01-14 06:53:01.416499+00	2026-01-14 06:53:01.416499+00	{"eTag": "\\"10746682190c9423e84164cb8d1da2f3\\"", "size": 25516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T06:53:02.000Z", "contentLength": 25516, "httpStatusCode": 200}	2db81b34-370a-44af-962a-f7355a8a255c	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
d196620d-ed58-4111-8319-970a040f69c7	student-photos	20260009/126_1768377461447.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:43.272416+00	2026-01-14 07:57:43.272416+00	2026-01-14 07:57:43.272416+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:44.000Z", "contentLength": 20695, "httpStatusCode": 200}	049bf35b-13f6-4925-b5f9-5d35e7a8e065	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
de85b68d-1d88-4118-b7c6-b3d767cd2d3e	student-photos	20260009/126_1768377464138.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:43.717705+00	2026-01-14 07:57:43.717705+00	2026-01-14 07:57:43.717705+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:44.000Z", "contentLength": 20695, "httpStatusCode": 200}	33f7ab74-c0bf-4854-bbd8-2f9d0edd011e	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
0b803932-6211-4ff7-af24-152a6b81b940	student-photos	20260009/126_1768377464771.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:44.294066+00	2026-01-14 07:57:44.294066+00	2026-01-14 07:57:44.294066+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:45.000Z", "contentLength": 20695, "httpStatusCode": 200}	e5194d12-d158-4663-b408-f7d03b6db71d	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
8abc6b03-e880-429c-aebd-e807824cf2f2	student-photos	20260009/126_1768377464975.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:44.726574+00	2026-01-14 07:57:44.726574+00	2026-01-14 07:57:44.726574+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:45.000Z", "contentLength": 20695, "httpStatusCode": 200}	3ce71df4-a423-4b6f-9aa7-fbe5dfb68cc1	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
9ededc49-2293-4d14-83c0-72a99cdccb2e	student-photos	20260009/126_1768377465395.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:45.162223+00	2026-01-14 07:57:45.162223+00	2026-01-14 07:57:45.162223+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:46.000Z", "contentLength": 20695, "httpStatusCode": 200}	1b730d5b-be76-43bc-8735-c65e3a7684fb	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
8b85057c-1a6b-47b2-b1b2-1750838bb62a	student-photos	20260009/126_1768377465626.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:57:45.187185+00	2026-01-14 07:57:45.187185+00	2026-01-14 07:57:45.187185+00	{"eTag": "\\"93f2e62b206778dd530bf51fb0fc608f\\"", "size": 20695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:57:46.000Z", "contentLength": 20695, "httpStatusCode": 200}	46a85209-ebfa-4620-b8ef-ab7e135eee59	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
882d83e8-83e3-42bf-9572-d67478ab7a70	student-photos	20260009/126_1768377506438.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 07:58:25.782497+00	2026-01-14 07:58:25.782497+00	2026-01-14 07:58:25.782497+00	{"eTag": "\\"45f5a68d39b65ac5d347ba6a7a77d4e4\\"", "size": 20359, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T07:58:26.000Z", "contentLength": 20359, "httpStatusCode": 200}	138b4400-17f8-4fd1-b798-ad166594f5e7	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
57c1d24a-1c3a-4d62-8350-50d4470b5c7a	student-photos	20260009/126_1768378503610.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 08:15:04.304519+00	2026-01-14 08:15:04.304519+00	2026-01-14 08:15:04.304519+00	{"eTag": "\\"6527b36c3ed08cc800968c3c0f4c2829\\"", "size": 22110, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T08:15:05.000Z", "contentLength": 22110, "httpStatusCode": 200}	840fc297-fb43-4398-b739-7ec514c1fccc	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
1941745f-73c0-4196-aa16-b2ef6fd54d8f	student-photos	20260009/126_1768378528986.jpg	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	2026-01-14 08:15:28.499164+00	2026-01-14 08:15:28.499164+00	2026-01-14 08:15:28.499164+00	{"eTag": "\\"6d61ce0c610fb526f5d418e15e42c7c5\\"", "size": 24200, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-14T08:15:29.000Z", "contentLength": 24200, "httpStatusCode": 200}	b222c20a-8de7-48c0-8054-3daabeab686a	3cebc69a-264a-46cc-8e65-a9ae20d29eb7	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1212, true);


--
-- Name: enrollment_modes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."enrollment_modes_id_seq"', 43, true);


--
-- Name: enrollment_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."enrollment_table_id_seq"', 191, true);


--
-- Name: extracharge_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."extracharge_table_id_seq"', 79, true);


--
-- Name: gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."gallery_id_seq"', 38, true);


--
-- Name: payment_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."payment_mode_id_seq"', 22, true);


--
-- Name: payment_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."payment_table_id_seq"', 266, true);


--
-- Name: schedule_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."schedule_table_id_seq"', 11, true);


--
-- Name: soa_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."soa_table_id_seq"', 309, true);


--
-- Name: status_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."status_table_id_seq"', 18, true);


--
-- Name: student_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."student_table_id_seq"', 207, true);


--
-- Name: transaction_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."transaction_table_id_seq"', 15, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict H8FqCntsqmiZRgwsdnJ5ManidNdly925HaL4YBcpVwrJTAODI5zTTLPUzIoUamG

RESET ALL;
