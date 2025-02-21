--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-21 12:01:31

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
-- TOC entry 4878 (class 0 OID 16408)
-- Dependencies: 223
-- Data for Name: Categoria; Type: TABLE DATA; Schema: public; Owner: pomodoro
--

INSERT INTO public."Categoria" VALUES (1, 'ULima');
INSERT INTO public."Categoria" VALUES (2, 'Freelance');
INSERT INTO public."Categoria" VALUES (3, 'Personal');


--
-- TOC entry 4876 (class 0 OID 16401)
-- Dependencies: 221
-- Data for Name: Proyecto; Type: TABLE DATA; Schema: public; Owner: pomodoro
--

INSERT INTO public."Proyecto" VALUES (1, 'Project Alpha', 10, 2, 2);
INSERT INTO public."Proyecto" VALUES (2, 'Project Beta', 15, 1, 0);
INSERT INTO public."Proyecto" VALUES (3, 'Project Gamma', 20, 1, 0);
INSERT INTO public."Proyecto" VALUES (4, 'Project Delta', 12, 2, 1);
INSERT INTO public."Proyecto" VALUES (5, 'Project Epsilon', 18, 1, 0);
INSERT INTO public."Proyecto" VALUES (6, 'Project Zeta', 22, 3, 2);


--
-- TOC entry 4874 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: pomodoro
--

INSERT INTO public."Usuario" VALUES (1, 'Edgar Vargas', 'edgar', '123456', true);


--
-- TOC entry 4880 (class 0 OID 16420)
-- Dependencies: 225
-- Data for Name: ProyectoXUsuario; Type: TABLE DATA; Schema: public; Owner: pomodoro
--



--
-- TOC entry 4872 (class 0 OID 16386)
-- Dependencies: 217
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: pomodoro
--

INSERT INTO public."SequelizeMeta" VALUES ('20250211165001-create-usuario.js');
INSERT INTO public."SequelizeMeta" VALUES ('20250211171741-estado_en_usuario.js');
INSERT INTO public."SequelizeMeta" VALUES ('20250212162143-create-proyecto.js');
INSERT INTO public."SequelizeMeta" VALUES ('20250218154810-create-categoria.js');
INSERT INTO public."SequelizeMeta" VALUES ('20250219162801-create-proyecto-x-usuario.js');


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 222
-- Name: Categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pomodoro
--

SELECT pg_catalog.setval('public."Categoria_id_seq"', 3, true);


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 224
-- Name: ProyectoXUsuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pomodoro
--

SELECT pg_catalog.setval('public."ProyectoXUsuario_id_seq"', 1, false);


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 220
-- Name: Proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pomodoro
--

SELECT pg_catalog.setval('public."Proyecto_id_seq"', 6, true);


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pomodoro
--

SELECT pg_catalog.setval('public."Usuario_id_seq"', 1, true);


-- Completed on 2025-02-21 12:01:31

--
-- PostgreSQL database dump complete
--

