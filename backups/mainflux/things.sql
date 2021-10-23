--
-- PostgreSQL database dump
--

-- Dumped from database version 10.8
-- Dumped by pg_dump version 10.8

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: channels; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.channels (
    id uuid NOT NULL,
    owner character varying(254) NOT NULL,
    name character varying(1024),
    metadata jsonb
);


ALTER TABLE public.channels OWNER TO mainflux;

--
-- Name: connections; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.connections (
    channel_id uuid NOT NULL,
    channel_owner character varying(254) NOT NULL,
    thing_id uuid NOT NULL,
    thing_owner character varying(254) NOT NULL
);


ALTER TABLE public.connections OWNER TO mainflux;

--
-- Name: gorp_migrations; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.gorp_migrations (
    id text NOT NULL,
    applied_at timestamp with time zone
);


ALTER TABLE public.gorp_migrations OWNER TO mainflux;

--
-- Name: things; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.things (
    id uuid NOT NULL,
    owner character varying(254) NOT NULL,
    key character varying(4096) NOT NULL,
    name character varying(1024),
    metadata jsonb
);


ALTER TABLE public.things OWNER TO mainflux;

--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.channels (id, owner, name, metadata) FROM stdin;
3a4e4e2c-b4b4-4272-8c5f-5576f63c07be	demo@freomap.com	Demo	\N
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	El Castillo	\N
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	Cosufi-LaVizcachera	{"lora": {"appID": "4"}}
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	LaBelcha	{"lora": {"appID": "1"}, "type": "lora"}
6482e317-853b-4fa7-bbd3-dbff09980b0e	laboratorio@freomap.com.ar	test_variable_channel	{"lora": {"appID": "3"}}
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	Loma_Alta_new	{"lora": {"appID": "2"}}
0bc3c8da-e82b-4166-a504-6b73af32c8cc	laboratorio@freomap.com.ar	laboratorio	{"lora": {"appID": "7"}}
e16929ec-d1d1-485b-80a6-f9a13b573644	laadela@freomap.com.ar	LaAdela	\N
8c1e07ea-7a5a-4a11-88a9-eda9fe6c365f	gralroca@freomap.com	General Roca	\N
\.


--
-- Data for Name: connections; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.connections (channel_id, channel_owner, thing_id, thing_owner) FROM stdin;
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	0d7bc0ad-3509-44a5-a673-73ced42080a6	vidallomaalta@freomap.com.ar
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	c44051b8-e388-4300-8abc-140973bb2b47	rang@freomap.com
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	171c3733-743f-4bf8-8c17-96fe3001e022	vidallomaalta@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	1f0f1d54-e1bc-4cef-863c-3c384a086942	vidallomaalta@freomap.com.ar
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	5885a527-c716-4431-850f-aa929501452a	rang@freomap.com
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	639d620f-aded-4f0c-a7d7-22be12c21da7	rang@freomap.com
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	dbde930f-0f9e-4bc8-af6c-ad36da1035be	rang@freomap.com
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	45a959ee-cc83-43e7-aa19-c5cc2f25a290	vidallomaalta@freomap.com.ar
3a4e4e2c-b4b4-4272-8c5f-5576f63c07be	demo@freomap.com	684977c0-c03b-47a1-a687-2fbffcb275f5	demo@freomap.com
3a4e4e2c-b4b4-4272-8c5f-5576f63c07be	demo@freomap.com	6bd73608-5309-4342-8357-e419a9286422	demo@freomap.com
3a4e4e2c-b4b4-4272-8c5f-5576f63c07be	demo@freomap.com	94ea4be9-3476-458a-a101-89c4464e0149	demo@freomap.com
3a4e4e2c-b4b4-4272-8c5f-5576f63c07be	demo@freomap.com	d7070e3c-a63f-40d1-84b5-8513184dad1e	demo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	09bce8f1-4dad-42fa-b2fb-677c940992cf	elcastillo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	47e419e8-aa1a-41e5-9d7d-3bd000833676	elcastillo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	5c7a3569-4730-4c65-a553-cf8af1335bf3	elcastillo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	8f39b1a8-1cd9-45e5-af87-c89ff6e7324d	elcastillo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	e0ee6db1-c5c6-41e9-b51d-b51a87d4114a	elcastillo@freomap.com
4b7a99bf-4731-48aa-beb6-b05a3d7f3a5a	elcastillo@freomap.com	f206f9fc-85e1-467f-a97f-b1e32c7e443d	elcastillo@freomap.com
20e2ebb3-f503-4ab5-97fb-2fd260843405	rang@freomap.com	3038a28b-c349-4b4c-943a-0f6584301341	rang@freomap.com
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	9db73ee6-3145-4d00-8aad-437c60ee30e8	vidallomaalta@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	c3ef5351-6215-4e35-a31c-44081ed3292c	vidallomaalta@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	9538781d-f296-48a5-b14b-458d54cf38dc	vidallomaalta@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	891188b0-3a17-44d3-a33c-cf19b8fbad11	vidallomaalta@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	9bea7cce-8325-44e8-920b-0d8a46ae788e	vidallomaalta@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	cc942bc9-0920-4549-be74-1184e96c3273	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	b891c0b6-eba1-4d2c-9caa-7d3cb9c40b97	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	537deefd-cb8c-43a3-928e-d90ec84aca74	cosufilavizcachera@freomap.com.ar
0bc3c8da-e82b-4166-a504-6b73af32c8cc	laboratorio@freomap.com.ar	b78ef8b4-0791-4d67-a13c-dc78e22ac18c	laboratorio@freomap.com.ar
0bc3c8da-e82b-4166-a504-6b73af32c8cc	laboratorio@freomap.com.ar	743ced78-3acd-45e9-a8ea-8d7b00502506	laboratorio@freomap.com.ar
e16929ec-d1d1-485b-80a6-f9a13b573644	laadela@freomap.com.ar	76e9d2a1-4eff-4daa-bb50-8ec9131336b6	laadela@freomap.com.ar
bae9e358-7e56-476b-9f2a-6e28de7a267e	vidallomaalta@freomap.com.ar	735d3933-3a09-407b-afcd-fb1583264d3b	vidallomaalta@freomap.com.ar
0bc3c8da-e82b-4166-a504-6b73af32c8cc	laboratorio@freomap.com.ar	e3e18f3c-1e7b-40a7-84d8-4388bac2c932	laboratorio@freomap.com.ar
8c1e07ea-7a5a-4a11-88a9-eda9fe6c365f	gralroca@freomap.com	1e1a4d6c-4588-48ed-a045-abfd66992e10	gralroca@freomap.com
8c1e07ea-7a5a-4a11-88a9-eda9fe6c365f	gralroca@freomap.com	35411094-117e-4327-a6f9-42d03d97b1ab	gralroca@freomap.com
8c1e07ea-7a5a-4a11-88a9-eda9fe6c365f	gralroca@freomap.com	4ab7613a-b4f0-4bbc-aa86-f0de73a35f74	gralroca@freomap.com
8c1e07ea-7a5a-4a11-88a9-eda9fe6c365f	gralroca@freomap.com	67de9c08-37ff-413d-9d9f-991df019c122	gralroca@freomap.com
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	938eeb79-4f3d-45c5-8acf-61009e00d075	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	21681f4a-dfa5-41be-b4ff-9e4cf9e16d6d	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	24545666-8536-4251-8884-eb96b6d01d84	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	34f365cb-5e4d-4b34-9559-f4ab5b3c5fa5	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	35e06b7b-46ed-4f73-8fc6-203497bd34e9	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	489e72eb-98b4-4d8f-ba46-0bf4c3da7510	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	5d159952-faaa-4ae6-8a5f-49f7e1c87d1b	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	7304cca6-587c-4825-a8eb-c973738a3707	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	74ebc685-d7c7-4b35-81d4-e1486d27225b	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	780afbb2-e150-4e8f-bb67-2061eb635c90	cosufilavizcachera@freomap.com.ar
39fbf1db-e52f-4e73-8c2c-6aacc2a0475c	cosufilavizcachera@freomap.com.ar	3543b5be-4006-49a4-ae64-1c20db573e60	cosufilavizcachera@freomap.com.ar
6482e317-853b-4fa7-bbd3-dbff09980b0e	laboratorio@freomap.com.ar	38b351b9-5dd2-4f21-a5ea-3b3c405428a7	laboratorio@freomap.com.ar
\.


--
-- Data for Name: gorp_migrations; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.gorp_migrations (id, applied_at) FROM stdin;
things_1	2020-02-20 21:14:05.415696+00
things_2	2020-02-20 21:14:06.066738+00
things_3	2020-02-20 21:14:06.391292+00
\.


--
-- Data for Name: things; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.things (id, owner, key, name, metadata) FROM stdin;
47e419e8-aa1a-41e5-9d7d-3bd000833676	elcastillo@freomap.com	799e2590-5656-4c7e-ac51-2b5bf393335a	freat 4	{}
e0ee6db1-c5c6-41e9-b51d-b51a87d4114a	elcastillo@freomap.com	a15b003b-3070-4934-8fa9-fd1e73ff076b	freat 5	{}
f206f9fc-85e1-467f-a97f-b1e32c7e443d	elcastillo@freomap.com	82589ab0-e27e-41fc-9de0-5c089c654dd1	freat 6	{}
09bce8f1-4dad-42fa-b2fb-677c940992cf	elcastillo@freomap.com	1352ee76-5da9-4964-abcf-80a895d88566	freat 1	{}
3038a28b-c349-4b4c-943a-0f6584301341	rang@freomap.com	f4055c6b-0bc7-49cd-af57-f3b8e84c978d	cen_meteo	{}
21681f4a-dfa5-41be-b4ff-9e4cf9e16d6d	cosufilavizcachera@freomap.com.ar	456451c4-d3cb-4f62-bc5f-1713984074e3	Freat9	{"lora": {"devEUI": "a8404191b1828b43"}}
24545666-8536-4251-8884-eb96b6d01d84	cosufilavizcachera@freomap.com.ar	e62a0707-a559-4d61-95a4-377b82dcf0b7	Freat7	{"lora": {"devEUI": "a84041e8f1828b3b"}}
9db73ee6-3145-4d00-8aad-437c60ee30e8	vidallomaalta@freomap.com.ar	2e17050a-7896-4228-a735-75258e356f24	Freat 6	{"lora": {"devEUI": "a8404124a1823ff2"}}
94ea4be9-3476-458a-a101-89c4464e0149	demo@freomap.com	f3f2b229-2226-465a-ae5d-8e3c18b2a156	Nodo_1	{}
684977c0-c03b-47a1-a687-2fbffcb275f5	demo@freomap.com	476f7f13-325a-44bc-86a4-5de76f6afa10	Nodo_2	{}
6bd73608-5309-4342-8357-e419a9286422	demo@freomap.com	f99738d0-6b32-4fb0-848f-8d7a07cee9f0	Nodo_3	{}
d7070e3c-a63f-40d1-84b5-8513184dad1e	demo@freomap.com	b524f421-0d6d-44b3-b31d-3b154a73a705	Nodo_4	{}
7304cca6-587c-4825-a8eb-c973738a3707	cosufilavizcachera@freomap.com.ar	8063e212-1f41-4296-95fa-4ee87a9b2130	Freat12	{"lora": {"devEUI": "a84041c791828b46"}}
3543b5be-4006-49a4-ae64-1c20db573e60	cosufilavizcachera@freomap.com.ar	0182bb5f-210c-4083-97c0-59e229fbb292	Freat13	{"lora": {"devEUI": "a840414d31824000"}}
5c7a3569-4730-4c65-a553-cf8af1335bf3	elcastillo@freomap.com	77a44f71-7c3b-47d0-a642-575f217feeeb	freat 2	{}
8f39b1a8-1cd9-45e5-af87-c89ff6e7324d	elcastillo@freomap.com	0e2ef841-7a87-41f9-8f62-138358d93503	freat 3	{}
171c3733-743f-4bf8-8c17-96fe3001e022	vidallomaalta@freomap.com.ar	04a31936-e659-4558-bff5-f0ae76f18a22	Freat 3	{"lora": {"devEUI": "a840418511828b45"}}
9bea7cce-8325-44e8-920b-0d8a46ae788e	vidallomaalta@freomap.com.ar	a16dbaf1-cfba-4000-9de5-a4734726bf4b	Freat 10	{"lora": {"devEUI": "a840410001818890"}}
735d3933-3a09-407b-afcd-fb1583264d3b	vidallomaalta@freomap.com.ar	60e2cacd-d8ce-4daa-b8b8-332064920819	Freat 7	{"lora": {"devEUI": "a84041000181ad62"}}
99e74627-153a-4975-be07-549e67962d77	vidallomaalta@freomap.com.ar	f8cd31ca-43ff-4d0f-b3e3-37fe0d88d5d4	Test4-freat2	{"lora": {"devEUI": "a84041bb21823ff8"}}
c3ef5351-6215-4e35-a31c-44081ed3292c	vidallomaalta@freomap.com.ar	4a112f28-0050-49c1-b952-c519f1dfb471	Freat 5	{"lora": {"devEUI": "a84041d421823ffa"}}
489e72eb-98b4-4d8f-ba46-0bf4c3da7510	cosufilavizcachera@freomap.com.ar	604ff18a-a845-41df-ab39-f49ea0470eb2	Freat3	{"lora": {"devEUI": "a84041ca71828b47"}}
891188b0-3a17-44d3-a33c-cf19b8fbad11	vidallomaalta@freomap.com.ar	36d73107-400f-4112-9eae-b07efd7f33c8	Freat 2	{"lora": {"devEUI": "a840417721823ffb"}}
f8e7184a-5eda-435c-9eda-87d938f1b884	vidallomaalta@freomap.com.ar	ab4db061-47b7-4a7f-adc4-29091d74fc88	Freat 1	{"lora": {"devEUI": "a84041f291832aed"}}
0d7bc0ad-3509-44a5-a673-73ced42080a6	vidallomaalta@freomap.com.ar	aba352fc-354a-428d-838a-ecc1957987bb	Freat 9	{"lora": {"devEUI": "a840417e81832af0"}}
1f0f1d54-e1bc-4cef-863c-3c384a086942	vidallomaalta@freomap.com.ar	aff4494f-142e-406a-8dff-483129f8d93b	Freat 8	{"lora": {"devEUI": "a84041c451823ff4"}}
cc942bc9-0920-4549-be74-1184e96c3273	cosufilavizcachera@freomap.com.ar	6ebdafb7-b980-4197-8c0b-efc56e4c7079	Freat14	{"lora": {"devEUI": "a8404113a1828b44"}}
5d159952-faaa-4ae6-8a5f-49f7e1c87d1b	cosufilavizcachera@freomap.com.ar	63ae79be-359e-4a61-aff8-f7fbf49d5388	Freat5	{"lora": {"devEUI": "a84041c7d1828b3f"}}
780afbb2-e150-4e8f-bb67-2061eb635c90	cosufilavizcachera@freomap.com.ar	4e392487-385c-4b2c-b6f6-e9548ceba796	Freat6	{"lora": {"devEUI": "a840413531828b49"}}
45a959ee-cc83-43e7-aa19-c5cc2f25a290	vidallomaalta@freomap.com.ar	b319cf52-b916-44c4-9a98-1df33d840a75	Freat 4	{"lora": {"devEUI": "a84041c321832af8"}}
9538781d-f296-48a5-b14b-458d54cf38dc	vidallomaalta@freomap.com.ar	e246d334-b34b-4357-9d8e-2515e8d424cf	cen_meteo	{}
5885a527-c716-4431-850f-aa929501452a	rang@freomap.com	06df9aa4-528f-4e39-bc12-353bb7c6f295	Nodo_3	{"lora": {"devEUI": "a84041cce1823ffd"}}
7a5d3675-646d-4589-a37e-364bd056e686	vidallomaalta@freomap.com.ar	a9b16ba6-9071-4ad0-8675-13b71f731645	Nodo9	{"lora": {"devEUI": "a840417e81832af0"}}
b891c0b6-eba1-4d2c-9caa-7d3cb9c40b97	cosufilavizcachera@freomap.com.ar	98a5f497-df32-4a24-b4cf-6098c0e833a3	Freat10	{"lora": {"devEUI": "a840414dc1823ff3"}}
938eeb79-4f3d-45c5-8acf-61009e00d075	cosufilavizcachera@freomap.com.ar	bd1614c2-30f3-4bb2-88ea-398e8f2b9824	Freat4	{"lora": {"devEUI": "a84041dec1828b39"}}
537deefd-cb8c-43a3-928e-d90ec84aca74	cosufilavizcachera@freomap.com.ar	baa81186-55b2-465e-80a4-0e6d12a75a3c	Freat8	{"lora": {"devEUI": "a840414ea1828b3c"}}
74ebc685-d7c7-4b35-81d4-e1486d27225b	cosufilavizcachera@freomap.com.ar	49d8ec8b-8f87-4e4d-bf9b-ffe8370e3233	Freat1	{"lora": {"devEUI": "a8404149b1828b38"}}
c44051b8-e388-4300-8abc-140973bb2b47	rang@freomap.com	e2005ca5-e05c-4a24-a583-fdba9b8a77ea	Nodo_2	{"lora": {"devEUI": "a840417441828b41"}}
35e06b7b-46ed-4f73-8fc6-203497bd34e9	cosufilavizcachera@freomap.com.ar	278662d0-e957-4712-a3bf-6db74c097e7d	Freat2	{"lora": {"devEUI": "a840413971823fff"}}
dbde930f-0f9e-4bc8-af6c-ad36da1035be	rang@freomap.com	a2611287-a2e4-498f-97fa-d1da00cd2307	Nodo_1	{"lora": {"devEUI": "a84041e311828b37"}}
639d620f-aded-4f0c-a7d7-22be12c21da7	rang@freomap.com	318e3c71-c508-449b-9455-8cb748c0c4e1	Nodo_4	{"lora": {"devEUI": "a840412581828b3d"}}
34f365cb-5e4d-4b34-9559-f4ab5b3c5fa5	cosufilavizcachera@freomap.com.ar	185ec89b-5c7b-4173-9c0d-15ab8afbec1f	Freat11	{"lora": {"devEUI": "a840415571828b40"}}
38b351b9-5dd2-4f21-a5ea-3b3c405428a7	laboratorio@freomap.com.ar	a8ac3ff7-0044-4073-beef-637e5c1713c7	test_nodo_variable	{"lora": {"devEUI": "1234567891234567"}}
b78ef8b4-0791-4d67-a13c-dc78e22ac18c	laboratorio@freomap.com.ar	01a2b7fa-e4ec-4e2d-8670-ce9250d564a5	test_estabilidad_medicion	{"lora": {"devEUI": "a8404159d1823ffc"}}
76e9d2a1-4eff-4daa-bb50-8ec9131336b6	laadela@freomap.com.ar	7e2d9aae-f0c8-428c-b384-2c178aaeb957	CentralMeteo	{}
743ced78-3acd-45e9-a8ea-8d7b00502506	laboratorio@freomap.com.ar	3c27b50d-443b-40b4-80af-2d713df2b57e	test_estabilidad_medición2	{"lora": {"devEUI": "a840412221832af4"}}
e3e18f3c-1e7b-40a7-84d8-4388bac2c932	laboratorio@freomap.com.ar	2b5719be-c089-4cc1-9797-bec01bdf31e6	test_estabilidad_medicion_campomod	{"lora": {"devEUI": "a84041c121832afa"}}
1e1a4d6c-4588-48ed-a045-abfd66992e10	gralroca@freomap.com	31426b84-4c8b-488c-8ff3-f8335a5a6620	F1	{}
35411094-117e-4327-a6f9-42d03d97b1ab	gralroca@freomap.com	c9520efa-6242-4571-853c-bad72d82aefd	F2	{}
4ab7613a-b4f0-4bbc-aa86-f0de73a35f74	gralroca@freomap.com	787b6410-fe2b-41cb-871d-645ce62da827	F3	{}
67de9c08-37ff-413d-9d9f-991df019c122	gralroca@freomap.com	3f0fbeb8-0236-4c47-b795-2e586ceb7406	F4	{}
\.


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id, owner);


--
-- Name: connections connections_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_pkey PRIMARY KEY (channel_id, channel_owner, thing_id, thing_owner);


--
-- Name: gorp_migrations gorp_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.gorp_migrations
    ADD CONSTRAINT gorp_migrations_pkey PRIMARY KEY (id);


--
-- Name: things things_key_key; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.things
    ADD CONSTRAINT things_key_key UNIQUE (key);


--
-- Name: things things_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.things
    ADD CONSTRAINT things_pkey PRIMARY KEY (id, owner);


--
-- Name: connections connections_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_channel_id_fkey FOREIGN KEY (channel_id, channel_owner) REFERENCES public.channels(id, owner) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: connections connections_thing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_thing_id_fkey FOREIGN KEY (thing_id, thing_owner) REFERENCES public.things(id, owner) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

