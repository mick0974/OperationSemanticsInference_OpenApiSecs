--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

-- Started on 2024-05-19 01:28:26 CEST

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

DROP DATABASE IF EXISTS postgres_demo;
--
-- TOC entry 3489 (class 1262 OID 16442)
-- Name: postgres_demo; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_GB.UTF-8';


ALTER DATABASE postgres_demo OWNER TO postgres;

\connect postgres_demo

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
-- TOC entry 211 (class 1259 OID 16457)
-- Name: answer_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answer_sequence
    START WITH 1000
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answer_sequence OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16443)
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    answer_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    text text,
    question_id bigint NOT NULL
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16458)
-- Name: question_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_sequence
    START WITH 1000
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_sequence OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16450)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description text,
    title character varying(100)
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 16443)
-- Dependencies: 209
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.answers VALUES (1004, '2024-05-19 01:14:22.739', '2024-05-19 01:14:22.739', NULL, 1033);
INSERT INTO public.answers VALUES (1005, '2024-05-19 01:14:22.815', '2024-05-19 01:14:22.815', 'ZFd5aX3nZdfsD', 1033);
INSERT INTO public.answers VALUES (1006, '2024-05-19 01:14:22.824', '2024-05-19 01:14:22.824', NULL, 1033);
INSERT INTO public.answers VALUES (1007, '2024-05-19 01:14:22.886', '2024-05-19 01:14:22.886', NULL, 1033);
INSERT INTO public.answers VALUES (1051, '2024-05-19 01:20:19.128', '2024-05-19 01:20:19.128', NULL, 1005);
INSERT INTO public.answers VALUES (1052, '2024-05-19 01:20:19.185', '2024-05-19 01:20:19.185', NULL, 1051);
INSERT INTO public.answers VALUES (1053, '2024-05-19 01:20:19.307', '2024-05-19 01:20:19.307', NULL, 1005);
INSERT INTO public.answers VALUES (1054, '2024-05-19 01:20:19.317', '2024-05-19 01:20:19.317', NULL, 1005);
INSERT INTO public.answers VALUES (1055, '2024-05-19 01:20:19.371', '2024-05-19 01:20:19.371', NULL, 1051);
INSERT INTO public.answers VALUES (1056, '2024-05-19 01:20:19.38', '2024-05-19 01:20:19.38', NULL, 1051);
INSERT INTO public.answers VALUES (1057, '2024-05-19 01:20:19.433', '2024-05-19 01:20:19.433', NULL, 1005);
INSERT INTO public.answers VALUES (1058, '2024-05-19 01:20:19.483', '2024-05-19 01:20:19.483', NULL, 1051);
INSERT INTO public.answers VALUES (1060, '2024-05-19 01:21:50.824', '2024-05-19 01:21:50.824', NULL, 1033);
INSERT INTO public.answers VALUES (1063, '2024-05-19 01:21:51.003', '2024-05-19 01:21:51.003', NULL, 1033);
INSERT INTO public.answers VALUES (1064, '2024-05-19 01:21:51.014', '2024-05-19 01:21:51.014', NULL, 1033);
INSERT INTO public.answers VALUES (1066, '2024-05-19 01:21:51.112', '2024-05-19 01:21:51.112', NULL, 1033);
INSERT INTO public.answers VALUES (1067, '2024-05-19 01:23:16.614', '2024-05-19 01:23:16.614', NULL, 1076);
INSERT INTO public.answers VALUES (1068, '2024-05-19 01:23:16.674', '2024-05-19 01:23:16.674', NULL, 1078);
INSERT INTO public.answers VALUES (1069, '2024-05-19 01:23:16.809', '2024-05-19 01:23:16.809', NULL, 1076);
INSERT INTO public.answers VALUES (1070, '2024-05-19 01:23:16.823', '2024-05-19 01:23:16.823', NULL, 1076);
INSERT INTO public.answers VALUES (1071, '2024-05-19 01:23:16.871', '2024-05-19 01:23:16.871', NULL, 1078);
INSERT INTO public.answers VALUES (1073, '2024-05-19 01:23:16.93', '2024-05-19 01:23:16.93', 'AUP U', 1076);
INSERT INTO public.answers VALUES (1074, '2024-05-19 01:23:16.977', '2024-05-19 01:23:16.977', NULL, 1078);
INSERT INTO public.answers VALUES (1075, '2024-05-19 01:24:44.259', '2024-05-19 01:24:44.259', NULL, 1004);
INSERT INTO public.answers VALUES (1077, '2024-05-19 01:24:44.407', '2024-05-19 01:24:44.407', NULL, 1004);
INSERT INTO public.answers VALUES (1078, '2024-05-19 01:24:44.414', '2024-05-19 01:24:44.414', NULL, 1004);
INSERT INTO public.answers VALUES (1079, '2024-05-19 01:24:44.467', '2024-05-19 01:24:44.467', NULL, 1104);
INSERT INTO public.answers VALUES (1080, '2024-05-19 01:24:44.476', '2024-05-19 01:24:44.476', NULL, 1104);
INSERT INTO public.answers VALUES (1081, '2024-05-19 01:24:44.522', '2024-05-19 01:24:44.522', NULL, 1004);
INSERT INTO public.answers VALUES (1082, '2024-05-19 01:24:44.565', '2024-05-19 01:24:44.565', NULL, 1104);


--
-- TOC entry 3481 (class 0 OID 16450)
-- Dependencies: 210
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.questions VALUES (1002, '2024-05-18 23:00:44.092', '2024-05-18 23:00:44.092', NULL, 'gloves');
INSERT INTO public.questions VALUES (1003, '2024-05-18 23:00:44.108', '2024-05-18 23:00:44.108', NULL, 'e3abefe5-2e0a-4be5-bc18-d5423401d462');
INSERT INTO public.questions VALUES (1004, '2024-05-18 23:00:44.275', '2024-05-18 23:00:44.275', NULL, '400');
INSERT INTO public.questions VALUES (1005, '2024-05-18 23:00:44.33', '2024-05-18 23:00:44.33', NULL, 'wawaskeesh');
INSERT INTO public.questions VALUES (1006, '2024-05-18 23:28:11.691', '2024-05-18 23:28:11.691', NULL, 'Cleopatre');
INSERT INTO public.questions VALUES (1007, '2024-05-18 23:28:30.915', '2024-05-18 23:28:30.915', NULL, 'counter-extension');
INSERT INTO public.questions VALUES (1008, '2024-05-18 23:28:30.946', '2024-05-18 23:28:30.946', NULL, '9568c415-0579-4de1-ae8f-24538ebc6e43');
INSERT INTO public.questions VALUES (1009, '2024-05-18 23:28:30.955', '2024-05-18 23:28:30.955', NULL, '55.174.124.73');
INSERT INTO public.questions VALUES (1010, '2024-05-18 23:30:40.921', '2024-05-18 23:30:40.921', NULL, 'otic deep-uddered ');
INSERT INTO public.questions VALUES (1011, '2024-05-18 23:30:40.938', '2024-05-18 23:30:40.938', NULL, 'intrapericardial');
INSERT INTO public.questions VALUES (1012, '2024-05-18 23:30:40.951', '2024-05-18 23:30:40.951', NULL, 'oggmJ>m_ygKHS');
INSERT INTO public.questions VALUES (1013, '2024-05-18 23:32:13.689', '2024-05-18 23:32:13.689', NULL, 'unscratchabl');
INSERT INTO public.questions VALUES (1014, '2024-05-18 23:32:13.707', '2024-05-18 23:32:13.707', NULL, 'solvsbergite');
INSERT INTO public.questions VALUES (1015, '2024-05-18 23:32:13.732', '2024-05-18 23:32:13.732', NULL, 'swoosh');
INSERT INTO public.questions VALUES (1016, '2024-05-18 23:33:17.675', '2024-05-18 23:33:17.675', NULL, '+507359958325375');
INSERT INTO public.questions VALUES (1017, '2024-05-18 23:33:17.694', '2024-05-18 23:33:17.694', 'RPN', 'bike');
INSERT INTO public.questions VALUES (1018, '2024-05-18 23:33:17.707', '2024-05-18 23:33:17.707', NULL, 'endophagous');
INSERT INTO public.questions VALUES (1019, '2024-05-18 23:33:17.764', '2024-05-18 23:33:17.764', NULL, 'd9f8:d7cc:83dd:4e62:0f46:ac50:c586:47fe');
INSERT INTO public.questions VALUES (1020, '2024-05-18 23:33:17.776', '2024-05-18 23:33:17.776', NULL, 'bjr@outlook.com');
INSERT INTO public.questions VALUES (1021, '2024-05-18 23:33:17.827', '2024-05-18 23:33:17.827', 'thyreoarytenoideus', 'punctist');
INSERT INTO public.questions VALUES (1022, '2024-05-18 23:33:17.871', '2024-05-18 23:33:17.871', NULL, 'reserveless');
INSERT INTO public.questions VALUES (1023, '2024-05-18 23:34:29.372', '2024-05-18 23:34:29.372', NULL, 'winzes');
INSERT INTO public.questions VALUES (1024, '2024-05-18 23:34:29.391', '2024-05-18 23:34:29.391', 'intonations', 'ferbams');
INSERT INTO public.questions VALUES (1025, '2024-05-18 23:34:29.405', '2024-05-18 23:34:29.405', NULL, '857143771');
INSERT INTO public.questions VALUES (1026, '2024-05-18 23:34:29.445', '2024-05-18 23:34:29.445', NULL, 'http://vhajislxw.mi.co.uk/');
INSERT INTO public.questions VALUES (1027, '2024-05-18 23:34:29.456', '2024-05-18 23:34:29.456', 'URC', 'overpolitical');
INSERT INTO public.questions VALUES (1028, '2024-05-18 23:34:29.516', '2024-05-18 23:34:29.516', NULL, '35f');
INSERT INTO public.questions VALUES (1029, '2024-05-18 23:34:29.569', '2024-05-18 23:34:29.569', NULL, 'heparinization');
INSERT INTO public.questions VALUES (1030, '2024-05-18 23:35:06.757', '2024-05-18 23:35:06.757', '69ea:31b1:b41e:3b9f:e6b8:f815:7afa:954d', 're-edification');
INSERT INTO public.questions VALUES (1031, '2024-05-18 23:35:06.777', '2024-05-18 23:35:06.777', NULL, '2018/02/01');
INSERT INTO public.questions VALUES (1032, '2024-05-18 23:35:06.79', '2024-05-18 23:35:06.79', 'X', 'warderer');
INSERT INTO public.questions VALUES (1037, '2024-05-18 23:45:46.724', '2024-05-18 23:45:46.724', NULL, 'oghsMjQ5SETLouOEulJIH');
INSERT INTO public.questions VALUES (1051, '2024-05-18 23:56:25.94', '2024-05-18 23:56:25.94', NULL, 'belfry');
INSERT INTO public.questions VALUES (1052, '2024-05-18 23:56:26.034', '2024-05-18 23:56:26.034', NULL, 'CH27 5099 7VMU VTSM PLQT 7');
INSERT INTO public.questions VALUES (1053, '2024-05-18 23:56:26.048', '2024-05-18 23:56:26.048', 'unscratchabl', '9568c415-0579-4de1-ae8f-24538ebc6e43');
INSERT INTO public.questions VALUES (1054, '2024-05-18 23:56:26.111', '2024-05-18 23:56:26.111', NULL, 'Ravendale');
INSERT INTO public.questions VALUES (1055, '2024-05-18 23:56:26.145', '2024-05-18 23:56:26.145', NULL, 'nonwarrantably');
INSERT INTO public.questions VALUES (1056, '2024-05-18 23:56:26.157', '2024-05-18 23:56:26.157', NULL, 'A.A.A.');
INSERT INTO public.questions VALUES (1057, '2024-05-18 23:56:26.168', '2024-05-18 23:56:26.168', NULL, 'gunky D H');
INSERT INTO public.questions VALUES (1058, '2024-05-18 23:57:50.903', '2024-05-18 23:57:50.903', NULL, 'apterygial');
INSERT INTO public.questions VALUES (1059, '2024-05-18 23:57:50.961', '2024-05-18 23:57:50.961', NULL, 'Hext');
INSERT INTO public.questions VALUES (1060, '2024-05-18 23:57:50.974', '2024-05-18 23:57:50.974', NULL, 'hypoed');
INSERT INTO public.questions VALUES (1061, '2024-05-18 23:57:51.032', '2024-05-18 23:57:51.032', NULL, 'bliDo');
INSERT INTO public.questions VALUES (1062, '2024-05-18 23:57:51.062', '2024-05-18 23:57:51.062', NULL, 'X byre');
INSERT INTO public.questions VALUES (1063, '2024-05-18 23:57:51.072', '2024-05-18 23:57:51.072', NULL, 'vaginotome');
INSERT INTO public.questions VALUES (1065, '2024-05-19 00:06:00.677', '2024-05-19 00:06:00.677', NULL, 'emptiable');
INSERT INTO public.questions VALUES (1066, '2024-05-19 00:06:00.745', '2024-05-19 00:06:00.745', NULL, 'YQuwORLRo5:');
INSERT INTO public.questions VALUES (1067, '2024-05-19 00:06:00.759', '2024-05-19 00:06:00.759', NULL, 'ETR');
INSERT INTO public.questions VALUES (1068, '2024-05-19 00:06:00.81', '2024-05-19 00:06:00.81', NULL, 'd3f9719');
INSERT INTO public.questions VALUES (1069, '2024-05-19 00:06:00.85', '2024-05-19 00:06:00.85', 'hwyl', 'Scripturalism');
INSERT INTO public.questions VALUES (1070, '2024-05-19 00:06:00.862', '2024-05-19 00:06:00.862', NULL, 'somedays nonoccul');
INSERT INTO public.questions VALUES (1071, '2024-05-19 00:06:00.874', '2024-05-19 00:06:00.874', '1005', 'foret');
INSERT INTO public.questions VALUES (1072, '2024-05-19 00:07:18.916', '2024-05-19 00:07:18.916', NULL, 'superseptuaginarian');
INSERT INTO public.questions VALUES (1073, '2024-05-19 00:07:18.97', '2024-05-19 00:07:18.97', NULL, 'sis');
INSERT INTO public.questions VALUES (1074, '2024-05-19 00:07:18.982', '2024-05-19 00:07:18.982', NULL, 'HT8JgSfaB6y');
INSERT INTO public.questions VALUES (1075, '2024-05-19 00:07:19.027', '2024-05-19 00:07:19.027', NULL, 'unscratchable');
INSERT INTO public.questions VALUES (1077, '2024-05-19 00:07:19.07', '2024-05-19 00:07:19.07', NULL, '03:29:01');
INSERT INTO public.questions VALUES (1078, '2024-05-19 00:07:19.082', '2024-05-19 00:07:19.082', NULL, 'false');
INSERT INTO public.questions VALUES (1151, '2024-05-19 00:14:58.521', '2024-05-19 00:14:58.521', NULL, '9568c415-0579-4de1-ae8f-24538ebc6e43');
INSERT INTO public.questions VALUES (1152, '2024-05-19 01:00:11.177', '2024-05-19 01:00:11.177', NULL, 'BCBS');
INSERT INTO public.questions VALUES (1153, '2024-05-19 01:03:34.825', '2024-05-19 01:03:34.825', NULL, 'IO undecayable');
INSERT INTO public.questions VALUES (1154, '2024-05-19 01:05:58.49', '2024-05-19 01:05:58.49', NULL, '1026');
INSERT INTO public.questions VALUES (1155, '2024-05-19 01:07:20.805', '2024-05-19 01:07:20.805', NULL, 'SRTS');
INSERT INTO public.questions VALUES (1156, '2024-05-19 01:08:28.171', '2024-05-19 01:08:28.171', NULL, 'Harz');
INSERT INTO public.questions VALUES (1157, '2024-05-19 01:09:07.824', '2024-05-19 01:09:07.824', NULL, 'benighted');
INSERT INTO public.questions VALUES (1158, '2024-05-19 01:14:22.604', '2024-05-19 01:14:22.604', NULL, 'ostiolate');
INSERT INTO public.questions VALUES (1033, '2024-05-18 23:35:06.844', '2024-05-19 01:14:22.671', 'blind-stamped', '7366060370');
INSERT INTO public.questions VALUES (1201, '2024-05-19 01:20:19.054', '2024-05-19 01:20:19.054', 'http://jsbvmcgjl.gov/', 'Bakunin');
INSERT INTO public.questions VALUES (1038, '2024-05-18 23:45:46.735', '2024-05-19 01:20:19.254', 'Sclerodermi', 'SuF');
INSERT INTO public.questions VALUES (1202, '2024-05-19 01:21:50.723', '2024-05-19 01:21:50.723', NULL, '9568c415-0579-4de1-ae8f-24538ebc6e43');
INSERT INTO public.questions VALUES (1203, '2024-05-19 01:23:16.514', '2024-05-19 01:23:16.514', NULL, 'Hades');
INSERT INTO public.questions VALUES (1076, '2024-05-19 00:07:19.057', '2024-05-19 01:23:16.565', 'gloves', 'CNSR');
INSERT INTO public.questions VALUES (1204, '2024-05-19 01:24:44.164', '2024-05-19 01:24:44.164', NULL, 'Egwin');
INSERT INTO public.questions VALUES (1104, '2024-05-19 00:11:50.26', '2024-05-19 01:24:44.212', '', 'awash');


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 211
-- Name: answer_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answer_sequence', 1100, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 212
-- Name: question_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_sequence', 1250, true);


--
-- TOC entry 3337 (class 2606 OID 16449)
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);


--
-- TOC entry 3339 (class 2606 OID 16456)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 16459)
-- Name: answers fk3erw1a3t0r78st8ty27x6v3g1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk3erw1a3t0r78st8ty27x6v3g1 FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;


-- Completed on 2024-05-19 01:28:26 CEST

--
-- PostgreSQL database dump complete
--

