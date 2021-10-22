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
-- Name: keys; Type: TABLE; Schema: public; Owner: mainflux
--

CREATE TABLE public.keys (
    id uuid NOT NULL,
    type smallint,
    issuer character varying(254) NOT NULL,
    issued_at timestamp without time zone NOT NULL,
    expires_at timestamp without time zone
);


ALTER TABLE public.keys OWNER TO mainflux;

--
-- Data for Name: gorp_migrations; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.gorp_migrations (id, applied_at) FROM stdin;
authn	2020-02-20 21:14:07.187865+00
\.


--
-- Data for Name: keys; Type: TABLE DATA; Schema: public; Owner: mainflux
--

COPY public.keys (id, type, issuer, issued_at, expires_at) FROM stdin;
\.


--
-- Name: gorp_migrations gorp_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.gorp_migrations
    ADD CONSTRAINT gorp_migrations_pkey PRIMARY KEY (id);


--
-- Name: keys keys_pkey; Type: CONSTRAINT; Schema: public; Owner: mainflux
--

ALTER TABLE ONLY public.keys
    ADD CONSTRAINT keys_pkey PRIMARY KEY (id, issuer);


--
-- PostgreSQL database dump complete
--

