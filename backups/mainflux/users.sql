Password: 
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
-- Name: gorp_migrations; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.gorp_migrations (
    id text NOT NULL,
    applied_at timestamp with time zone
);


ALTER TABLE public.gorp_migrations OWNER TO mainflux;

--
-- Name: users; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.users (
    email character varying(254) NOT NULL,
    password character(60) NOT NULL,
    metadata jsonb
);


ALTER TABLE public.users OWNER TO mainflux;

--
-- Data for Name: gorp_migrations; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.gorp_migrations (id, applied_at) FROM stdin;
users_1	2020-02-20 21:14:00.942958+00
users_2	2020-02-20 21:14:01.834832+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.users (email, password, metadata) FROM stdin;
rang@freomap.com	$2a$10$9yBMtR0pmwrt9i8nnqknGu.0z8HK6G3WIDtXxCauRCSwD37KP1hwm	\N
demo@freomap.com	$2a$10$UTHM6bhuVKMVcYnokI7fFOO.1Nj5MX.rdpbaZC4DdtshZJtiMLT2i	\N
elcastillo@freomap.com	$2a$10$s7vod6v/0waXuR.yAn0ckOgUi67uv7f4X3hMoYXVQjeB/YwDJ0VVS	\N
vidallomaalta@freomap.com.ar	$2a$10$VQuEaxokWYPcxwiLRo5A4uM3ivVVQ.KKPVp996Qfr94bzg4wZK4sa	\N
cosufilavizcachera@freomap.com.ar	$2a$10$8n6QbtL4ev0WG8nVXHwSOecdPalVZg/TCX8s4DTYCepyTu.8ujUoW	\N
laboratorio@freomap.com.ar	$2a$10$IJnr6XY6CorW5RczAhwSNO/nt7jSjz/nX26blSN.Y9xK2.J9gkuSm	\N
laadela@freomap.com.ar	$2a$10$ZjXcF93xQWyqzc3IsTXWqekjLDKM8zAZvQh4spvlbkGUFtPkTE9g2	\N
mj@freomap.com	$2a$10$4iE5eC6493OXb19nPfLjM.KaSiix9uVxmwLtdgPxKHZv8zKUi10Dy	\N
gralroca@freomap.com	$2a$10$qIvgBrwN2nfKev0GMe2atOjgk8KRf7LUKMw1NcRq3T3mCmFk02kda	\N
\.


--
-- Name: gorp_migrations gorp_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.gorp_migrations
    ADD CONSTRAINT gorp_migrations_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- PostgreSQL database dump complete
--

