--
-- PostgreSQL database dump
--

\restrict dU7KIVUilo2DXdiNYUgL5bVlQf4XfbiEx2zS2JvlQQmUeOTJYa2Mwecey7H35w4

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

INSERT INTO public.clientes (id, nombre, correo, nodo_origen, creado_en) VALUES ('22222222-2222-4222-8222-222222222222', 'Cliente creado en BD2', NULL, 'bd2', '2026-11-03 21:06:23.759042+00') ON CONFLICT DO NOTHING;


--
-- PostgreSQL database dump complete
--

\unrestrict dU7KIVUilo2DXdiNYUgL5bVlQf4XfbiEx2zS2JvlQQmUeOTJYa2Mwecey7H35w4

