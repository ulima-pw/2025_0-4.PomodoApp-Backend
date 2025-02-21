--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-21 11:59:27

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16408)
-- Name: Categoria; Type: TABLE; Schema: public; Owner: pomodoro
--

CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public."Categoria" OWNER TO pomodoro;

--
-- TOC entry 222 (class 1259 OID 16407)
-- Name: Categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: pomodoro
--

CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categoria_id_seq" OWNER TO pomodoro;

--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 222
-- Name: Categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pomodoro
--

ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;


--
-- TOC entry 221 (class 1259 OID 16401)
-- Name: Proyecto; Type: TABLE; Schema: public; Owner: pomodoro
--

CREATE TABLE public."Proyecto" (
    id integer NOT NULL,
    nombre character varying(255),
    nro_pom integer,
    "categoriaId" integer,
    status integer
);


ALTER TABLE public."Proyecto" OWNER TO pomodoro;

--
-- TOC entry 225 (class 1259 OID 16420)
-- Name: ProyectoXUsuario; Type: TABLE; Schema: public; Owner: pomodoro
--

CREATE TABLE public."ProyectoXUsuario" (
    id integer NOT NULL,
    "proyectoId" integer,
    "usuarioId" integer,
    rol integer
);


ALTER TABLE public."ProyectoXUsuario" OWNER TO pomodoro;

--
-- TOC entry 224 (class 1259 OID 16419)
-- Name: ProyectoXUsuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pomodoro
--

CREATE SEQUENCE public."ProyectoXUsuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProyectoXUsuario_id_seq" OWNER TO pomodoro;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 224
-- Name: ProyectoXUsuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pomodoro
--

ALTER SEQUENCE public."ProyectoXUsuario_id_seq" OWNED BY public."ProyectoXUsuario".id;


--
-- TOC entry 220 (class 1259 OID 16400)
-- Name: Proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: pomodoro
--

CREATE SEQUENCE public."Proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Proyecto_id_seq" OWNER TO pomodoro;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 220
-- Name: Proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pomodoro
--

ALTER SEQUENCE public."Proyecto_id_seq" OWNED BY public."Proyecto".id;


--
-- TOC entry 217 (class 1259 OID 16386)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: pomodoro
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO pomodoro;

--
-- TOC entry 219 (class 1259 OID 16392)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: pomodoro
--

CREATE TABLE public."Usuario" (
    id integer NOT NULL,
    nombre character varying(255),
    username character varying(255),
    password character varying(255),
    estado boolean
);


ALTER TABLE public."Usuario" OWNER TO pomodoro;

--
-- TOC entry 218 (class 1259 OID 16391)
-- Name: Usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pomodoro
--

CREATE SEQUENCE public."Usuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Usuario_id_seq" OWNER TO pomodoro;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pomodoro
--

ALTER SEQUENCE public."Usuario_id_seq" OWNED BY public."Usuario".id;


--
-- TOC entry 4716 (class 2604 OID 16411)
-- Name: Categoria id; Type: DEFAULT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);


--
-- TOC entry 4715 (class 2604 OID 16404)
-- Name: Proyecto id; Type: DEFAULT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Proyecto" ALTER COLUMN id SET DEFAULT nextval('public."Proyecto_id_seq"'::regclass);


--
-- TOC entry 4717 (class 2604 OID 16423)
-- Name: ProyectoXUsuario id; Type: DEFAULT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."ProyectoXUsuario" ALTER COLUMN id SET DEFAULT nextval('public."ProyectoXUsuario_id_seq"'::regclass);


--
-- TOC entry 4714 (class 2604 OID 16395)
-- Name: Usuario id; Type: DEFAULT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Usuario" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_id_seq"'::regclass);


--
-- TOC entry 4725 (class 2606 OID 16413)
-- Name: Categoria Categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);


--
-- TOC entry 4727 (class 2606 OID 16425)
-- Name: ProyectoXUsuario ProyectoXUsuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."ProyectoXUsuario"
    ADD CONSTRAINT "ProyectoXUsuario_pkey" PRIMARY KEY (id);


--
-- TOC entry 4723 (class 2606 OID 16406)
-- Name: Proyecto Proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Proyecto"
    ADD CONSTRAINT "Proyecto_pkey" PRIMARY KEY (id);


--
-- TOC entry 4719 (class 2606 OID 16390)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 4721 (class 2606 OID 16399)
-- Name: Usuario Usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY (id);


--
-- TOC entry 4729 (class 2606 OID 16426)
-- Name: ProyectoXUsuario FK_PROYECTOXUSUARIO_PROYECTO; Type: FK CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."ProyectoXUsuario"
    ADD CONSTRAINT "FK_PROYECTOXUSUARIO_PROYECTO" FOREIGN KEY ("proyectoId") REFERENCES public."Proyecto"(id);


--
-- TOC entry 4730 (class 2606 OID 16431)
-- Name: ProyectoXUsuario FK_PROYECTOXUSUARIO_USUARIO; Type: FK CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."ProyectoXUsuario"
    ADD CONSTRAINT "FK_PROYECTOXUSUARIO_USUARIO" FOREIGN KEY ("usuarioId") REFERENCES public."Usuario"(id);


--
-- TOC entry 4728 (class 2606 OID 16414)
-- Name: Proyecto FK_PROYECTO_CATEGORIA; Type: FK CONSTRAINT; Schema: public; Owner: pomodoro
--

ALTER TABLE ONLY public."Proyecto"
    ADD CONSTRAINT "FK_PROYECTO_CATEGORIA" FOREIGN KEY ("categoriaId") REFERENCES public."Categoria"(id);


-- Completed on 2025-02-21 11:59:28

--
-- PostgreSQL database dump complete
--

