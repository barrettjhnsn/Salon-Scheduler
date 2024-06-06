--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    "time" character varying(50),
    service_id integer,
    customer_id integer
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(20),
    name character varying(50)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, '1055', 1, 43);
INSERT INTO public.appointments VALUES (2, '2030', 1, 51);
INSERT INTO public.appointments VALUES (69, '', 1, 17);
INSERT INTO public.appointments VALUES (137, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (138, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (8, '', 1, 17);
INSERT INTO public.appointments VALUES (139, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (140, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (74, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (141, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (77, '', 1, 17);
INSERT INTO public.appointments VALUES (15, '', 1, 17);
INSERT INTO public.appointments VALUES (82, '10:30', 3, 91);
INSERT INTO public.appointments VALUES (22, '1030', 1, 64);
INSERT INTO public.appointments VALUES (85, '', 1, 17);
INSERT INTO public.appointments VALUES (93, '', 1, 17);
INSERT INTO public.appointments VALUES (156, '', 1, 17);
INSERT INTO public.appointments VALUES (34, '', 1, 17);
INSERT INTO public.appointments VALUES (41, '', 1, 17);
INSERT INTO public.appointments VALUES (101, '', 1, 17);
INSERT INTO public.appointments VALUES (163, '', 1, 17);
INSERT INTO public.appointments VALUES (108, '', 1, 17);
INSERT INTO public.appointments VALUES (170, '', 1, 17);
INSERT INTO public.appointments VALUES (54, '', 1, 17);
INSERT INTO public.appointments VALUES (115, '', 1, 17);
INSERT INTO public.appointments VALUES (59, '10:30', 1, 91);
INSERT INTO public.appointments VALUES (62, '', 1, 17);
INSERT INTO public.appointments VALUES (122, '', 1, 17);
INSERT INTO public.appointments VALUES (129, '', 1, 17);
INSERT INTO public.appointments VALUES (134, '10:30', 1, 91);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (3, 'FakeTime', '');
INSERT INTO public.customers VALUES (8, '1', 'Barrett');
INSERT INTO public.customers VALUES (9, '3027826', 'Barrett');
INSERT INTO public.customers VALUES (10, '4123423', 'Barrett');
INSERT INTO public.customers VALUES (11, '123234', 'poop');
INSERT INTO public.customers VALUES (12, '23928394', 'barrett');
INSERT INTO public.customers VALUES (13, '5033027826', 'Barrett');
INSERT INTO public.customers VALUES (14, '383728', 'poopy');
INSERT INTO public.customers VALUES (17, '', '');
INSERT INTO public.customers VALUES (91, '503-302-7826', 'Barrett');
INSERT INTO public.customers VALUES (41, '9385293', 'Booby');
INSERT INTO public.customers VALUES (42, '193845839', 'pooperz');
INSERT INTO public.customers VALUES (43, '293845', 'barf');
INSERT INTO public.customers VALUES (49, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (50, '2938593092', 'fart');
INSERT INTO public.customers VALUES (51, '399666', 'shart');
INSERT INTO public.customers VALUES (64, '1030', '1030');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'Haircut');
INSERT INTO public.services VALUES (2, 'Shave');
INSERT INTO public.services VALUES (3, 'Color');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 193, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 185, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments fk_app_service; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_app_service FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- Name: appointments fk_cust_service; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_cust_service FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- PostgreSQL database dump complete
--

