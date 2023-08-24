--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
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
-- Name: Dueno; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public."Dueno" (
    id integer NOT NULL,
    "Nombre" character varying(255) NOT NULL,
    "Edad" integer NOT NULL,
    "Sexo" character varying(255) NOT NULL
);


ALTER TABLE public."Dueno" OWNER TO alan;

--
-- Name: Dueno_Perros; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public."Dueno_Perros" (
    id integer NOT NULL,
    "Dueno_id" integer NOT NULL,
    "Perro_id" integer NOT NULL
);


ALTER TABLE public."Dueno_Perros" OWNER TO alan;

--
-- Name: Perro; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public."Perro" (
    id integer NOT NULL,
    "Nombre" character varying(255) NOT NULL,
    "Raza" character varying(255) NOT NULL,
    "Color" character varying(255) NOT NULL,
    "Edad" smallint NOT NULL
);


ALTER TABLE public."Perro" OWNER TO alan;

--
-- Name: Perro_Vacunas; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public."Perro_Vacunas" (
    id integer NOT NULL,
    "Perro_id" integer NOT NULL,
    "Vacuna_id" integer NOT NULL
);


ALTER TABLE public."Perro_Vacunas" OWNER TO alan;

--
-- Name: Vacuna; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public."Vacuna" (
    id integer NOT NULL,
    "Fecha" date,
    "NombreVacuna" character varying(255)
);


ALTER TABLE public."Vacuna" OWNER TO alan;

--
-- Data for Name: Dueno; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public."Dueno" (id, "Nombre", "Edad", "Sexo") FROM stdin;
1	Camila	47	F
2	Pedro	34	M
3	Jose	24	M
4	Esteban	67	M
5	Josefa	26	F
\.


--
-- Data for Name: Dueno_Perros; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public."Dueno_Perros" (id, "Dueno_id", "Perro_id") FROM stdin;
1	1	5
2	2	1
3	3	2
4	4	3
5	5	4
\.


--
-- Data for Name: Perro; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public."Perro" (id, "Nombre", "Raza", "Color", "Edad") FROM stdin;
1	Manchas	Canino	Cafe	3
2	Michi	Felino	Negro	2
3	Toby	Canino	Blanco	4
4	Tom	Felino	Gris	1
5	Felix	Felino	Blanco-Negro	3
\.


--
-- Data for Name: Perro_Vacunas; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public."Perro_Vacunas" (id, "Perro_id", "Vacuna_id") FROM stdin;
1	1	2
2	2	5
3	3	1
4	4	3
5	5	4
\.


--
-- Data for Name: Vacuna; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public."Vacuna" (id, "Fecha", "NombreVacuna") FROM stdin;
1	2022-01-01	Antirrabica
2	2022-06-17	Parvovirus
3	2023-08-09	Sextuple
4	2023-08-23	Octuple
5	2023-06-20	Desparasitaci├│n
\.


--
-- Name: Dueno_Perros Dueno_Perros_pkey; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Dueno_Perros"
    ADD CONSTRAINT "Dueno_Perros_pkey" PRIMARY KEY (id);


--
-- Name: Dueno Due├▒o_pkey; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Dueno"
    ADD CONSTRAINT "Due├▒o_pkey" PRIMARY KEY (id);


--
-- Name: Perro_Vacunas Perro_Vacunas_pkey; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Perro_Vacunas"
    ADD CONSTRAINT "Perro_Vacunas_pkey" PRIMARY KEY (id);


--
-- Name: Perro Perro_pkey; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Perro"
    ADD CONSTRAINT "Perro_pkey" PRIMARY KEY (id);


--
-- Name: Vacuna Vacuna_pkey; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Vacuna"
    ADD CONSTRAINT "Vacuna_pkey" PRIMARY KEY (id);


--
-- Name: Dueno_Perros Dueno_id; Type: FK CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Dueno_Perros"
    ADD CONSTRAINT "Dueno_id" FOREIGN KEY ("Dueno_id") REFERENCES public."Dueno"(id);


--
-- Name: Perro_Vacunas PV_Perro_id; Type: FK CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Perro_Vacunas"
    ADD CONSTRAINT "PV_Perro_id" FOREIGN KEY ("Perro_id") REFERENCES public."Perro"(id);


--
-- Name: Perro_Vacunas PV_Vacuna_id; Type: FK CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Perro_Vacunas"
    ADD CONSTRAINT "PV_Vacuna_id" FOREIGN KEY ("Vacuna_id") REFERENCES public."Vacuna"(id);


--
-- Name: Dueno_Perros Perro_id; Type: FK CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public."Dueno_Perros"
    ADD CONSTRAINT "Perro_id" FOREIGN KEY ("Perro_id") REFERENCES public."Perro"(id);


--
-- PostgreSQL database dump complete
--

