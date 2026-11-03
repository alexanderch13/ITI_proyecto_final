--
-- PostgreSQL database dump
--

\restrict eN9OGJKAMSNIBRgkhWd74NcxI0c5hehQ7ilqjXlaBtnAfOq8CRMVzsecLi012xq

-- Dumped from database version 17.11 (Debian 17.11-1.pgdg12+2)
-- Dumped by pg_dump version 17.11 (Debian 17.11-1.pgdg12+2)

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
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientes (id, nombre, correo, nodo_origen, creado_en) VALUES ('11111111-1111-4111-8111-111111111111', 'Cliente creado en BD1', NULL, 'bd1', '2026-11-03 21:06:15.403473+00') ON CONFLICT DO NOTHING;


--
-- PostgreSQL database dump complete
--

\unrestrict eN9OGJKAMSNIBRgkhWd74NcxI0c5hehQ7ilqjXlaBtnAfOq8CRMVzsecLi012xq

