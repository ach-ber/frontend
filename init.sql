--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-03-25 17:51:22

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
-- TOC entry 210 (class 1259 OID 16500)
-- Name: avis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avis (
    id_avis integer NOT NULL,
    text_avis text NOT NULL,
    date_avis date NOT NULL,
    fk_student integer NOT NULL,
    fk_company integer NOT NULL,
    note_avis integer NOT NULL,
    title_avis text NOT NULL
);


ALTER TABLE public.avis OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24579)
-- Name: avis_id_avis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.avis ALTER COLUMN id_avis ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.avis_id_avis_seq
    START WITH 4
    INCREMENT BY 1
    MINVALUE 4
    MAXVALUE 1000000000
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16507)
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id_company integer NOT NULL,
    name_company text NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24581)
-- Name: company_id_company_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.company ALTER COLUMN id_company ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.company_id_company_seq
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 100000000
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16521)
-- Name: speciality; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.speciality (
    id_speciality integer NOT NULL,
    name_speciality text NOT NULL
);


ALTER TABLE public.speciality OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16493)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id_student integer NOT NULL,
    firstname_student text NOT NULL,
    lastname_student text NOT NULL,
    fk_university integer NOT NULL,
    fk_speciality integer NOT NULL,
    email_student text NOT NULL,
    passhash_student text NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24576)
-- Name: student_id_student_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.student ALTER COLUMN id_student ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.student_id_student_seq
    START WITH 5
    INCREMENT BY 1
    MINVALUE 5
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16514)
-- Name: university; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.university (
    id_university integer NOT NULL,
    name_university text NOT NULL
);


ALTER TABLE public.university OWNER TO postgres;

--
-- TOC entry 3338 (class 0 OID 16500)
-- Dependencies: 210
-- Data for Name: avis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avis (id_avis, text_avis, date_avis, fk_student, fk_company, note_avis, title_avis) FROM stdin;
7	David finit au bout d'une heure par s'assoupir. Il fut réveillé par le bruit d’une portière se fermant. Le chauffeur venait de sortir et discutait avec un militaire. David reconnu l’entrée du 57e RA qui n’avait pas changé depuis son départ. « Nous sommes arrivés Monsieur Arnould. » Dis l'un des gardes du corps de David.	2022-03-18	2	5	5	titre pour le 6loolll
3	Huic Arabia est conserta, ex alio latere Nabataeis contigua; opima varietate conmerciorum castrisque oppleta validis et castellis, quae ad repellendos gentium vicinarum excursus sollicitudo pervigil veterum per oportunos saltus erexit et cautos. haec quoque civitates habet inter oppida quaedam ingentes Bostram et Gerasam atque Philadelphiam murorum firmitate cautissimas. hanc provinciae inposito nomine rectoreque adtributo obtemperare legibus nostris Traianus conpulit imperator incolarum tumore saepe contunso cum glorioso marte Mediam urgeret et Parthos.	2022-03-14	1	2	6	Titre pour l'avis 3
4	C’est une informaticienne chevronnée de 35 ans. Une surdouée qui s’est découvert une passion pour l’informatique à l’âge de treize ans lorsqu’elle a vu une publicité pour cet ordinateur familial dont on ventait les mérites à l’aide d’une petite marionnette virtuelle. Elle voulait un ami, elle a eu une marionnette virtuelle. Depuis, la marionnette a laissé place à des projets plus sérieux, plus lucratifs surtout. Mais Sophie, c’est comme ça qu’elle nommait sa marionnette, est toujours là, dans un petit coin de son ordinateur et c’est à Sophie qu’elle s’adresse quand le moral est au plus bas. Mais aujourd’hui, c’est Sophie qui s’adresse à Florence.\n\nComme je viens de te le dire Florence, ce n’est malheureusement pas une blague. David a travaillé sur deux anciennes technologies abandonnées depuis longtemps et il les a couplées. Séparées, elles ne valaient rien, mais, il les a réunies et a démarré le processus. Comme tu dois le savoir, il y a maintenant plus d’ordinateurs sur terre que d’humains et tous ces ordinateurs sont connectés entres eux grâce au réseau des réseaux : Internet.	2022-03-21	1	1	3	Titre pour l'avis 4
5	Florence est une jeune femme, grande et filiforme. Ses longs cheveux blonds ressemblent aux vagues que forment les blés dans les champs sous l’effet du vent. Et l’on pourrait croire que ses yeux sont des émeraudes trouvés sous les deux petites collines qui masquent une mine d’or : son cœur.\n\nDe tout temps, l'homme a tenté de comprendre puis de reproduire l'extraordinaire machine qu'est l'être humain. Les premiers automates nous font sourire aujourd'hui. Les premiers ordinateurs également, mais un peu moins. Et lorsqu'un certain McCullogn, aidé de Pitts, invente en 1943 le premier neurone formel, on ne rigole plus. L'ordinateur est devenu capable de reproduire des neurones artificiels. Le "complexe de Frankenstein" va alors freiner les recherches. On commence à entendre parler du concept d'Intelligence Artificielle, plus connu sous les termes d'IA. Cela fait peur.	2022-03-15	2	2	7	titre 5ème avis modifié
\.


--
-- TOC entry 3339 (class 0 OID 16507)
-- Dependencies: 211
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id_company, name_company) FROM stdin;
1	Apple
2	Zalando
3	Tesla
4	Samasung
5	Levis
6	le6
7	le7
8	le8
9	le9
10	10èm company
11	acer
12	logitech
\.


--
-- TOC entry 3341 (class 0 OID 16521)
-- Dependencies: 213
-- Data for Name: speciality; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.speciality (id_speciality, name_speciality) FROM stdin;
1	IG
2	STE
\.


--
-- TOC entry 3337 (class 0 OID 16493)
-- Dependencies: 209
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id_student, firstname_student, lastname_student, fk_university, fk_speciality, email_student, passhash_student) FROM stdin;
1	Achille	Bernat	2	2	achilleber@gmail.com	zerjgjzergjzerg
4	gerg	ergerg	1	2	jj@gmail.com	$2b$10$dT.WXDjZXExUuBgctAveyOGxw21aSlfXkAwGGJcWKiFCk3FCvG9ji
3	rgrg	rgrgrg	2	1	jgrgrfj@gmail.com	$2b$10$uzx.4culeyfbqdtqmZrPDuhNbq5Ok5bvJXJShT1/3LSWnlFFGeIXu
5	zafazef	zaefazf	1	2	azfazf@gmail.com	$2b$10$LM6xPw2CNSvU1TWIy/zbOudb7fkz592QqgoDC/3vGCPsnc/TjznBu
2	Pierre	Martin	2	1	pierre.martin@gmail.com	$2b$10$2b116lFABGKLc0xlMiXcG.JOI32c7tokVBacOya6MBwmn6sjK1m0.
\.


--
-- TOC entry 3340 (class 0 OID 16514)
-- Dependencies: 212
-- Data for Name: university; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.university (id_university, name_university) FROM stdin;
1	Montpellier
2	Nantes
\.


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 215
-- Name: avis_id_avis_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avis_id_avis_seq', 7, true);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 216
-- Name: company_id_company_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_company_seq', 12, true);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 214
-- Name: student_id_student_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_student_seq', 5, true);


--
-- TOC entry 3187 (class 2606 OID 16506)
-- Name: avis avis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avis
    ADD CONSTRAINT avis_pkey PRIMARY KEY (id_avis);


--
-- TOC entry 3189 (class 2606 OID 16513)
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id_company);


--
-- TOC entry 3193 (class 2606 OID 16527)
-- Name: speciality speciality_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT speciality_pkey PRIMARY KEY (id_speciality);


--
-- TOC entry 3183 (class 2606 OID 16499)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id_student);


--
-- TOC entry 3185 (class 2606 OID 16549)
-- Name: student unique_email_student; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT unique_email_student UNIQUE (email_student);


--
-- TOC entry 3191 (class 2606 OID 16520)
-- Name: university university_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_pkey PRIMARY KEY (id_university);


--
-- TOC entry 3197 (class 2606 OID 16543)
-- Name: avis avis_fk_company_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avis
    ADD CONSTRAINT avis_fk_company_fkey FOREIGN KEY (fk_company) REFERENCES public.company(id_company);


--
-- TOC entry 3196 (class 2606 OID 16538)
-- Name: avis avis_fk_student_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avis
    ADD CONSTRAINT avis_fk_student_fkey FOREIGN KEY (fk_student) REFERENCES public.student(id_student);


--
-- TOC entry 3195 (class 2606 OID 16533)
-- Name: student student_fk_speciality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_fk_speciality_fkey FOREIGN KEY (fk_speciality) REFERENCES public.speciality(id_speciality);


--
-- TOC entry 3194 (class 2606 OID 16528)
-- Name: student student_fk_university_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_fk_university_fkey FOREIGN KEY (fk_university) REFERENCES public.university(id_university);


-- Completed on 2022-03-25 17:51:23

--
-- PostgreSQL database dump complete
--

