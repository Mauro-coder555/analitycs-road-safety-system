--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: homicidios; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.homicidios (
    "ID" text,
    "N_VICTIMAS" bigint,
    "FECHA" date,
    "AÑO" bigint,
    "MES" text,
    "DIA" bigint,
    "HORA" time without time zone,
    "TIPO_DE_CALLE" text,
    "CALLE" text,
    "ALTURA" text,
    "CRUCE" text,
    "DIRECCIÓN NORMALIZADA" text,
    "COMUNA" bigint,
    "POS X" text,
    "POS Y" text,
    "VICTIMA" text,
    "ACUSADO" text,
    "ROL" text,
    "SEXO" text,
    "EDAD" double precision,
    "DIA_SEMANA" text,
    "PARTICIPANTE A" text,
    "PARTICIPANTE B" text,
    "RANGO_ETARIO" text,
    "ENCRUCIJADA" boolean
);


ALTER TABLE public.homicidios OWNER TO superset;

--
-- Name: kpi_1; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.kpi_1 (
    "HOMICIDIOS" bigint,
    "TASA_HOMICIDIOS" double precision,
    "TASA_HOMICIDIOS_ANTERIOR" double precision,
    "VARIACION" double precision,
    "SEMESTRE" bigint,
    "AÑO" bigint,
    "OBJETIVO" double precision
);


ALTER TABLE public.kpi_1 OWNER TO superset;

--
-- Name: kpi_2; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.kpi_2 (
    "año" bigint,
    "N_VICTIMAS" bigint,
    "N_VICTIMAS_ANTERIOR" bigint,
    "VARIACION_VICTIMAS_MOTO" double precision
);


ALTER TABLE public.kpi_2 OWNER TO superset;

--
-- Name: kpi_3; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.kpi_3 (
    "Período" text,
    "Concentración (%)" double precision
);


ALTER TABLE public.kpi_3 OWNER TO superset;

--
-- Data for Name: homicidios; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.homicidios ("ID", "N_VICTIMAS", "FECHA", "AÑO", "MES", "DIA", "HORA", "TIPO_DE_CALLE", "CALLE", "ALTURA", "CRUCE", "DIRECCIÓN NORMALIZADA", "COMUNA", "POS X", "POS Y", "VICTIMA", "ACUSADO", "ROL", "SEXO", "EDAD", "DIA_SEMANA", "PARTICIPANTE A", "PARTICIPANTE B", "RANGO_ETARIO", "ENCRUCIJADA") FROM stdin;
2016-0001	1	2016-01-01	2016	enero	1	04:00:00	avenida	piedra buena av.	sin datos	fernandez de la cruz, f., gral. av.	piedra buena av. y fernandez de la cruz, f., gral. av.	8	-58.47533969	-34.68757022	moto	auto	conductor	masculino	19	viernes	moto	auto	18-29	t
2016-0002	1	2016-01-02	2016	enero	2	01:15:00	gral paz	paz, gral. av.	sin datos	de los corrales av.	paz, gral. av. y de los corrales av.	9	-58.50877521	-34.66977709	auto	pasajeros	conductor	masculino	70	sabado	auto	pasajeros	65+	t
2016-0003	1	2016-01-03	2016	enero	3	07:00:00	avenida	entre rios av.	2034.0	sin datos	entre rios av. 2034	1	-58.39040293	-34.63189362	moto	auto	conductor	masculino	30	domingo	moto	auto	30-44	f
2016-0004	1	2016-01-10	2016	enero	10	00:00:00	avenida	larrazabal av.	sin datos	villegas, conrado, gral.	larrazabal av. y villegas, conrado, gral.	8	-58.46503904	-34.68092974	moto	sin datos	conductor	masculino	18	domingo	moto	sin datos	18-29	t
2016-0005	1	2016-01-21	2016	enero	21	05:20:00	avenida	san juan av.	sin datos	saenz pe?a, luis, pres.	san juan av. y saenz peã‘a, luis, pres.	1	-58.38718297	-34.62246630	moto	pasajeros	conductor	masculino	29	jueves	moto	pasajeros	18-29	t
2016-0008	1	2016-01-24	2016	enero	24	18:30:00	avenida	27 de febrero av.	sin datos	escalada av.	27 de febrero av. y escalada av.	8	-58.44451316	-34.68475866	moto	objeto fijo	conductor	masculino	30	domingo	moto	objeto fijo	30-44	t
2016-0009	1	2016-01-24	2016	enero	24	19:10:00	calle	nogoya	sin datos	gonzalez, joaquin v.	nogoya y gonzalez, joaquin v.	11	-58.50095869	-34.60825440	moto	auto	pasajero_acompañante	masculino	29	domingo	moto	auto	18-29	t
2016-0010	1	2016-01-29	2016	enero	29	15:20:00	gral paz	paz, gral. av.	sin datos	de los corrales av.	paz, gral. av. y de los corrales av.	9	-58.50877521	-34.66977709	moto	auto	conductor	masculino	18	viernes	moto	auto	18-29	t
2016-0012	1	2016-02-08	2016	febrero	8	01:20:00	avenida	belgrano av.	sin datos	irigoyen, bernardo de	belgrano av. e irigoyen, bernardo de	1	-58.38048577	-34.61303893	moto	cargas	conductor	masculino	22	lunes	moto	cargas	18-29	t
2016-0013	1	2016-02-10	2016	febrero	10	11:30:00	avenida	entre rios av.	1366.0	sin datos	entre rios av. 1366	1	-58.39114932	-34.62477387	peaton	auto	peaton	masculino	16	miercoles	peaton	auto	0-17	f
2016-0015	1	2016-02-14	2016	febrero	14	05:14:00	avenida	scalabrini ortiz, raul av.	sin datos	vera	scalabrini ortiz, raul av. y vera	15	-58.43760020	-34.59912758	peaton	auto	peaton	femenino	16	domingo	peaton	auto	0-17	t
2016-0016	1	2016-02-14	2016	febrero	14	22:00:00	avenida	regimiento de patricios av.	sin datos	quinquela martin, benito	regimiento de patricios av. y quinquela martin, benito	4	-58.36882665	-34.64291993	moto	auto	pasajero_acompañante	femenino	19	domingo	moto	auto	18-29	t
2016-0017	1	2016-02-15	2016	febrero	15	16:54:00	avenida	acosta, mariano	sin datos	janer, ana maria	acosta, mariano y janer, ana maria	8	-58.44989671	-34.65970435	peaton	moto	peaton	masculino	59	lunes	peaton	moto	45-64	t
2016-0019	1	2016-02-17	2016	febrero	17	09:30:00	calle	de la torre, lisandro	sin datos	garcia grande de zequeira, severo	de la torre, lisandro y garcia grande de zequeira, severo	9	-58.50990884	-34.65468721	peaton	pasajeros	peaton	femenino	65	miercoles	peaton	pasajeros	65+	t
2016-0020	1	2016-02-17	2016	febrero	17	16:00:00	calle	suipacha	156.0	sin datos	suipacha 156	1	-58.37952223	-34.60653282	peaton	auto	peaton	masculino	59	miercoles	peaton	auto	45-64	f
2016-0021	1	2016-02-17	2016	febrero	17	23:35:00	avenida	directorio av.	sin datos	curapaligue	directorio av. y curapaligue	7	-58.45157703	-34.63063795	auto	auto	conductor	masculino	34	miercoles	auto	auto	30-44	t
2016-0022	1	2016-02-21	2016	febrero	21	06:00:00	avenida	9 de julio av.	sin datos	alsina, adolfo	9 de julio av. y alsina, adolfo	1	-58.38144696	-34.61079875	moto	auto	pasajero_acompañante	masculino	41	domingo	moto	auto	30-44	t
2016-0025	1	2016-02-28	2016	febrero	28	04:50:00	gral paz	paz, gral. av.	sin datos	27 de febrero av.	paz, gral. av. y 27 de febrero av.	8	-58.46244952	-34.70524971	auto	auto	pasajero_acompañante	masculino	34	domingo	auto	auto	30-44	t
2016-0026	1	2016-02-28	2016	febrero	28	07:30:00	calle	holmberg	sin datos	vedia	holmberg y vedia	12	-58.49216191	-34.54738649	auto	objeto fijo	conductor	masculino	30	domingo	auto	objeto fijo	30-44	t
2016-0027	1	2016-02-28	2016	febrero	28	09:35:00	avenida	curapaligue av.	sin datos	diaz, avelino	curapaligue av. y diaz, avelino	7	-58.44497874	-34.63852623	auto	auto	pasajero_acompañante	masculino	34	domingo	auto	auto	30-44	t
2016-0028	1	2016-03-02	2016	marzo	2	10:00:00	avenida	viamonte	sin datos	9 de julio av.	viamonte y 9 de julio av.	1	-58.38199706	-34.60028648	peaton	cargas	peaton	masculino	50	miercoles	peaton	cargas	45-64	t
2016-0029	1	2016-03-04	2016	marzo	4	17:30:00	avenida	cabildo av.	sin datos	deheza	cabildo av. y deheza	12	-58.47378664	-34.54153077	peaton	pasajeros	peaton	masculino	38	viernes	peaton	pasajeros	30-44	t
2016-0031	1	2016-03-08	2016	marzo	8	12:30:00	gral paz	paz, gral. av.	sin datos	roca, cnel. av.	paz, gral. av. y roca, cnel. av.	8	-58.47064556	-34.69843756	moto	pasajeros	conductor	masculino	21	martes	moto	pasajeros	18-29	t
2016-0034	1	2016-03-12	2016	marzo	12	12:30:00	avenida	alcorta, amancio av.	sin datos	bonavena, oscar natalio	alcorta, amancio av. y bonavena, oscar natalio	4	-58.40623949	-34.65076549	peaton	pasajeros	peaton	masculino	52	sabado	peaton	pasajeros	45-64	t
2016-0035	1	2016-03-13	2016	marzo	13	06:00:00	avenida	corrientes av.	sin datos	callao av.	corrientes av. y callao av.	3	-58.39228965	-34.60443527	moto	pasajeros	conductor	masculino	34	domingo	moto	pasajeros	30-44	t
2016-0036	1	2016-03-14	2016	marzo	14	00:15:00	calle	herrera	sin datos	valle, aristobulo del	herrera y valle, aristobulo del	4	-58.37813396	-34.63668504	moto	pasajeros	pasajero_acompañante	masculino	36	lunes	moto	pasajeros	30-44	t
2016-0037	1	2016-03-19	2016	marzo	19	11:00:00	avenida	lafuente av.	sin datos	quirno	lafuente av. y quirno	7	-58.46275892	-34.64358293	moto	moto	conductor	masculino	20	sabado	moto	moto	18-29	t
2016-0038	1	2016-03-21	2016	marzo	21	08:06:00	gral paz	paz, gral. av.	sin datos	zuviria	paz, gral. av. y zuviria	8	-58.49683458	-34.67892743	peaton	pasajeros	peaton	masculino	29	lunes	peaton	pasajeros	18-29	t
2016-0039	1	2016-03-23	2016	marzo	23	01:50:00	avenida	mitre, bartolome	sin datos	pueyrredon av.	mitre, bartolome y pueyrredon av.	3	-58.40603217	-34.60883960	moto	pasajeros	conductor	masculino	20	miercoles	moto	pasajeros	18-29	t
2016-0041	2	2016-03-29	2016	marzo	29	11:00:00	avenida	directorio av.	sin datos	rivera indarte av.	directorio av. y rivera indarte av.	7	-58.46076550	-34.63350444	moto	cargas	conductor	masculino	54	martes	moto	cargas	45-64	t
2016-0041	2	2016-03-29	2016	marzo	29	11:00:00	avenida	directorio av.	sin datos	rivera indarte av.	directorio av. y rivera indarte av.	7	-58.46076550	-34.63350444	moto	cargas	pasajero_acompañante	masculino	\N	martes	moto	cargas	sin datos	t
2016-0043	1	2016-03-30	2016	marzo	30	18:15:00	avenida	dellepiane, luis, tte. gral.	sin datos	murguiondo	dellepiane, luis, tte. gral. y murguiondo	8	-58.47832463	-34.67494416	peaton	cargas	peaton	femenino	56	miercoles	peaton	cargas	45-64	t
2016-0044	1	2016-03-31	2016	marzo	31	19:40:00	avenida	moreno, jose maria av.	sin datos	balbastro	moreno, jose maria av. y balbastro	7	-58.43213235	-34.63693953	moto	multiple	conductor	masculino	24	jueves	multiple	sin datos	18-29	t
2016-0045	1	2016-04-11	2016	abril	11	10:25:00	gral paz	paz, gral. av.	sin datos	del libertador av.	paz, gral. av. y del libertador av.	13	-58.46743471	-34.53476874	moto	sin datos	conductor	masculino	\N	lunes	moto	sin datos	sin datos	t
2016-0047	1	2016-04-15	2016	abril	15	05:30:00	calle	lima	1483.0	sin datos	lima 1483	1	-58.38247061	-34.62571878	peaton	pasajeros	peaton	masculino	41	viernes	peaton	pasajeros	30-44	f
2016-0048	1	2016-04-15	2016	abril	15	17:40:00	avenida	corrientes av.	sin datos	dorrego av.	corrientes av. y dorrego av.	15	-58.44759966	-34.59170240	peaton	pasajeros	peaton	femenino	\N	viernes	peaton	pasajeros	sin datos	t
2016-0049	1	2016-04-17	2016	abril	17	00:00:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi	4	-58.37714647568196	-34.63657525428238	sin datos	sin datos	sin datos	sin datos	\N	domingo	sin datos	sin datos	sin datos	f
2016-0050	1	2016-04-19	2016	abril	19	09:50:00	avenida	gordillo, timoteo	sin datos	fernandez de la cruz, f., gral. av.	gordillo, timoteo y fernandez de la cruz, f., gral. av.	8	-58.47305463	-34.68550712	peaton	pasajeros	peaton	masculino	78	martes	peaton	pasajeros	65+	t
2016-0051	1	2016-04-20	2016	abril	20	04:00:00	avenida	alcorta, amancio av.	sin datos	bonavena, oscar natalio	alcorta, amancio av. y bonavena, oscar natalio	4	-58.40623949	-34.65076549	moto	cargas	conductor	masculino	36	miercoles	moto	cargas	30-44	t
2016-0052	1	2016-04-20	2016	abril	20	20:00:00	autopista	lugones, leopoldo av.	sin datos	sin datos	sin datos	13	sin datos	sin datos	moto	sin datos	sin datos	sin datos	\N	miercoles	moto	sin datos	sin datos	f
2016-0053	1	2016-04-22	2016	abril	22	09:30:00	avenida	triunvirato av.	sin datos	olazabal av.	triunvirato av. y olazabal av.	12	-58.48429180	-34.57558053	peaton	pasajeros	peaton	masculino	38	viernes	peaton	pasajeros	30-44	t
2016-0054	1	2016-04-23	2016	abril	23	21:00:00	autopista	autopista dellepiane luis tte. gral.	sin datos	paz, gral. av.	autopista dellepiane luis tte. gral. y paz, gral. av.	8	-58.48695354	-34.68795245	moto	moto	conductor	masculino	30	sabado	moto	moto	30-44	t
2016-0055	1	2016-04-25	2016	abril	25	20:30:00	avenida	castilla, ramon, mariscal	sin datos	figueroa alcorta, pres. av.	castilla, ramon, mariscal y figueroa alcorta, pres. av.	14	-58.40021959	-34.57964781	peaton	cargas	peaton	masculino	79	lunes	peaton	cargas	65+	t
2016-0056	1	2016-04-26	2016	abril	26	04:45:00	avenida	campos, luis m. av.	30.0	sin datos	campos, luis m. av. 30	14	-58.42957885	-34.57660058	moto	objeto fijo	conductor	masculino	26	martes	moto	objeto fijo	18-29	f
2016-0058	1	2016-05-04	2016	mayo	4	14:00:00	calle	lima	1471.0	sin datos	lima 1471	1	-58.38247542	-34.62556293	peaton	moto	peaton	femenino	57	miercoles	peaton	moto	45-64	f
2016-0059	1	2016-05-08	2016	mayo	8	16:30:00	calle	ciudadela	sin datos	lima	ciudadela y lima	1	-58.38222219	-34.62728101	peaton	pasajeros	peaton	masculino	37	domingo	peaton	pasajeros	30-44	t
2016-0064	1	2016-05-14	2016	mayo	14	18:11:00	avenida	justo, juan b. av.	sin datos	carrasco av.	justo, juan b. av. y carrasco av.	10	-58.49485242	-34.62953445	peaton	pasajeros	peaton	masculino	20	sabado	peaton	pasajeros	18-29	t
2016-0065	1	2016-05-20	2016	mayo	20	14:40:00	avenida	gaona av.	sin datos	espinosa	gaona av. y espinosa	6	-58.45227946	-34.61068024	peaton	auto	peaton	masculino	20	viernes	peaton	auto	18-29	t
2016-0067	1	2016-05-21	2016	mayo	21	17:00:00	avenida	de la torre, lisandro	sin datos	saraza	de la torre, lisandro y saraza	8	-58.48455411	-34.67512760	moto	pasajeros	pasajero_acompañante	femenino	30	sabado	moto	pasajeros	30-44	t
2016-0068	1	2016-05-22	2016	mayo	22	22:00:00	avenida	figueroa alcorta, pres. av.	sin datos	pueyrredon av.	figueroa alcorta, pres. av. y pueyrredon av.	2	-58.39056593	-34.58418569	moto	pasajeros	conductor	masculino	58	domingo	moto	pasajeros	45-64	t
2016-0069	1	2016-05-23	2016	mayo	23	03:30:00	avenida	entre rios av.	sin datos	filiberto	entre rios av. y filiberto	3	-58.39118948	-34.62704273	auto	cargas	conductor	masculino	30	lunes	auto	cargas	30-44	t
2016-0073	1	2016-06-11	2016	junio	11	15:00:00	calle	magari?os cervantes, a.	3900.0	sin datos	magariã‘os cervantes, a. 3900	10	-58.49021952	-34.62025108	moto	cargas	conductor	masculino	23	sabado	moto	cargas	18-29	f
2016-0074	1	2016-06-12	2016	junio	12	06:40:00	gral paz	paz, gral. av.	sin datos	scapino, rodolfo	paz, gral. av. y scapino, rodolfo	8	-58.49896559	-34.67732118	auto	auto	conductor	masculino	60	domingo	auto	auto	45-64	t
2016-0075	1	2016-06-12	2016	junio	12	23:13:00	autopista	autopista dellepiane luis tte. gral.	sin datos	miralla	autopista dellepiane luis tte. gral. y miralla	8	-58.47461076	-34.66874679	peaton	auto	peaton	masculino	42	domingo	peaton	auto	30-44	t
2016-0076	1	2016-06-13	2016	junio	13	16:20:00	avenida	san martin av.	sin datos	camarones	san martin av. y camarones	15	-58.46210891	-34.60356211	peaton	pasajeros	peaton	femenino	53	lunes	peaton	pasajeros	45-64	t
2016-0138	1	2016-10-27	2016	octubre	27	20:30:00	avenida	cabildo av.	sin datos	blanco encalada	cabildo av. y blanco encalada	13	-58.45909670	-34.55922742	bicicleta	cargas	ciclista	femenino	33	jueves	bicicleta	cargas	30-44	t
2016-0077	1	2016-06-13	2016	junio	13	21:52:00	avenida	peron, juan domingo, tte. general	sin datos	alem, leandro n. av.	peron, juan domingo, tte. general y alem, leandro n. av.	1	-58.37027770	-34.60536123	peaton	pasajeros	peaton	femenino	\N	lunes	peaton	pasajeros	sin datos	t
2016-0078	1	2016-06-13	2016	junio	13	23:01:00	avenida	belgrano av.	sin datos	jujuy av.	belgrano av. y jujuy av.	3	-58.40491455	-34.61463830	moto	moto	conductor	masculino	30	lunes	moto	moto	30-44	t
2016-0079	1	2016-06-16	2016	junio	16	17:13:00	avenida	del libertador av.	sin datos	udaondo, guillermo av.	del libertador av. y udaondo, guillermo av.	13	-58.45504154	-34.54864492	auto	auto	conductor	femenino	51	jueves	auto	auto	45-64	t
2016-0080	1	2016-06-18	2016	junio	18	06:42:00	gral paz	paz, gral. av.	sin datos	rivadavia av.	paz, gral. av. y rivadavia av.	9	-58.52927982	-34.63931752	auto	sin datos	conductor	masculino	60	sabado	auto	sin datos	45-64	t
2016-0081	1	2016-06-22	2016	junio	22	07:42:00	avenida	larralde, crisologo av.	sin datos	machain	larralde, crisologo av. y machain	12	-58.48721060	-34.55904606	moto	auto	conductor	masculino	40	miercoles	moto	auto	30-44	t
2016-0082	1	2016-06-27	2016	junio	27	18:24:00	avenida	la plata av.	2384.0	sin datos	la plata av. 2384	4	-58.42273092	-34.64228803	peaton	auto	peaton	masculino	87	lunes	peaton	auto	65+	f
2016-0083	1	2016-06-28	2016	junio	28	20:46:00	avenida	alberdi, juan bautista av.	sin datos	puan	alberdi, juan bautista av. y puan	6	-58.44788671	-34.62539009	peaton	moto	peaton	femenino	76	martes	peaton	moto	65+	t
2016-0084	1	2016-06-29	2016	junio	29	22:00:00	calle	pellegrini, carlos	sin datos	tucuman	pellegrini, carlos y tucuman	1	-58.38110563	-34.60135531	peaton	pasajeros	peaton	masculino	57	miercoles	peaton	pasajeros	45-64	t
2016-0085	1	2016-06-29	2016	junio	29	22:00:00	avenida	rabanal, francisco, intendente av.	sin datos	erezcano	rabanal, francisco, intendente av. y erezcano	4	-58.42378834	-34.65734100	moto	otro	sin datos	masculino	\N	miercoles	moto	movil	sin datos	t
2016-0086	1	2016-06-30	2016	junio	30	16:10:00	avenida	olivera av.	sin datos	falcon, ramon l.,cnel.	olivera av. y falcon, ramon l.,cnel.	10	-58.48727942	-34.63652467	peaton	pasajeros	peaton	masculino	75	jueves	peaton	pasajeros	65+	t
2016-0087	1	2016-07-02	2016	julio	3	00:10:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y caseros av.	1	-58.37864583	-34.62907067	moto	objeto fijo	conductor	masculino	23	sabado	moto	objeto fijo	18-29	f
2016-0088	1	2016-07-11	2016	julio	11	15:30:00	calle	ceretti	sin datos	nu?ez	ceretti y nuã‘ez	12	-58.50151750	-34.56767549	peaton	auto	peaton	femenino	70	lunes	peaton	auto	65+	t
2016-0089	1	2016-07-14	2016	julio	14	06:40:00	autopista	lugones, leopoldo av.	sin datos	la pampa	lugones, leopoldo av. y la pampa	13	-58.43233425	-34.55185825	peaton	auto	peaton	masculino	35	jueves	peaton	auto	30-44	t
2016-0090	1	2016-07-14	2016	julio	14	22:00:00	avenida	salguero, jeronimo	sin datos	rivadavia av.	salguero, jeronimo y rivadavia av.	5	-58.41971993	-34.61112240	peaton	pasajeros	peaton	masculino	60	jueves	peaton	pasajeros	45-64	t
2016-0092	1	2016-07-15	2016	julio	15	11:00:00	gral paz	paz, gral. av.	sin datos	del libertador av.	paz, gral. av. y del libertador av.	13	-58.46743471	-34.53476874	moto	cargas	conductor	masculino	24	viernes	moto	cargas	18-29	t
2016-0093	1	2016-07-17	2016	julio	17	03:30:00	avenida	alberdi, juan bautista av.	sin datos	mitre, emilio	alberdi, juan bautista av. y mitre, emilio	6	-58.44362126	-34.62301748	auto	auto	conductor	masculino	35	domingo	auto	auto	30-44	t
2016-0095	1	2016-07-23	2016	julio	23	06:12:00	avenida	mercedes	sin datos	mosconi general av.	mercedes y mosconi general av.	11	-58.51713095	-34.59546519	moto	auto	conductor	masculino	29	sabado	moto	auto	18-29	t
2016-0096	1	2016-07-25	2016	julio	25	07:00:00	autopista	autopista dellepiane luis tte. gral.	sin datos	sin datos	autopista dellepiane luis tte. gral.	8	-58.47433193007387	-34.66684950051973	moto	cargas	conductor	masculino	\N	lunes	moto	cargas	sin datos	f
2016-0097	1	2016-07-26	2016	julio	26	18:45:00	calle	solis	sin datos	mexico	solis y mexico	1	-58.39038605	-34.61562810	peaton	auto	peaton	masculino	80	martes	peaton	auto	65+	t
2016-0098	1	2016-07-27	2016	julio	27	16:08:00	avenida	san juan av.	sin datos	alberti	san juan av. y alberti	3	-58.40042405	-34.62356174	moto	cargas	conductor	femenino	43	miercoles	moto	cargas	30-44	t
2016-0099	1	2016-07-29	2016	julio	29	16:00:00	gral paz	mosconi general av.	sin datos	paz, gral. av.	mosconi general av. y paz, gral. av.	11	-58.52340614	-34.59798754	cargas	cargas	conductor	masculino	45	viernes	cargas	cargas	45-64	t
2016-0100	1	2016-08-03	2016	agosto	3	23:27:00	gral paz	paz, gral. av.	sin datos	donado	paz, gral. av. y donado	12	-58.49491054	-34.54795581	moto	objeto fijo	conductor	masculino	57	miercoles	moto	objeto fijo	45-64	t
2016-0101	1	2016-08-07	2016	agosto	7	19:42:00	gral paz	paz, gral. av.	sin datos	chavez, jorge	paz, gral. av. y chavez, jorge	9	-58.52932872	-34.65014993	sin datos	sin datos	sin datos	masculino	67	domingo	sin datos	sin datos	65+	t
2016-0102	1	2016-08-10	2016	agosto	10	23:37:00	avenida	peron, eva av.	sin datos	suarez, jose leon	peron, eva av. y suarez, jose leon	9	-58.50011639	-34.67316502	moto	cargas	conductor	masculino	29	miercoles	moto	cargas	18-29	t
2016-0104	1	2016-08-14	2016	agosto	14	21:15:00	avenida	zinny	sin datos	santiago de compostela av.	zinny y santiago de compostela av.	9	-58.46635001	-34.65624369	moto	pasajeros	conductor	masculino	21	domingo	moto	pasajeros	18-29	t
2016-0105	1	2016-08-17	2016	agosto	17	00:05:00	avenida	lacroze, federico av.	sin datos	fraga	lacroze, federico av. y fraga	15	-58.45343236	-34.58435809	peaton	pasajeros	peaton	masculino	19	miercoles	peaton	pasajeros	18-29	t
2016-0106	1	2016-08-19	2016	agosto	19	21:02:00	avenida	pellegrini, carlos	sin datos	del libertador av.	pellegrini, carlos y del libertador av.	1	-58.38090932	-34.58927731	peaton	pasajeros	peaton	masculino	38	viernes	peaton	pasajeros	30-44	t
2016-0107	1	2016-08-20	2016	agosto	20	08:22:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y don pedro de mendoza av.	4	-58.37157668	-34.65429986	moto	auto	conductor	masculino	21	sabado	moto	auto	18-29	f
2016-0109	1	2016-08-24	2016	agosto	24	05:45:00	autopista	autopista perito moreno	sin datos	barragan	autopista perito moreno y barragan	9	-58.52280139	-34.63659934	auto	objeto fijo	conductor	femenino	53	miercoles	auto	objeto fijo	45-64	t
2016-0110	1	2016-08-24	2016	agosto	24	20:21:00	avenida	alberdi, juan bautista av.	sin datos	carhue	alberdi, juan bautista av. y carhue	9	-58.51232237	-34.65903530	peaton	sin datos	peaton	masculino	57	miercoles	peaton	sin datos	45-64	t
2016-0111	1	2016-08-25	2016	agosto	25	09:30:00	autopista	lugones	sin datos	la pampa	lugones y la pampa	15	-58.47461905	-34.57663634	moto	cargas	conductor	masculino	27	jueves	moto	cargas	18-29	t
2016-0112	1	2016-08-27	2016	agosto	27	04:40:00	autopista	autopista 25 de mayo	sin datos	autopista 1 sur presidente arturo frondizi	autopista 25 de mayo y autopista 1 sur presidente arturo frondizi	1	-58.38268809	-34.62282019	moto	objeto fijo	conductor	masculino	24	sabado	moto	objeto fijo	18-29	t
2016-0113	1	2016-08-27	2016	agosto	27	16:45:00	avenida	alberdi, juan bautista av.	sin datos	guardia nacional	alberdi, juan bautista av. y guardia nacional	9	-58.49603546	-34.64564271	peaton	pasajeros	peaton	femenino	60	sabado	peaton	pasajeros	45-64	t
2016-0114	1	2016-08-31	2016	agosto	31	11:20:00	calle	salguero, jeronimo	1410.0	sin datos	salguero, jeronimo 1410	14	-58.41848605	-34.59394733	bicicleta	cargas	ciclista	femenino	55	miercoles	bicicleta	cargas	45-64	f
2016-0115	1	2016-09-02	2016	septiembre	2	11:50:00	calle	arias	sin datos	tronador	arias y tronador	12	-58.48935041	-34.54917673	sin datos	cargas	sin datos	masculino	\N	viernes	sin datos	cargas	sin datos	t
2016-0116	1	2016-09-02	2016	septiembre	2	20:20:00	avenida	27 de febrero av.	sin datos	escalada av.	27 de febrero av. y escalada av.	8	-58.44451316	-34.68475866	moto	auto	conductor	masculino	30	viernes	moto	auto	30-44	t
2016-0117	1	2016-09-03	2016	septiembre	3	15:30:00	avenida	del libertador av.	sin datos	tagle	del libertador av. y tagle	14	-58.39936478	-34.58271474	auto	auto	conductor	masculino	43	sabado	auto	auto	30-44	t
2016-0118	1	2016-09-04	2016	septiembre	4	03:30:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi km. 2.9	1	-58.37936704	-34.62694503	auto	auto	conductor	masculino	27	domingo	auto	auto	18-29	f
2016-0119	1	2016-09-04	2016	septiembre	4	06:40:00	avenida	larralde, crisologo av.	sin datos	triunvirato av.	larralde, crisologo av. y triunvirato av.	12	-58.49659234	-34.56353635	sin datos	sin datos	pasajero_acompañante	femenino	\N	domingo	sin datos	sin datos	sin datos	t
2016-0122	1	2016-09-13	2016	septiembre	13	07:10:00	avenida	peron, eva av.	4233.0	sin datos	peron, eva av. 4233	9	-58.47256391	-34.65194557	bicicleta	pasajeros	ciclista	masculino	49	martes	bicicleta	pasajeros	45-64	f
2016-0123	1	2016-09-14	2016	septiembre	14	09:00:00	avenida	asamblea av.	sin datos	bonorino, esteban, cnel. av.	asamblea av. y bonorino, esteban, cnel. av.	7	-58.45130953	-34.64053676	moto	auto	conductor	femenino	58	miercoles	moto	auto	45-64	t
2016-0124	1	2016-09-16	2016	septiembre	16	15:24:00	avenida	rivadavia av.	sin datos	rivera indarte av.	rivadavia av. y rivera indarte av.	7	-58.46271207	-34.62884871	peaton	pasajeros	peaton	masculino	67	viernes	peaton	pasajeros	65+	t
2016-0125	1	2016-09-17	2016	septiembre	17	12:14:00	autopista	autopista perito moreno	sin datos	alberdi, juan bautista av.	autopista perito moreno y alberdi, juan bautista av.	10	-58.49020869	-34.64243791	moto	moto	conductor	masculino	30	sabado	moto	moto	30-44	t
2016-0126	2	2016-09-18	2016	septiembre	18	22:45:00	calle	irigoyen	sin datos	tinogasta	irigoyen y tinogasta	10	-58.52572109	-34.62125906	auto	cargas	conductor	masculino	37	domingo	auto	cargas	30-44	t
2016-0126	2	2016-09-18	2016	septiembre	18	22:45:00	calle	irigoyen	sin datos	tinogasta	irigoyen y tinogasta	10	-58.52572109	-34.62125906	auto	cargas	pasajero_acompañante	masculino	60	domingo	auto	cargas	45-64	t
2016-0127	1	2016-09-24	2016	septiembre	24	10:25:00	avenida	acosta, mariano	sin datos	roca, cnel. av.	acosta, mariano y roca, cnel. av.	8	-58.44094791	-34.66677111	peaton	pasajeros	peaton	masculino	50	sabado	peaton	pasajeros	45-64	t
2016-0128	1	2016-10-02	2016	octubre	2	11:30:00	avenida	castro	sin datos	pavon av.	castro y pavon av.	5	-58.41914024	-34.63053890	peaton	pasajeros	peaton	femenino	81	domingo	peaton	pasajeros	65+	t
2016-0130	1	2016-10-04	2016	octubre	4	12:30:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y brasil	1	-58.37910942	-34.62764717	moto	cargas	conductor	masculino	29	martes	moto	cargas	18-29	f
2016-0131	1	2016-10-09	2016	octubre	9	19:13:00	calle	mirave	3500.0	sin datos	mirave 3500	4	-58.39871183	-34.64539318	peaton	auto	peaton	masculino	35	domingo	peaton	auto	30-44	f
2016-0132	1	2016-10-10	2016	octubre	10	02:30:00	avenida	san juan av.	sin datos	24 de noviembre	san juan av. y 24 de noviembre	3	-58.41036975	-34.62477021	auto	pasajeros	pasajero_acompañante	masculino	30	lunes	auto	pasajeros	30-44	t
2016-0133	1	2016-10-14	2016	octubre	14	00:05:00	avenida	las heras general av.	sin datos	sanchez de bustamante	las heras general av. y sanchez de bustamante	14	-58.40204698	-34.58342690	moto	auto	conductor	masculino	41	viernes	moto	auto	30-44	t
2016-0134	1	2016-10-23	2016	octubre	23	05:00:00	avenida	piedra buena av.	sin datos	2 de abril de 1982	piedra buena av. y 2 de abril de 1982	8	-58.48935287	-34.67648597	moto	objeto fijo	conductor	masculino	25	domingo	moto	objeto fijo	18-29	t
2016-0135	1	2016-10-24	2016	octubre	24	05:00:00	avenida	figueroa alcorta, pres. av.	sin datos	pinedo, int.	figueroa alcorta, pres. av. y pinedo, int.	14	-58.42260225	-34.56403694	peaton	sin datos	peaton	masculino	29	lunes	peaton	sin datos	18-29	t
2016-0136	1	2016-10-25	2016	octubre	25	00:00:00	autopista	autopista buenos aires - la plata	sin datos	sin datos	sin datos	4	sin datos	sin datos	moto	cargas	conductor	sin datos	\N	martes	moto	cargas	sin datos	f
2016-0137	1	2016-10-25	2016	octubre	25	00:39:00	avenida	san martin av.	sin datos	ladines	san martin av. y ladines	11	-58.51537091	-34.59035925	moto	moto	conductor	masculino	30	martes	moto	moto	30-44	t
2016-0139	1	2016-10-28	2016	octubre	28	23:00:00	avenida	figueroa alcorta, pres. av.	sin datos	dorrego av.	figueroa alcorta, pres. av. y dorrego av.	14	-58.42008769	-34.56539579	moto	moto	pasajero_acompañante	femenino	35	viernes	moto	moto	30-44	t
2016-0140	1	2016-10-31	2016	octubre	31	02:58:00	avenida	juramento av.	sin datos	vuelta de obligado	juramento av. y vuelta de obligado	13	-58.45566399	-34.56147293	pasajeros	pasajeros	pasajero_acompañante	masculino	20	lunes	pasajeros	pasajeros	18-29	t
2016-0142	1	2016-11-05	2016	noviembre	5	23:30:00	avenida	del libertador av.	sin datos	ramos mejia, jose maria, dr. av.	del libertador av. y ramos mejia, jose maria, dr. av.	1	-58.37533517	-34.59276462	moto	pasajeros	conductor	masculino	46	sabado	moto	pasajeros	45-64	t
2016-0143	1	2016-11-06	2016	noviembre	6	04:41:00	avenida	27 de febrero av.	sin datos	escalada av.	27 de febrero av. y escalada av.	8	-58.44451316	-34.68475866	moto	sin datos	conductor	masculino	35	domingo	moto	sin datos	30-44	t
2016-0144	1	2016-11-07	2016	noviembre	7	12:10:00	avenida	brown, alte. av.	984.0	sin datos	brown, alte. av. 984	4	-58.35975012	-34.63343907	peaton	pasajeros	peaton	masculino	83	lunes	peaton	pasajeros	65+	f
2016-0145	1	2016-11-07	2016	noviembre	7	20:56:00	avenida	del libertador av.	sin datos	la pampa	del libertador av. y la pampa	13	-58.44523595	-34.55953855	moto	auto	conductor	masculino	39	lunes	moto	auto	30-44	t
2016-0146	1	2016-11-09	2016	noviembre	9	20:00:00	avenida	pichincha av.	sin datos	brasil	pichincha av. y brasil	4	-58.39626094	-34.63036565	peaton	pasajeros	peaton	femenino	29	miercoles	peaton	pasajeros	18-29	t
2016-0147	1	2016-11-16	2016	noviembre	16	21:15:00	avenida	independencia av.	sin datos	cevallos, virrey	independencia av. y cevallos, virrey	1	-58.38896772	-34.61799615	movil	pasajeros	pasajero_acompañante	masculino	55	miercoles	movil	pasajeros	45-64	t
2016-0148	1	2016-11-16	2016	noviembre	16	22:20:00	avenida	garmendia av.	4895.0	sin datos	garmendia av. 4895	15	-58.46536113	-34.59484504	moto	moto	conductor	masculino	\N	miercoles	moto	moto	sin datos	f
2016-0150	1	2016-11-18	2016	noviembre	18	18:20:00	avenida	alcorta, amancio av.	sin datos	taborda, diogenes	alcorta, amancio av. y taborda, diogenes	4	-58.40879146	-34.65273216	cargas	cargas	pasajero_acompañante	masculino	41	viernes	cargas	cargas	30-44	t
2016-0152	1	2016-11-23	2016	noviembre	23	21:10:00	avenida	moreno, perito av.	sin datos	zuviria	moreno, perito av. y zuviria	7	-58.46451841	-34.64991946	moto	auto	conductor	masculino	42	miercoles	moto	auto	30-44	t
2016-0153	1	2016-11-25	2016	noviembre	25	15:42:00	avenida	araoz	sin datos	cordoba av.	araoz y cordoba av.	15	-58.42917090	-34.59485488	peaton	moto	peaton	femenino	83	viernes	peaton	moto	65+	t
2016-0154	1	2016-11-26	2016	noviembre	26	14:14:00	gral paz	paz, gral. av.	15200.0	sin datos	paz, gral. av. 15200	8	-58.49007772	-34.68251141	moto	moto	conductor	masculino	38	sabado	moto	moto	30-44	f
2016-0155	1	2016-11-26	2016	noviembre	26	16:50:00	calle	madero	900.0	sin datos	madero 900	10	-58.52756365	-34.62772274	peaton	auto	peaton	femenino	29	sabado	peaton	auto	18-29	f
2016-0156	1	2016-11-26	2016	noviembre	26	19:40:00	avenida	independencia av.	sin datos	dean funes	independencia av. y dean funes	3	-58.40638983	-34.61943202	moto	pasajeros	conductor	masculino	23	sabado	moto	pasajeros	18-29	t
2016-0157	1	2016-12-03	2016	diciembre	3	06:40:00	avenida	justo, juan b. av.	5645.0	sin datos	justo, juan b. av. 5645	11	-58.47576807	-34.61740997	moto	moto	conductor	masculino	23	sabado	moto	moto	18-29	f
2016-0159	1	2016-12-04	2016	diciembre	4	07:21:00	avenida	27 de febrero av.	sin datos	escalada av.	27 de febrero av. y escalada av.	8	-58.44451316	-34.68475866	auto	sin datos	conductor	masculino	23	domingo	auto	sin datos	18-29	t
2016-0160	1	2016-12-06	2016	diciembre	6	05:30:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno (altura velez sarsfield)	9	-58.51927194	-34.63635787	cargas	objeto fijo	conductor	masculino	29	martes	cargas	objeto fijo	18-29	f
2016-0161	1	2016-12-06	2016	diciembre	6	07:22:00	avenida	santa fe av.	sin datos	godoy cruz	santa fe av. y godoy cruz	14	-58.42525456	-34.57866344	peaton	pasajeros	peaton	masculino	50	martes	peaton	pasajeros	45-64	t
2016-0162	1	2016-12-07	2016	diciembre	7	05:00:00	avenida	lacroze, federico av.	sin datos	forest av.	lacroze, federico av. y forest av.	15	-58.45396573	-34.58518167	peaton	auto	peaton	masculino	38	miercoles	peaton	auto	30-44	t
2016-0163	1	2016-12-10	2016	diciembre	10	07:30:00	gral paz	paz, gral. av.	sin datos	mosconi general av.	paz, gral. av. y mosconi general av.	11	-58.52340614	-34.59798754	moto	auto	conductor	masculino	23	sabado	moto	auto	18-29	t
2016-0164	1	2016-12-11	2016	diciembre	11	06:16:00	avenida	la plata av.	sin datos	pomar, gregorio tte. cnel.	la plata av. y pomar, gregorio tte. cnel.	4	-58.42323628	-34.64119105	auto	auto	conductor	masculino	29	domingo	auto	auto	18-29	t
2016-0165	1	2016-12-12	2016	diciembre	12	08:25:00	avenida	garcia, martin av.	300.0	sin datos	garcia, martin av. 300	4	-58.36926144	-34.62841919	bicicleta	pasajeros	ciclista	masculino	37	lunes	bicicleta	pasajeros	30-44	f
2016-0168	1	2016-12-13	2016	diciembre	13	10:40:00	avenida	la plata av.	sin datos	pomar, gregorio tte. cnel.	la plata av. y pomar, gregorio tte. cnel.	4	-58.42323628	-34.64119105	moto	auto	conductor	masculino	43	martes	moto	auto	30-44	t
2016-0169	1	2016-12-15	2016	diciembre	15	15:30:00	avenida	nu?ez	sin datos	balbin, ricardo, dr. av.	nuã‘ez y balbin, ricardo, dr. av.	12	-58.47935434	-34.55676497	moto	pasajeros	conductor	masculino	24	jueves	moto	pasajeros	18-29	t
2016-0170	1	2016-12-19	2016	diciembre	19	17:10:00	gral paz	paz, gral. av.	4500.0	sin datos	paz, gral. av. 4500	12	-58.50598256	-34.56379980	moto	auto	pasajero_acompañante	masculino	21	lunes	moto	auto	18-29	f
2016-0171	1	2016-12-25	2016	diciembre	25	19:00:00	autopista	huergo, ing. av.	sin datos	autopista 25 de mayo	huergo, ing. av. y autopista 25 de mayo	1	-58.36607137	-34.62150748	moto	moto	conductor	sin datos	\N	domingo	moto	moto	sin datos	t
2016-0172	1	2016-12-26	2016	diciembre	26	08:00:00	avenida	garay, juan de av.	sin datos	castro	garay, juan de av. y castro	5	-58.41918902	-34.63174259	moto	cargas	conductor	masculino	38	lunes	moto	cargas	30-44	t
2016-0173	1	2016-12-26	2016	diciembre	26	19:52:00	avenida	directorio av.	sin datos	san pedrito av.	directorio av. y san pedrito av.	7	-58.46749188	-34.63551751	moto	cargas	conductor	masculino	35	lunes	moto	cargas	30-44	t
2016-0174	1	2016-12-27	2016	diciembre	27	00:00:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo	0	sin datos	sin datos	sin datos	sin datos	sin datos	sin datos	\N	martes	sin datos	sin datos	sin datos	f
2016-0175	1	2016-12-27	2016	diciembre	27	08:15:00	calle	falcon, ramon l.,cnel.	sin datos	membrillar	falcon, ramon l.,cnel. y membrillar	7	-58.46064174	-34.62960517	peaton	bicicleta	peaton	femenino	\N	martes	peaton	bicicleta	sin datos	t
2016-0176	1	2016-12-28	2016	diciembre	28	01:41:00	avenida	belgrano av.	sin datos	paseo colon av.	belgrano av. y paseo colon av.	1	-58.36956186	-34.61232875	moto	pasajeros	conductor	masculino	28	miercoles	moto	pasajeros	18-29	t
2016-0177	1	2016-12-29	2016	diciembre	29	04:00:00	calle	arenales	3319.0	sin datos	arenales 3319	14	-58.40966671	-34.58788235	peaton	auto	peaton	femenino	27	jueves	peaton	auto	18-29	f
2016-0178	1	2016-12-30	2016	diciembre	30	16:18:00	calle	republica bolivariana de venezuela	sin datos	saavedra	republica bolivariana de venezuela y saavedra	3	-58.40288226	-34.61544091	peaton	multiple	peaton	femenino	7	viernes	multiple	sin datos	0-17	t
2017-0001	1	2017-01-02	2017	enero	2	01:00:00	avenida	justo, juan b. av.	sin datos	achupallas	justo, juan b. av. y achupallas	11	-58.46594230	-34.61028571	moto	cargas	conductor	masculino	18	lunes	moto	cargas	18-29	t
2017-0003	1	2017-01-05	2017	enero	5	03:10:00	avenida	olavarria	sin datos	velez sarsfield av.	olavarria y velez sarsfield av.	4	-58.38957669	-34.64410277	cargas	cargas	pasajero_acompañante	masculino	33	jueves	cargas	cargas	30-44	t
2017-0007	1	2017-01-11	2017	enero	11	17:00:00	calle	lima	sin datos	mexico	lima y mexico	1	-58.38161660	-34.61529543	peaton	multiple	peaton	masculino	48	miercoles	multiple	sin datos	45-64	t
2017-0008	1	2017-01-16	2017	enero	16	00:40:00	calle	cabrera, jose a.	sin datos	bonpland	cabrera, jose a. y bonpland	14	-58.43917004	-34.58494351	moto	pasajeros	conductor	masculino	29	lunes	moto	pasajeros	18-29	t
2017-0009	1	2017-01-16	2017	enero	16	13:56:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y boedo av.	5	-58.41595919	-34.62743346	moto	cargas	conductor	masculino	36	lunes	moto	cargas	30-44	f
2017-0010	1	2017-01-16	2017	enero	16	16:30:00	avenida	directorio av.	sin datos	riglos	directorio av. y riglos	6	-58.43564880	-34.62828656	moto	auto	conductor	masculino	23	lunes	moto	auto	18-29	t
2017-0011	1	2017-01-22	2017	enero	22	02:30:00	gral paz	paz, gral. av.	sin datos	balbin, ricardo, dr. av.	paz, gral. av. y balbin, ricardo, dr. av.	12	-58.50073810	-34.54979510	moto	objeto fijo	pasajero_acompañante	femenino	29	domingo	moto	objeto fijo	18-29	t
2017-0012	1	2017-01-24	2017	enero	24	14:00:00	calle	traful	sin datos	taborda, diogenes	traful y taborda, diogenes	4	-58.40969005	-34.65055290	moto	cargas	conductor	masculino	30	martes	moto	cargas	30-44	t
2017-0013	1	2017-01-27	2017	enero	27	07:00:00	avenida	iriarte, gral. av.	3055.0	sin datos	iriarte, gral. av. 3055	4	-58.38972622	-34.65098981	peaton	cargas	peaton	masculino	4	viernes	peaton	cargas	0-17	f
2017-0014	1	2017-01-28	2017	enero	28	08:27:34	avenida	donado	sin datos	arias	donado y arias	12	-58.49185972	-34.55046754	moto	multiple	pasajero_acompañante	femenino	22	sabado	multiple	sin datos	18-29	t
2017-0015	1	2017-02-02	2017	febrero	2	15:18:03	avenida	cordoba av.	sin datos	callao av.	cordoba av. y callao av.	2	-58.39293417	-34.59963642	peaton	auto	peaton	masculino	82	jueves	peaton	auto	65+	t
2017-0016	1	2017-02-03	2017	febrero	3	05:12:21	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo km. 8.3	1	-58.38099494	-34.62288231	moto	cargas	conductor	masculino	27	viernes	moto	cargas	18-29	f
2017-0017	1	2017-02-06	2017	febrero	6	08:00:00	avenida	justo, juan b. av.	sin datos	paraguay	justo, juan b. av. y paraguay	14	-58.42901200	-34.58095431	moto	auto	conductor	masculino	32	lunes	moto	auto	30-44	t
2017-0018	1	2017-02-09	2017	febrero	9	07:00:00	gral paz	paz, gral. av.	sin datos	de los corrales av.	paz, gral. av. y de los corrales av.	9	-58.50877521	-34.66977709	moto	auto	conductor	masculino	30	jueves	moto	auto	30-44	t
2017-0021	1	2017-02-18	2017	febrero	18	05:30:00	calle	sarmiento	sin datos	libertad	sarmiento y libertad	1	-58.38362373	-34.60509972	moto	pasajeros	conductor	masculino	43	sabado	moto	pasajeros	30-44	t
2017-0024	1	2017-02-23	2017	febrero	23	20:50:00	avenida	rivadavia av.	7121.0	sin datos	rivadavia av. 7121	7	-58.46589308	-34.62955795	peaton	pasajeros	peaton	masculino	39	jueves	peaton	pasajeros	30-44	f
2017-0025	1	2017-02-24	2017	febrero	24	17:05:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	rivera indarte av.	fernandez de la cruz, f., gral. av. y rivera indarte av.	7	-58.43614426	-34.65424640	moto	sin datos	conductor	masculino	23	viernes	moto	sin datos	18-29	t
2017-0026	2	2017-02-26	2017	febrero	26	05:15:00	avenida	moreno, perito av.	sin datos	fournier	moreno, perito av. y fournier	4	-58.41842777	-34.64979057	auto	objeto fijo	pasajero_acompañante	femenino	23	domingo	auto	objeto fijo	18-29	t
2017-0026	2	2017-02-26	2017	febrero	26	05:15:00	avenida	moreno, perito av.	sin datos	fournier	moreno, perito av. y fournier	4	-58.41842777	-34.64979057	auto	objeto fijo	conductor	masculino	19	domingo	auto	objeto fijo	18-29	t
2017-0027	1	2017-02-26	2017	febrero	26	21:57:00	avenida	caseros av.	1429.0	sin datos	caseros av. 1429	1	-58.38332245	-34.63193250	peaton	auto	peaton	masculino	\N	domingo	peaton	auto	sin datos	f
2017-0028	1	2017-02-28	2017	febrero	28	09:20:00	avenida	gaona av.	sin datos	fragata pres. sarmiento	gaona av. y fragata pres. sarmiento	6	-58.45475488	-34.61196327	peaton	auto	peaton	masculino	87	martes	peaton	auto	65+	t
2017-0029	1	2017-03-07	2017	marzo	7	02:15:00	calle	mozart	sin datos	tandil	mozart y tandil	9	-58.48501341	-34.64742455	sin datos	auto	sin datos	masculino	34	martes	sin datos	auto	30-44	t
2017-0030	1	2017-03-07	2017	marzo	7	08:00:00	avenida	mozart	sin datos	autopista dellepiane luis tte. gral.	mozart y autopista dellepiane luis tte. gral.	9	-58.47010988	-34.65872088	auto	pasajeros	conductor	femenino	27	martes	auto	pasajeros	18-29	t
2017-0031	1	2017-03-11	2017	marzo	11	01:30:00	calle	24 de noviembre	sin datos	pavon	24 de noviembre y pavon	3	-58.40997560	-34.62873635	auto	objeto fijo	pasajero_acompañante	masculino	70	sabado	auto	objeto fijo	65+	t
2017-0032	1	2017-03-12	2017	marzo	12	05:00:00	gral paz	paz, gral. av.	sin datos	los cedros	paz, gral. av. y los cedros	8	-58.48892175	-34.68359163	auto	auto	pasajero_acompañante	femenino	40	domingo	auto	auto	30-44	t
2017-0033	1	2017-03-12	2017	marzo	12	07:30:00	gral paz	paz, gral. av.	sin datos	gutierrez, ricardo	paz, gral. av. y gutierrez, ricardo	11	-58.52466448	-34.60325478	auto	auto	conductor	masculino	28	domingo	auto	auto	18-29	t
2017-0034	1	2017-03-13	2017	marzo	13	07:50:00	calle	godoy cruz	2651.0	sin datos	godoy cruz 2651	14	-58.42554218	-34.57929036	peaton	auto	peaton	masculino	43	lunes	peaton	auto	30-44	f
2017-0035	3	2017-03-23	2017	marzo	23	05:00:00	avenida	achaval rodriguez, t., dr. av.	sin datos	villaflor, azucena	achaval rodriguez, t., dr. av. y villaflor, azucena	1	-58.35881506	-34.61113641	auto	objeto fijo	conductor	masculino	28	jueves	auto	objeto fijo	18-29	t
2017-0035	3	2017-03-23	2017	marzo	23	05:00:00	avenida	achaval rodriguez, t., dr. av.	sin datos	villaflor, azucena	achaval rodriguez, t., dr. av. y villaflor, azucena	1	-58.35881506	-34.61113641	auto	objeto fijo	pasajero_acompañante	masculino	32	jueves	auto	objeto fijo	30-44	t
2017-0035	3	2017-03-23	2017	marzo	23	05:00:00	avenida	achaval rodriguez, t., dr. av.	sin datos	villaflor, azucena	achaval rodriguez, t., dr. av. y villaflor, azucena	1	-58.35881506	-34.61113641	auto	objeto fijo	pasajero_acompañante	masculino	30	jueves	auto	objeto fijo	30-44	t
2017-0036	2	2017-03-29	2017	marzo	29	18:00:00	gral paz	paz, gral. av.	sin datos	campana	paz, gral. av. y campana	12	-58.51452347	-34.58159762	moto	pasajeros	pasajero_acompañante	femenino	\N	miercoles	moto	pasajeros	sin datos	t
2017-0036	2	2017-03-29	2017	marzo	29	18:00:00	gral paz	paz, gral. av.	sin datos	campana	paz, gral. av. y campana	12	-58.51452347	-34.58159762	moto	pasajeros	conductor	masculino	20	miercoles	moto	pasajeros	18-29	t
2017-0037	1	2017-03-31	2017	marzo	31	03:00:00	avenida	independencia av.	sin datos	cevallos, virrey	independencia av. y cevallos, virrey	1	-58.38896772	-34.61799615	moto	cargas	conductor	masculino	41	viernes	moto	cargas	30-44	t
2017-0038	1	2017-04-01	2017	abril	1	19:00:00	avenida	casta?ares av.	sin datos	lautaro	castaã‘ares av. y lautaro	7	-58.44516857	-34.64363363	moto	auto	conductor	femenino	40	sabado	moto	auto	30-44	t
2017-0040	1	2017-04-03	2017	abril	3	09:40:00	avenida	guiraldes, int.	2699.0	sin datos	guiraldes, int. 2699	13	-58.43834197	-34.54560369	auto	multiple	conductor	masculino	43	lunes	multiple	sin datos	30-44	f
2017-0041	1	2017-04-03	2017	abril	3	23:15:00	calle	fernandez moreno, baldomero	2186.0	sin datos	fernandez moreno, baldomero 2186	7	-58.45485084	-34.63531854	moto	auto	conductor	masculino	17	lunes	moto	auto	0-17	f
2017-0042	1	2017-04-10	2017	abril	10	09:00:00	gral paz	lugones, leopoldo av.	sin datos	sin datos	lugones, leopoldo av.	14	sin datos	sin datos	moto	cargas	conductor	masculino	\N	lunes	moto	cargas	sin datos	f
2017-0045	1	2017-04-14	2017	abril	14	06:15:00	calle	nogoya	5940.0	sin datos	nogoya 5940	10	-58.52449285	-34.62454175	moto	objeto fijo	conductor	masculino	21	viernes	moto	objeto fijo	18-29	f
2017-0047	1	2017-04-23	2017	abril	23	06:30:00	avenida	argentina av.	sin datos	corvalan	argentina av. y corvalan	8	-58.46713742	-34.67198790	moto	auto	conductor	masculino	37	domingo	moto	auto	30-44	t
2017-0049	1	2017-04-27	2017	abril	27	18:16:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	varela av.	fernandez de la cruz, f., gral. av. y varela av.	8	-58.43850413	-34.65554754	peaton	pasajeros	peaton	masculino	22	jueves	peaton	pasajeros	18-29	t
2017-0050	2	2017-04-28	2017	abril	28	11:08:08	autopista	autopista perito moreno	sin datos	sin datos	sin datos	9	sin datos	sin datos	moto	cargas	conductor	masculino	46	viernes	moto	cargas	45-64	f
2017-0050	2	2017-04-28	2017	abril	28	11:08:08	autopista	autopista perito moreno	sin datos	sin datos	sin datos	9	sin datos	sin datos	moto	cargas	pasajero_acompañante	masculino	16	viernes	moto	cargas	0-17	f
2017-0051	1	2017-05-01	2017	mayo	1	03:47:47	autopista	autopista dellepiane luis tte. gral.	sin datos	sin datos	sin datos	7	sin datos	sin datos	auto	auto	conductor	masculino	33	lunes	auto	auto	30-44	f
2017-0052	1	2017-05-05	2017	mayo	5	03:40:00	gral paz	paz, gral. av.	sin datos	goleta santa cruz	paz, gral. av. y goleta santa cruz	8	-58.49413799	-34.68095739	peaton	cargas	peaton	femenino	47	viernes	peaton	cargas	45-64	t
2017-0053	1	2017-05-05	2017	mayo	5	20:16:22	calle	vieytes	sin datos	villarino	vieytes y villarino	4	-58.37547846	-34.65326075	moto	cargas	conductor	masculino	28	viernes	moto	cargas	18-29	t
2017-0054	1	2017-05-07	2017	mayo	7	21:00:00	avenida	de los constituyentes av.	sin datos	moran, pedro	de los constituyentes av. y moran, pedro	15	-58.48680218	-34.58689719	moto	auto	pasajero_acompañante	femenino	20	domingo	moto	auto	18-29	t
2017-0055	1	2017-05-09	2017	mayo	9	08:30:00	avenida	de los constituyentes av.	4900.0	sin datos	de los constituyentes av. 4900	12	-58.49563989	-34.57962262	auto	auto	conductor	masculino	32	martes	auto	auto	30-44	f
2017-0058	1	2017-05-09	2017	mayo	9	23:10:00	avenida	cordoba av.	sin datos	libertad	cordoba av. y libertad	1	-58.38403232	-34.59915940	peaton	moto	peaton	masculino	80	martes	peaton	moto	65+	t
2017-0059	1	2017-05-11	2017	mayo	11	09:24:00	calle	brasil	sin datos	lima	brasil y lima	1	-58.38223382	-34.62693865	peaton	pasajeros	peaton	femenino	39	jueves	peaton	pasajeros	30-44	t
2017-0060	1	2017-05-13	2017	mayo	13	07:20:00	avenida	escalada av.	sin datos	fernandez de la cruz, f., gral. av.	escalada av. y fernandez de la cruz, f., gral. av.	8	-58.45966521	-34.67323292	moto	objeto fijo	pasajero_acompañante	masculino	30	sabado	moto	objeto fijo	30-44	t
2017-0061	1	2017-05-15	2017	mayo	15	13:29:30	avenida	paraguay	sin datos	callao av.	paraguay y callao av.	2	-58.39303911	-34.59871111	peaton	moto	peaton	masculino	47	lunes	peaton	moto	45-64	t
2017-0062	1	2017-05-15	2017	mayo	15	16:00:00	avenida	justo, juan b. av.	sin datos	san blas	justo, juan b. av. y san blas	10	-58.51262106	-34.63395999	moto	cargas	conductor	masculino	35	lunes	moto	cargas	30-44	t
2017-0063	1	2017-05-17	2017	mayo	17	10:13:00	avenida	chile	sin datos	9 de julio av.	chile y 9 de julio av.	1	-58.38118367	-34.61646839	peaton	pasajeros	peaton	femenino	79	miercoles	peaton	pasajeros	65+	t
2017-0064	1	2017-05-20	2017	mayo	20	05:00:00	calle	maipu	sin datos	peron, juan domingo, tte. general	maipu y peron, juan domingo, tte. general	1	-58.37653284	-34.60582475	cargas	auto	pasajero_acompañante	masculino	61	sabado	cargas	auto	45-64	t
2017-0065	1	2017-05-22	2017	mayo	22	16:00:00	avenida	suarez av.	sin datos	herrera	suarez av. y herrera	4	-58.37709334	-34.64035082	bicicleta	cargas	ciclista	masculino	21	lunes	bicicleta	cargas	18-29	t
2017-0066	1	2017-05-22	2017	mayo	22	18:10:00	avenida	san martin av.	sin datos	fragata pres. sarmiento	san martin av. y fragata pres. sarmiento	15	-58.46002142	-34.60409469	peaton	pasajeros	peaton	masculino	10	lunes	peaton	pasajeros	0-17	t
2017-0067	1	2017-05-23	2017	mayo	23	02:45:00	avenida	directorio av.	sin datos	moreno, jose maria av.	directorio av. y moreno, jose maria av.	6	-58.43381970	-34.62801894	moto	cargas	conductor	masculino	21	martes	moto	cargas	18-29	t
2017-0068	1	2017-05-27	2017	mayo	27	19:50:00	avenida	rabanal, francisco, intendente av.	2950.0	sin datos	rabanal, francisco, intendente av. 2950	8	-58.43580656	-34.66437532	moto	objeto fijo	conductor	masculino	32	sabado	moto	objeto fijo	30-44	f
2017-0069	1	2017-05-24	2017	mayo	24	14:15:00	gral paz	paz, gral. av.	sin datos	schmidl, ulrico	paz, gral. av. y schmidl, ulrico	9	-58.52173071	-34.65997463	moto	sin datos	conductor	masculino	39	miercoles	moto	sin datos	30-44	t
2017-0070	1	2017-05-30	2017	mayo	30	13:20:00	calle	nueva york	3696.0	sin datos	nueva york 3696	11	-58.50791763	-34.59804273	peaton	auto	peaton	masculino	80	martes	peaton	auto	65+	f
2017-0072	1	2017-06-03	2017	junio	3	23:20:00	avenida	de los constituyentes av.	sin datos	vallejos	de los constituyentes av. y vallejos	12	-58.49175088	-34.58226957	auto	auto	conductor	masculino	25	sabado	auto	auto	18-29	t
2017-0073	1	2017-06-04	2017	junio	4	09:00:00	avenida	corrientes av.	sin datos	ecuador	corrientes av. y ecuador	3	-58.40781467	-34.60425669	moto	auto	conductor	masculino	19	domingo	moto	auto	18-29	t
2017-0074	1	2017-06-04	2017	junio	4	12:50:00	calle	casco	133.0	sin datos	casco 133	9	-58.52567073	-34.63787791	sin datos	sin datos	sin datos	masculino	70	domingo	sin datos	sin datos	65+	f
2017-0075	1	2017-06-12	2017	junio	12	22:38:00	avenida	de mayo av.	sin datos	9 de julio av.	de mayo av. y 9 de julio av.	1	-58.38154200	-34.60906385	peaton	moto	peaton	masculino	55	lunes	peaton	moto	45-64	t
2017-0076	1	2017-06-13	2017	junio	13	14:50:00	avenida	castillo, ramon s., pres. av.	sin datos	calle 12 (no oficial)	castillo, ramon s., pres. av. y calle 12 (no oficial)	2	-58.38526125	-34.57805810	peaton	cargas	peaton	femenino	30	martes	peaton	cargas	30-44	t
2017-0077	1	2017-06-17	2017	junio	17	23:45:00	calle	fray justo santamaria de oro	1930.0	sin datos	fray justo santamaria de oro 1930	14	-58.42934104	-34.58451712	moto	cargas	conductor	femenino	60	sabado	moto	cargas	45-64	f
2017-0079	1	2017-06-19	2017	junio	19	16:26:00	calle	mexico	sin datos	dean funes	mexico y dean funes	3	-58.40657493	-34.61781124	moto	cargas	conductor	masculino	33	lunes	moto	cargas	30-44	t
2017-0080	1	2017-06-22	2017	junio	22	10:15:00	avenida	alberdi, juan bautista av.	sin datos	escalada av.	alberdi, juan bautista av. y escalada av.	9	-58.49525314	-34.64487785	peaton	cargas	peaton	femenino	95	jueves	peaton	cargas	65+	t
2017-0082	1	2017-06-25	2017	junio	25	22:40:00	avenida	entre rios av.	sin datos	brasil	entre rios av. y brasil	4	-58.39092851	-34.62932696	peaton	auto	peaton	masculino	36	domingo	peaton	auto	30-44	t
2017-0083	1	2017-07-04	2017	julio	4	00:25:00	avenida	alberdi, juan bautista av.	sin datos	guardia nacional	alberdi, juan bautista av. y guardia nacional	9	-58.49603546	-34.64564271	moto	cargas	conductor	masculino	37	martes	moto	cargas	30-44	t
2017-0084	1	2017-07-05	2017	julio	5	12:49:00	avenida	del libertador av.	sin datos	rodriguez pe?a	del libertador av. y rodriguez peã‘a	2	-58.38502878	-34.58703485	peaton	pasajeros	peaton	femenino	73	miercoles	peaton	pasajeros	65+	t
2017-0085	1	2017-07-07	2017	julio	7	14:15:00	avenida	tacuari	sin datos	garcia, martin av.	tacuari y garcia, martin av.	4	-58.37261143	-34.63150425	peaton	pasajeros	peaton	masculino	84	viernes	peaton	pasajeros	65+	t
2017-0086	1	2017-07-09	2017	julio	9	07:30:00	avenida	rivadavia av.	sin datos	murguiondo	rivadavia av. y murguiondo	9	-58.51876802	-34.63905965	peaton	moto	peaton	femenino	30	domingo	peaton	moto	30-44	t
2017-0087	1	2017-07-10	2017	julio	10	10:45:00	calle	24 de noviembre	390.0	sin datos	24 de noviembre 390	3	-58.41095567	-34.61516101	peaton	auto	peaton	femenino	73	lunes	peaton	auto	65+	f
2017-0088	1	2017-07-10	2017	julio	10	22:30:00	avenida	paseo colon av.	sin datos	brasil av.	paseo colon av. y brasil av.	1	-58.36797542	-34.62519403	peaton	pasajeros	peaton	masculino	43	lunes	peaton	pasajeros	30-44	t
2017-0089	1	2017-07-13	2017	julio	13	12:05:00	calle	leguizamon, martiniano	901.0	sin datos	leguizamon, martiniano 901	9	-58.51514709	-34.64787051	sin datos	auto	sin datos	masculino	23	jueves	sin datos	auto	18-29	f
2017-0090	1	2017-07-15	2017	julio	15	05:15:00	gral paz	chivilcoy av.	sin datos	paz, gral. av.	chivilcoy av. y paz, gral. av.	11	-58.51925642	-34.59171721	peaton	auto	peaton	masculino	22	sabado	peaton	auto	18-29	t
2017-0091	1	2017-07-15	2017	julio	15	13:00:00	gral paz	superi	sin datos	paz, gral. av.	superi y paz, gral. av.	12	-58.48671535	-34.54321216	moto	sin datos	conductor	masculino	58	sabado	moto	sin datos	45-64	t
2017-0092	1	2017-07-24	2017	julio	24	22:16:01	autopista	autopista 25 de mayo	sin datos	autopista 1 sur presidente arturo frondizi	autopista 25 de mayo y autopista 1 sur presidente arturo frondizi	1	-58.38268809	-34.62282019	peaton	auto	peaton	masculino	66	lunes	peaton	auto	65+	t
2017-0093	1	2017-07-25	2017	julio	25	16:48:40	autopista	lugones, leopoldo av.	sin datos	puente distribuidor scalabrini ortiz	lugones, leopoldo av. y puente distribuidor scalabrini ortiz	13	-58.43633522	-34.54966288	peaton	auto	peaton	masculino	\N	martes	peaton	auto	sin datos	t
2017-0094	1	2017-07-27	2017	julio	27	08:50:00	calle	hugo, victor	2639.0	sin datos	hugo, victor 2639	10	-58.52640838	-34.61765855	bicicleta	cargas	ciclista	femenino	56	jueves	bicicleta	cargas	45-64	f
2017-0095	1	2017-08-06	2017	agosto	6	08:00:00	avenida	cordoba av.	sin datos	salguero, jeronimo	cordoba av. y salguero, jeronimo	14	-58.41894306	-34.59778875	moto	auto	conductor	masculino	36	domingo	moto	auto	30-44	t
2017-0096	1	2017-08-07	2017	agosto	7	19:50:00	avenida	cabildo av.	sin datos	nu?ez	cabildo av. y nuã‘ez	13	-58.46756026	-34.54972741	peaton	pasajeros	peaton	masculino	87	lunes	peaton	pasajeros	65+	t
2017-0098	1	2017-08-08	2017	agosto	8	12:10:00	calle	bonifacio, jose	2114.0	sin datos	bonifacio, jose 2114	7	-58.45715752	-34.63132912	peaton	auto	peaton	femenino	61	martes	peaton	auto	45-64	f
2017-0099	1	2017-08-17	2017	agosto	17	19:45:00	avenida	figueroa alcorta, pres. av.	5400.0	sin datos	figueroa alcorta, pres. av. 5400	14	-58.42406784	-34.56213916	bicicleta	auto	ciclista	masculino	28	jueves	bicicleta	auto	18-29	f
2017-0100	1	2017-08-21	2017	agosto	21	07:45:00	calle	republica bolivariana de venezuela	2135.0	sin datos	republica bolivariana de venezuela 2135	3	-58.39674470	-34.61512051	moto	objeto fijo	pasajero_acompañante	femenino	16	lunes	moto	objeto fijo	0-17	f
2017-0101	1	2017-08-23	2017	agosto	23	10:00:00	avenida	lacroze, federico av.	sin datos	zapata	lacroze, federico av. y zapata	13	-58.44537508	-34.57084818	peaton	multiple	peaton	femenino	61	miercoles	multiple	sin datos	45-64	t
2017-0102	1	2017-08-24	2017	agosto	24	01:10:00	avenida	iriarte, gral. av.	sin datos	zavaleta	iriarte, gral. av. y zavaleta	4	-58.40056767	-34.65107080	peaton	cargas	peaton	masculino	46	jueves	peaton	cargas	45-64	t
2017-0104	1	2017-08-25	2017	agosto	25	09:00:00	avenida	9 de julio av.	sin datos	estados unidos	9 de julio av. y estados unidos	1	-58.38109568	-34.61853244	peaton	cargas	peaton	femenino	18	viernes	peaton	cargas	18-29	t
2017-0106	1	2017-08-31	2017	agosto	31	19:50:00	calle	fray justo santamaria de oro	sin datos	guemes	fray justo santamaria de oro y guemes	14	-58.42533612	-34.58035258	peaton	pasajeros	peaton	femenino	85	jueves	peaton	pasajeros	65+	t
2017-0107	1	2017-09-01	2017	septiembre	1	11:30:00	avenida	del libertador av.	sin datos	jaramillo	del libertador av. y jaramillo	13	-58.46062311	-34.54395182	moto	cargas	conductor	masculino	41	viernes	moto	cargas	30-44	t
2017-0108	2	2017-09-02	2017	septiembre	2	04:53:08	gral paz	paz, gral. av.	sin datos	machain	paz, gral. av. y machain	12	-58.49491054	-34.54795581	auto	objeto fijo	pasajero_acompañante	masculino	17	sabado	auto	objeto fijo	0-17	t
2017-0108	2	2017-09-02	2017	septiembre	2	04:53:08	gral paz	paz, gral. av.	sin datos	machain	paz, gral. av. y machain	12	-58.49491054	-34.54795581	auto	objeto fijo	pasajero_acompañante	masculino	10	sabado	auto	objeto fijo	0-17	t
2017-0109	1	2017-09-04	2017	septiembre	4	21:00:00	avenida	directorio av.	sin datos	portela	directorio av. y portela	7	-58.47130269	-34.63665402	moto	auto	conductor	masculino	21	lunes	moto	auto	18-29	t
2017-0110	1	2017-09-06	2017	septiembre	6	14:15:00	avenida	lavalle	sin datos	alem, leandro n. av.	lavalle y alem, leandro n. av.	1	-58.37048800	-34.60189492	peaton	pasajeros	peaton	masculino	56	miercoles	peaton	pasajeros	45-64	t
2017-0111	1	2017-09-07	2017	septiembre	7	18:23:37	calle	uspallata	sin datos	pirovano	uspallata y pirovano	4	-58.42023854	-34.64234110	peaton	cargas	peaton	femenino	79	jueves	peaton	cargas	65+	t
2017-0112	2	2017-09-10	2017	septiembre	10	09:32:17	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y varela av.	7	-58.45807401	-34.63997430	auto	objeto fijo	pasajero_acompañante	masculino	1	domingo	auto	objeto fijo	0-17	f
2017-0112	2	2017-09-10	2017	septiembre	10	09:32:17	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y varela av.	7	-58.45807401	-34.63997430	auto	objeto fijo	pasajero_acompañante	masculino	\N	domingo	auto	objeto fijo	sin datos	f
2017-0113	1	2017-09-11	2017	septiembre	11	06:30:00	avenida	santa fe av.	sin datos	maipu	santa fe av. y maipu	1	-58.37697717	-34.59573848	peaton	pasajeros	peaton	femenino	76	lunes	peaton	pasajeros	65+	t
2017-0114	1	2017-09-15	2017	septiembre	15	02:30:00	avenida	alvear av.	sin datos	del libertador av.	alvear av. y del libertador av.	2	-58.39100580	-34.58498660	auto	objeto fijo	conductor	masculino	26	viernes	auto	objeto fijo	18-29	t
2017-0115	1	2017-09-19	2017	septiembre	19	18:52:33	avenida	pavon av.	sin datos	treinta y tres orientales	pavon av. y treinta y tres orientales	5	-58.42182126	-34.63089661	moto	bicicleta	conductor	masculino	34	martes	moto	bicicleta	30-44	t
2017-0116	1	2017-09-20	2017	septiembre	20	22:24:00	gral paz	paz, gral. av.	5750.0	sin datos	paz, gral. av. 5750	12	-58.51389422	-34.58075791	moto	objeto fijo	conductor	masculino	22	miercoles	moto	objeto fijo	18-29	f
2017-0118	1	2017-09-22	2017	septiembre	22	07:02:09	avenida	vieytes	sin datos	cruz, osvaldo av.	vieytes y cruz, osvaldo av.	4	-58.37585415	-34.65232158	moto	auto	pasajero_acompañante	femenino	26	viernes	moto	auto	18-29	t
2017-0120	1	2017-10-02	2017	octubre	2	15:55:33	autopista	autopista dellepiane luis tte. gral.	sin datos	escalada av.	autopista dellepiane luis tte. gral. y escalada av.	9	-58.47297505	-34.66245085	moto	cargas	conductor	masculino	20	lunes	moto	cargas	18-29	t
2017-0123	1	2017-10-10	2017	octubre	10	01:05:38	avenida	albari?o	sin datos	argentina av.	albariã‘o y argentina av.	8	-58.46855503	-34.67216349	peaton	auto	peaton	femenino	36	martes	peaton	auto	30-44	t
2017-0124	1	2017-10-12	2017	octubre	12	14:40:28	calle	ramirez de velasco, juan	1211.0	sin datos	ramirez de velasco, juan 1211	15	-58.44254033	-34.59185043	moto	pasajeros	conductor	masculino	51	jueves	moto	pasajeros	45-64	f
2017-0125	1	2017-10-13	2017	octubre	13	06:12:20	avenida	fernandez de la cruz, f., gral. av.	sin datos	larraya	fernandez de la cruz, f., gral. av. y larraya	8	-58.46622247	-34.67926929	moto	objeto fijo	conductor	masculino	29	viernes	moto	objeto fijo	18-29	t
2017-0126	2	2017-10-14	2017	octubre	14	06:15:00	avenida	riestra av.	sin datos	ca?ada de gomez	riestra av. y caã‘ada de gomez	8	-58.48003734	-34.68148508	auto	objeto fijo	pasajero_acompañante	masculino	39	sabado	auto	objeto fijo	30-44	t
2017-0126	2	2017-10-14	2017	octubre	14	06:15:00	avenida	riestra av.	sin datos	ca?ada de gomez	riestra av. y caã‘ada de gomez	8	-58.48003734	-34.68148508	auto	objeto fijo	conductor	masculino	36	sabado	auto	objeto fijo	30-44	t
2017-0127	1	2017-10-16	2017	octubre	16	07:45:00	avenida	gallo	sin datos	cordoba av.	gallo y cordoba av.	2	-58.41192137	-34.59800248	moto	moto	pasajero_acompañante	masculino	24	lunes	moto	moto	18-29	t
2017-0128	1	2017-10-17	2017	octubre	17	12:30:00	calle	aranguren, juan f., dr.	611.0	sin datos	aranguren, juan f., dr. 611	6	-58.44034689	-34.61349731	peaton	pasajeros	peaton	femenino	60	martes	peaton	pasajeros	45-64	f
2017-0129	1	2017-10-26	2017	octubre	26	19:15:15	autopista	autopista perito moreno	sin datos	autopista 25 de mayo	autopista perito moreno y autopista 25 de mayo	9	-58.47155277	-34.64925746	moto	pasajeros	conductor	masculino	57	jueves	moto	pasajeros	45-64	t
2017-0130	1	2017-10-27	2017	octubre	27	05:30:00	avenida	chorroarin	sin datos	san martin av.	chorroarin y san martin av.	15	-58.47883099	-34.59967065	auto	cargas	conductor	masculino	23	viernes	auto	cargas	18-29	t
2017-0132	1	2017-10-30	2017	octubre	30	14:00:00	avenida	cosquin	sin datos	roca, cnel. av.	cosquin y roca, cnel. av.	8	-58.46552171	-34.69374130	moto	pasajeros	conductor	masculino	23	lunes	moto	pasajeros	18-29	t
2017-0134	1	2017-11-06	2017	noviembre	6	18:00:00	avenida	roca, cnel. av.	3555.0	sin datos	roca, cnel. av. 3555	8	-58.44239720	-34.66777987	peaton	pasajeros	peaton	femenino	47	lunes	peaton	pasajeros	45-64	f
2017-0135	1	2017-11-07	2017	noviembre	7	12:14:10	avenida	warnes av.	sin datos	punta arenas	warnes av. y punta arenas	15	-58.47032551	-34.59626814	moto	cargas	conductor	masculino	24	martes	moto	cargas	18-29	t
2017-0136	1	2017-11-16	2017	noviembre	16	08:43:00	avenida	barco centenera del	sin datos	rabanal, francisco, intendente av.	barco centenera del y rabanal, francisco, intendente av.	4	-58.41827843	-34.65522746	peaton	pasajeros	peaton	masculino	55	jueves	peaton	pasajeros	45-64	t
2017-0137	1	2017-11-17	2017	noviembre	17	11:45:00	avenida	mosconi general av.	sin datos	san nicolas	mosconi general av. y san nicolas	11	-58.51280715	-34.59279388	peaton	cargas	peaton	femenino	60	viernes	peaton	cargas	45-64	t
2017-0138	1	2017-11-19	2017	noviembre	19	10:30:00	avenida	lafuente av.	sin datos	peron, eva av.	lafuente av. y peron, eva av.	7	-58.46258582	-34.64385704	moto	objeto fijo	pasajero_acompañante	masculino	25	domingo	moto	objeto fijo	18-29	t
2017-0139	1	2017-11-19	2017	noviembre	19	22:30:00	avenida	roca, cnel. av.	sin datos	escalada av.	roca, cnel. av. y escalada av.	8	-58.45064148	-34.68003614	auto	objeto fijo	pasajero_acompañante	femenino	15	domingo	auto	objeto fijo	0-17	t
2017-0140	1	2017-11-19	2017	noviembre	19	23:22:17	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi	4	sin datos	sin datos	moto	pasajeros	conductor	masculino	24	domingo	moto	pasajeros	18-29	f
2017-0141	1	2017-11-23	2017	noviembre	23	19:45:00	avenida	la plata av.	sin datos	goyena, pedro av.	la plata av. y goyena, pedro av.	6	-58.42717783	-34.62513374	peaton	pasajeros	peaton	femenino	22	jueves	peaton	pasajeros	18-29	t
2017-0143	1	2017-11-25	2017	noviembre	25	21:45:00	calle	trelles, manuel r.	sin datos	diaz, cesar, gral.	trelles, manuel r. y diaz, cesar, gral.	11	-58.46442001	-34.60724519	auto	pasajeros	conductor	masculino	50	sabado	auto	pasajeros	45-64	t
2017-0144	1	2017-11-26	2017	noviembre	26	06:45:00	gral paz	roca, cnel. av.	sin datos	paz, gral. av.	roca, cnel. av. y paz, gral. av.	8	-58.47064556	-34.69843756	auto	objeto fijo	pasajero_acompañante	femenino	50	domingo	auto	objeto fijo	45-64	t
2017-0145	1	2017-11-26	2017	noviembre	26	17:05:00	calle	maza	sin datos	don bosco	maza y don bosco	5	-58.41677733	-34.61223119	moto	auto	conductor	masculino	58	domingo	moto	auto	45-64	t
2017-0147	1	2017-11-28	2017	noviembre	28	11:15:00	gral paz	paz, gral. av.	sin datos	peron, eva av.	paz, gral. av. y peron, eva av.	9	-58.50251790	-34.67450313	moto	auto	conductor	masculino	49	martes	moto	auto	45-64	t
2017-0148	1	2017-11-29	2017	noviembre	29	10:45:00	avenida	san juan av.	sin datos	la rioja	san juan av. y la rioja	3	-58.40708125	-34.62438894	peaton	pasajeros	peaton	femenino	82	miercoles	peaton	pasajeros	65+	t
2017-0149	1	2017-11-30	2017	noviembre	30	12:20:00	avenida	paseo colon av.	sin datos	mexico	paseo colon av. y mexico	1	-58.36947198	-34.61477051	peaton	pasajeros	peaton	masculino	13	jueves	peaton	pasajeros	0-17	t
2017-0150	1	2017-12-04	2017	diciembre	4	01:15:00	avenida	rivadavia av.	sin datos	miralla	rivadavia av. y miralla	9	-58.51140889	-34.63934531	peaton	auto	peaton	masculino	56	lunes	peaton	auto	45-64	t
2017-0151	1	2017-12-04	2017	diciembre	4	02:15:00	calle	vieytes	sin datos	lujan	vieytes y lujan	4	-58.37460912	-34.65559133	peaton	pasajeros	peaton	masculino	\N	lunes	peaton	pasajeros	sin datos	t
2017-0152	1	2017-12-06	2017	diciembre	6	17:30:00	calle	cachi	sin datos	traful	cachi y traful	4	-58.41146277	-34.65073916	bicicleta	pasajeros	ciclista	masculino	19	miercoles	bicicleta	pasajeros	18-29	t
2017-0153	2	2017-12-11	2017	diciembre	11	02:00:00	avenida	rosario	sin datos	la plata av.	rosario y la plata av.	6	-58.42855267	-34.61829385	moto	pasajeros	pasajero_acompañante	masculino	\N	lunes	moto	pasajeros	sin datos	t
2017-0153	2	2017-12-11	2017	diciembre	11	02:00:00	avenida	rosario	sin datos	la plata av.	rosario y la plata av.	6	-58.42855267	-34.61829385	moto	pasajeros	conductor	masculino	30	lunes	moto	pasajeros	30-44	t
2017-0154	1	2017-12-11	2017	diciembre	11	09:15:00	avenida	entre rios av.	sin datos	caseros av.	entre rios av. y caseros av.	4	-58.39035581	-34.63412287	peaton	pasajeros	peaton	masculino	76	lunes	peaton	pasajeros	65+	t
2017-0155	1	2017-12-12	2017	diciembre	12	21:25:41	avenida	rivadavia av.	6350.0	sin datos	rivadavia av. 6350	7	-58.45593915	-34.62656868	sin datos	moto	sin datos	masculino	77	martes	sin datos	moto	65+	f
2017-0157	1	2017-12-17	2017	diciembre	17	09:02:00	gral paz	paz, gral. av.	sin datos	humaita	paz, gral. av. y humaita	9	-58.52866211	-34.64597065	auto	pasajeros	conductor	masculino	53	domingo	auto	pasajeros	45-64	t
2017-0158	1	2017-12-18	2017	diciembre	18	21:30:00	gral paz	gualeguaychu	sin datos	paz, gral. av.	gualeguaychu y paz, gral. av.	11	-58.52037476	-34.59407024	moto	auto	conductor	masculino	32	lunes	moto	auto	30-44	t
2017-0159	1	2017-12-20	2017	diciembre	20	04:31:27	avenida	independencia av.	sin datos	cevallos, virrey	independencia av. y cevallos, virrey	1	-58.38896772	-34.61799615	moto	auto	conductor	masculino	27	miercoles	moto	auto	18-29	t
2017-0160	1	2017-12-22	2017	diciembre	22	13:15:00	avenida	nazca av.	365.0	sin datos	nazca av. 365	7	-58.47074114	-34.62771756	peaton	moto	peaton	femenino	30	viernes	peaton	moto	30-44	f
2017-0161	1	2017-12-26	2017	diciembre	26	15:30:00	avenida	peron, eva av.	5249.0	sin datos	peron, eva av. 5249	9	-58.48200819	-34.65969965	peaton	auto	peaton	femenino	30	martes	peaton	auto	30-44	f
2018-0001	1	2018-01-01	2018	enero	1	22:50:00	avenida	san juan av.	sin datos	rincon	san juan av. y rincon	3	-58.39536773	-34.62297346	peaton	moto	peaton	masculino	83	lunes	peaton	moto	65+	t
2018-0002	1	2018-01-03	2018	enero	3	16:40:00	calle	peru	937.0	sin datos	peru 937	1	-58.37456088	-34.61895467	bicicleta	pasajeros	ciclista	femenino	26	miercoles	bicicleta	pasajeros	18-29	f
2018-0003	1	2018-01-05	2018	enero	5	10:12:00	avenida	pueyrredon, honorio, dr. av.	sin datos	galicia	pueyrredon, honorio, dr. av. y galicia	15	-58.44860217	-34.60395657	peaton	multiple	peaton	femenino	58	viernes	multiple	sin datos	45-64	t
2018-0004	1	2018-01-09	2018	enero	9	09:40:00	avenida	del libertador av.	sin datos	manzanares	del libertador av. y manzanares	13	-58.46129513	-34.54332766	moto	multiple	conductor	masculino	39	martes	multiple	sin datos	30-44	t
2018-0005	1	2018-01-09	2018	enero	9	22:30:00	avenida	paseo colon av.	1019.0	sin datos	paseo colon av. 1019	1	-58.36907201	-34.61953517	peaton	pasajeros	peaton	masculino	54	martes	peaton	pasajeros	45-64	f
2018-0006	1	2018-01-10	2018	enero	10	21:15:00	calle	valle	sin datos	barco centenera del	valle y barco centenera del	6	-58.44062219	-34.62499107	bicicleta	pasajeros	ciclista	femenino	45	miercoles	bicicleta	pasajeros	45-64	t
2018-0007	1	2018-01-11	2018	enero	11	02:30:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno km. 0.6	9	-58.52502765	-34.63601265	auto	auto	conductor	masculino	46	jueves	auto	auto	45-64	f
2018-0008	1	2018-01-12	2018	enero	12	17:50:00	avenida	huergo, ing. av.	sin datos	independencia av.	huergo, ing. av. e independencia av.	1	-58.36659655	-34.61687778	moto	cargas	conductor	femenino	32	viernes	moto	cargas	30-44	t
2018-0009	1	2018-01-14	2018	enero	14	02:00:00	avenida	pilcomayo	sin datos	brown, alte. av.	pilcomayo y brown, alte. av.	4	-58.36737389	-34.62763661	moto	moto	conductor	masculino	19	domingo	moto	moto	18-29	t
2018-0010	1	2018-01-18	2018	enero	18	05:10:00	calle	cervantes	sin datos	belaustegui, luis, dr.	cervantes y belaustegui, luis, dr.	10	-58.49807953	-34.63038658	moto	cargas	conductor	masculino	40	jueves	moto	cargas	30-44	t
2018-0011	1	2018-01-19	2018	enero	19	10:30:00	avenida	callao av.	sin datos	lopez, vicente	callao av. y lopez, vicente	2	-58.39092703	-34.59088447	peaton	pasajeros	peaton	masculino	84	viernes	peaton	pasajeros	65+	t
2018-0012	1	2018-01-26	2018	enero	26	13:30:00	calle	oliden	sin datos	chilavert, martiniano, coronel	oliden y chilavert, martiniano, coronel	8	-58.46912006	-34.68049201	moto	pasajeros	conductor	masculino	20	viernes	moto	pasajeros	18-29	t
2018-0013	1	2018-01-28	2018	enero	28	08:15:00	avenida	congreso av.	sin datos	galvan	congreso av. y galvan	12	-58.48661286	-34.56786129	moto	auto	conductor	masculino	44	domingo	moto	auto	30-44	t
2018-0014	1	2018-01-31	2018	enero	31	20:00:00	avenida	moreno, perito av.	sin datos	rivera indarte av.	moreno, perito av. y rivera indarte av.	7	-58.44074927	-34.65080597	peaton	moto	peaton	masculino	\N	miercoles	peaton	moto	sin datos	t
2018-0015	2	2018-02-06	2018	febrero	6	01:00:00	avenida	australia av.	2800.0	sin datos	australia av. 2800	4	-58.38636298	-34.64684275	moto	pasajeros	conductor	masculino	28	martes	moto	pasajeros	18-29	f
2018-0015	2	2018-02-06	2018	febrero	6	01:00:00	avenida	australia av.	2800.0	sin datos	australia av. 2800	4	-58.38636298	-34.64684275	moto	pasajeros	pasajero_acompañante	masculino	19	martes	moto	pasajeros	18-29	f
2018-0016	1	2018-02-15	2018	febrero	15	10:15:00	avenida	del libertador av.	sin datos	ramos mejia, jose maria, dr. av.	del libertador av. y ramos mejia, jose maria, dr. av.	1	-58.37533517	-34.59276462	moto	cargas	conductor	masculino	31	jueves	moto	cargas	30-44	t
2018-0017	1	2018-02-17	2018	febrero	17	04:15:00	avenida	san pedrito av.	sin datos	rivadavia av.	san pedrito av. y rivadavia av.	7	-58.46963952	-34.63070603	peaton	auto	peaton	masculino	35	sabado	peaton	auto	30-44	t
2018-0018	1	2018-02-17	2018	febrero	17	07:15:00	calle	isabel la catolica	sin datos	salvadores, cnel.	isabel la catolica y salvadores, cnel.	4	-58.37207554	-34.64543658	moto	cargas	conductor	masculino	26	sabado	moto	cargas	18-29	t
2018-0019	1	2018-02-17	2018	febrero	17	12:30:00	avenida	las heras general av.	sin datos	callao av.	las heras general av. y callao av.	2	-58.39189441	-34.59176378	peaton	pasajeros	peaton	femenino	80	sabado	peaton	pasajeros	65+	t
2020-0021	1	2020-03-14	2020	marzo	14	16:50:00	calle	bravo, mario	1279.0	sin datos	bravo, mario 1279	2	-58.41451590	-34.59488319	peaton	auto	peaton	femenino	87	sabado	peaton	auto	65+	f
2018-0020	1	2018-02-19	2018	febrero	19	22:00:00	autopista	autopista presidente hector j. campora	sin datos	sin datos	fernandez de la cruz f., gral. av. y autopista presidente hector j. campora	8	-58.45012957	-34.66518343	moto	cargas	conductor	masculino	26	lunes	moto	cargas	18-29	f
2018-0021	1	2018-02-22	2018	febrero	22	10:45:00	avenida	alcorta, amancio av.	sin datos	zavaleta	alcorta, amancio av. y zavaleta	4	-58.40184094	-34.64546845	peaton	pasajeros	peaton	femenino	62	jueves	peaton	pasajeros	45-64	t
2018-0022	1	2018-02-24	2018	febrero	24	00:00:00	avenida	montes de oca, manuel av.	sin datos	olavarria	montes de oca, manuel av. y olavarria	4	-58.37441153	-34.63966783	moto	cargas	conductor	masculino	28	sabado	moto	cargas	18-29	t
2018-0023	1	2018-02-24	2018	febrero	24	06:00:00	calle	barco centenera del	sin datos	rosario	barco centenera del y rosario	6	-58.44110156	-34.62082399	moto	auto	conductor	masculino	28	sabado	moto	auto	18-29	t
2018-0024	1	2018-02-28	2018	febrero	28	23:00:00	avenida	alvarez thomas av.	sin datos	donado	alvarez thomas av. y donado	15	-58.47087351	-34.57827342	peaton	cargas	peaton	masculino	70	miercoles	peaton	cargas	65+	t
2018-0025	1	2018-03-04	2018	marzo	4	22:30:00	avenida	avellaneda av.	sin datos	boyaca av.	avellaneda av. y boyaca av.	7	-58.45962210	-34.62245140	peaton	auto	peaton	masculino	70	domingo	peaton	auto	65+	t
2018-0026	2	2018-03-09	2018	marzo	9	04:45:00	avenida	rabanal, francisco, intendente av.	sin datos	saenz av.	rabanal, francisco, intendente av. y saenz av.	4	-58.41657793	-34.65476216	movil	cargas	conductor	masculino	24	viernes	movil	cargas	18-29	t
2018-0026	2	2018-03-09	2018	marzo	9	04:45:00	avenida	rabanal, francisco, intendente av.	sin datos	saenz av.	rabanal, francisco, intendente av. y saenz av.	4	-58.41657793	-34.65476216	movil	cargas	pasajero_acompañante	masculino	30	viernes	movil	cargas	30-44	t
2018-0027	1	2018-03-11	2018	marzo	11	23:00:00	calle	castro	sin datos	rondeau	castro y rondeau	5	-58.41911301	-34.63722107	peaton	moto	peaton	femenino	74	domingo	peaton	moto	65+	t
2018-0028	1	2018-03-13	2018	marzo	13	15:45:00	avenida	bilbao, francisco av.	sin datos	azul	bilbao, francisco av. y azul	9	-58.47120586	-34.64251042	peaton	cargas	peaton	masculino	71	martes	peaton	cargas	65+	t
2018-0029	1	2018-03-15	2018	marzo	15	18:00:00	avenida	nazca av.	sin datos	gaona av.	nazca av. y gaona av.	11	-58.47418944	-34.62049672	moto	auto	conductor	masculino	26	jueves	moto	auto	18-29	t
2018-0030	1	2018-03-20	2018	marzo	20	01:30:00	avenida	plaza	sin datos	alvarez thomas av.	plaza y alvarez thomas av.	15	-58.46720441	-34.57905579	moto	moto	conductor	masculino	24	martes	moto	moto	18-29	t
2018-0031	1	2018-03-28	2018	marzo	28	10:15:00	avenida	gaona av.	sin datos	artigas, jose gervasio, gral.	gaona av. y artigas, jose gervasio, gral.	11	-58.46909362	-34.61779710	moto	cargas	conductor	masculino	31	miercoles	moto	cargas	30-44	t
2018-0032	1	2018-04-02	2018	abril	2	13:00:00	avenida	cabildo av.	sin datos	aguilar	cabildo av. y aguilar	13	-58.44704343	-34.56888640	peaton	pasajeros	peaton	masculino	70	lunes	peaton	pasajeros	65+	t
2018-0033	1	2018-04-07	2018	abril	7	07:30:00	avenida	camarones	sin datos	lope de vega av.	camarones y lope de vega av.	10	-58.50535541	-34.62902048	moto	cargas	conductor	femenino	42	sabado	moto	cargas	30-44	t
2018-0034	1	2018-04-11	2018	abril	11	18:15:00	avenida	santa fe av.	2320.0	sin datos	santa fe av. 2320	2	-58.40021675	-34.59522198	peaton	pasajeros	peaton	masculino	24	miercoles	peaton	pasajeros	18-29	f
2018-0035	1	2018-04-12	2018	abril	12	16:45:00	avenida	rivadavia av.	6950.0	sin datos	rivadavia av. 6950	7	-58.46325991	-34.62919627	peaton	pasajeros	peaton	femenino	39	jueves	peaton	pasajeros	30-44	f
2018-0036	1	2018-04-13	2018	abril	13	23:15:00	avenida	san martin av.	sin datos	argerich	san martin av. y argerich	15	-58.49471482	-34.59694755	moto	auto	conductor	masculino	37	viernes	moto	auto	30-44	t
2018-0037	1	2018-04-18	2018	abril	18	18:45:00	avenida	cordoba av.	sin datos	uriburu jose e., pres.	cordoba av. y uriburu jose e., pres.	2	-58.39872610	-34.59975962	peaton	cargas	peaton	masculino	84	miercoles	peaton	cargas	65+	t
2018-0038	2	2018-04-20	2018	abril	20	17:10:00	avenida	rivadavia av.	1571.0	sin datos	rivadavia av. 1571	1	-58.38872177	-34.60885045	peaton	auto	peaton	femenino	59	viernes	peaton	auto	45-64	f
2018-0038	2	2018-04-20	2018	abril	20	17:10:00	avenida	rivadavia av.	1571.0	sin datos	rivadavia av. 1571	1	-58.38872177	-34.60885045	peaton	auto	peaton	masculino	61	viernes	peaton	auto	45-64	f
2018-0039	1	2018-04-21	2018	abril	21	22:15:00	autopista	lugones, leopoldo av.	sin datos	sin datos	sin datos	14	sin datos	sin datos	peaton	auto	peaton	masculino	37	sabado	peaton	auto	30-44	f
2018-0040	1	2018-04-27	2018	abril	27	11:00:00	calle	freire, ramon, cap. gral.	sin datos	olaguer y feliu, virrey	freire, ramon, cap. gral. y olaguer y feliu, virrey	13	-58.45686132	-34.57305993	peaton	cargas	peaton	femenino	\N	viernes	peaton	cargas	sin datos	t
2018-0041	1	2018-04-27	2018	abril	27	13:30:00	avenida	la plata av.	sin datos	fernandez de la cruz, f., gral. av.	la plata av. y fernandez de la cruz, f., gral. av.	4	-58.42281627	-34.64282424	peaton	pasajeros	peaton	femenino	78	viernes	peaton	pasajeros	65+	t
2018-0042	1	2018-04-27	2018	abril	27	18:43:00	calle	brandsen	sin datos	perdriel	brandsen y perdriel	4	-58.38666024	-34.63953396	moto	cargas	pasajero_acompañante	masculino	23	viernes	moto	cargas	18-29	t
2018-0043	1	2018-04-28	2018	abril	28	06:30:00	avenida	vilardebo, teodoro	sin datos	alvarez jonte av.	vilardebo, teodoro y alvarez jonte av.	11	-58.49122843	-34.61207587	moto	auto	conductor	masculino	25	sabado	moto	auto	18-29	t
2018-0044	1	2018-04-28	2018	abril	28	09:00:00	avenida	alberti	sin datos	independencia av.	alberti e independencia av.	3	-58.40098306	-34.61866627	peaton	auto	peaton	femenino	50	sabado	peaton	auto	45-64	t
2018-0045	1	2018-04-30	2018	abril	30	07:00:00	avenida	alvarez thomas av.	879.0	sin datos	alvarez thomas av. 879	13	-58.45448963	-34.57916920	auto	cargas	conductor	masculino	60	lunes	auto	cargas	45-64	f
2018-0046	1	2018-05-02	2018	mayo	2	03:15:00	gral paz	paz, gral. av.	sin datos	rivadavia av.	paz, gral. av. y rivadavia av.	9	-58.52927982	-34.63931752	peaton	auto	peaton	masculino	11	miercoles	peaton	auto	0-17	t
2018-0047	1	2018-05-08	2018	mayo	8	19:00:00	avenida	corrientes av.	sin datos	dorrego av.	corrientes av. y dorrego av.	15	-58.44759966	-34.59170240	peaton	pasajeros	peaton	masculino	82	martes	peaton	pasajeros	65+	t
2018-0048	1	2018-05-09	2018	mayo	9	10:30:00	avenida	rivadavia av.	sin datos	pedernera	rivadavia av. y pedernera	7	-58.46411215	-34.62925068	peaton	pasajeros	peaton	masculino	57	miercoles	peaton	pasajeros	45-64	t
2018-0049	1	2018-05-11	2018	mayo	11	19:15:00	calle	quesada	2300.0	sin datos	quesada 2300	13	-58.46213220	-34.55395823	peaton	auto	peaton	femenino	40	viernes	peaton	auto	30-44	f
2018-0050	1	2018-05-14	2018	mayo	14	18:45:00	avenida	cabildo av.	sin datos	juramento av.	cabildo av. y juramento av.	13	-58.45669422	-34.56203610	peaton	pasajeros	peaton	femenino	47	lunes	peaton	pasajeros	45-64	t
2018-0051	1	2018-05-15	2018	mayo	15	21:15:00	calle	california	sin datos	carbonari, francisco, cmte.	california y carbonari, francisco, cmte.	4	-58.35977160	-34.64341878	peaton	auto	peaton	femenino	57	martes	peaton	auto	45-64	t
2018-0052	1	2018-05-18	2018	mayo	18	20:30:00	avenida	carril, salvador maria del av.	sin datos	nazca	carril, salvador maria del av. y nazca	15	-58.49820145	-34.59070093	peaton	pasajeros	peaton	masculino	78	viernes	peaton	pasajeros	65+	t
2018-0053	1	2018-05-20	2018	mayo	20	02:30:00	calle	san luis	sin datos	aguero	san luis y aguero	3	-58.41059280	-34.59939180	moto	auto	conductor	masculino	43	domingo	moto	auto	30-44	t
2018-0054	1	2018-05-22	2018	mayo	22	11:15:00	calle	lugones	2430.0	sin datos	lugones 2430	12	-58.47969138	-34.57121563	peaton	bicicleta	peaton	femenino	86	martes	peaton	bicicleta	65+	f
2018-0055	1	2018-05-29	2018	mayo	29	07:30:00	avenida	independencia av.	sin datos	jujuy av.	independencia av. y jujuy av.	3	-58.40351561	-34.61883916	moto	auto	conductor	masculino	21	martes	moto	auto	18-29	t
2018-0056	1	2018-06-02	2018	junio	2	13:00:00	avenida	rivadavia av.	11050.0	sin datos	rivadavia av. 11050	9	-58.51973844	-34.63918987	peaton	pasajeros	peaton	femenino	69	sabado	peaton	pasajeros	65+	f
2018-0057	1	2018-06-03	2018	junio	3	03:30:00	calle	combate de los pozos	sin datos	humberto 1?	combate de los pozos y humberto 1â°	3	-58.39311376	-34.62163006	moto	pasajeros	conductor	masculino	33	domingo	moto	pasajeros	30-44	t
2018-0058	1	2018-06-03	2018	junio	3	06:30:00	avenida	cordoba av.	sin datos	thames	cordoba av. y thames	15	-58.43531242	-34.59082159	moto	auto	conductor	masculino	26	domingo	moto	auto	18-29	t
2018-0059	1	2018-06-08	2018	junio	8	06:20:00	avenida	garay, juan de av.	sin datos	sanchez de loria	garay, juan de av. y sanchez de loria	5	-58.41178165	-34.63035454	moto	otro	conductor	masculino	54	viernes	moto	movil	45-64	t
2018-0060	1	2018-06-08	2018	junio	8	12:50:00	avenida	lavalle	sin datos	alem, leandro n. av.	lavalle y alem, leandro n. av.	1	-58.37048800	-34.60189492	peaton	pasajeros	peaton	masculino	51	viernes	peaton	pasajeros	45-64	t
2018-0061	1	2018-06-10	2018	junio	10	11:15:00	calle	estados unidos	sin datos	pichincha	estados unidos y pichincha	3	-58.39883882	-34.61964833	moto	moto	conductor	masculino	51	domingo	moto	moto	45-64	t
2018-0062	1	2018-06-14	2018	junio	14	01:00:00	calle	rosario	sin datos	barco centenera del	rosario y barco centenera del	6	-58.44110156	-34.62082399	peaton	cargas	peaton	masculino	32	jueves	peaton	cargas	30-44	t
2018-0063	1	2018-06-16	2018	junio	16	21:15:00	avenida	alem, leandro n. av.	sin datos	viamonte	alem, leandro n. av. y viamonte	1	-58.37093138	-34.59952725	peaton	pasajeros	peaton	femenino	28	sabado	peaton	pasajeros	18-29	t
2018-0064	1	2018-06-25	2018	junio	25	01:15:00	avenida	varela av.	sin datos	primera junta	varela av. y primera junta	7	-58.45855262	-34.63953253	auto	cargas	conductor	masculino	30	lunes	auto	cargas	30-44	t
2018-0065	1	2018-06-26	2018	junio	26	17:30:00	calle	pellegrini, carlos	sin datos	juncal	pellegrini, carlos y juncal	1	-58.38161909	-34.59283447	moto	cargas	conductor	masculino	35	martes	moto	cargas	30-44	t
2018-0066	1	2018-06-28	2018	junio	28	11:00:00	avenida	corrientes av.	sin datos	lacroze, federico av.	corrientes av. y lacroze, federico av.	15	-58.45511899	-34.58698157	peaton	pasajeros	peaton	masculino	73	jueves	peaton	pasajeros	65+	t
2018-0067	1	2018-06-29	2018	junio	29	16:15:00	avenida	montes de oca, manuel av.	sin datos	finochietto enrique dr.	montes de oca, manuel av. y finochietto enrique dr.	4	-58.37724226	-34.62973033	pasajeros	auto	pasajero_acompañante	femenino	81	viernes	pasajeros	auto	65+	t
2018-0068	1	2018-07-01	2018	julio	1	09:00:00	avenida	carabobo av.	sin datos	alberdi, juan bautista av.	carabobo av. y alberdi, juan bautista av.	7	-58.45546217	-34.62930339	moto	auto	conductor	masculino	21	domingo	moto	auto	18-29	t
2018-0069	1	2018-07-04	2018	julio	4	21:45:00	avenida	cordoba av.	2215.0	sin datos	cordoba av. 2215	2	-58.39897064	-34.59954925	bicicleta	pasajeros	ciclista	masculino	20	miercoles	bicicleta	pasajeros	18-29	f
2018-0070	1	2018-07-07	2018	julio	7	15:45:00	calle	estados unidos	sin datos	urquiza, gral.	estados unidos y urquiza, gral.	3	-58.40917826	-34.62126274	moto	pasajeros	conductor	masculino	33	sabado	moto	pasajeros	30-44	t
2018-0071	1	2018-07-10	2018	julio	10	17:50:00	avenida	moreno	sin datos	huergo, ing. av.	moreno y huergo, ing. av.	1	-58.36726348	-34.61099738	moto	cargas	conductor	masculino	\N	martes	moto	cargas	sin datos	t
2018-0072	1	2018-07-11	2018	julio	11	13:15:00	autopista	autopista dellepiane luis tte. gral.	sin datos	sin datos	autopista dellepiane luis tte. gral. y montiel	8	-58.48267426	-34.68454456	moto	cargas	conductor	masculino	27	miercoles	moto	cargas	18-29	f
2018-0073	1	2018-07-11	2018	julio	11	15:45:00	avenida	iriarte, gral. av.	3400.0	sin datos	iriarte, gral. av. 3400	4	-58.39546165	-34.65168841	peaton	cargas	peaton	femenino	67	miercoles	peaton	cargas	65+	f
2018-0074	1	2018-07-14	2018	julio	14	06:04:00	avenida	alberdi, juan bautista av.	2968.0	sin datos	alberdi, juan bautista av. 2968	7	-58.46941984	-34.63376545	auto	cargas	conductor	masculino	25	sabado	auto	cargas	18-29	f
2018-0075	1	2018-07-15	2018	julio	15	07:30:00	avenida	del libertador av.	sin datos	ortiz de ocampo	del libertador av. y ortiz de ocampo	14	-58.40367321	-34.58129246	peaton	auto	peaton	masculino	23	domingo	peaton	auto	18-29	t
2018-0076	1	2018-07-16	2018	julio	16	09:30:00	calle	chavez, jorge	sin datos	paz, gral. av.	chavez, jorge y paz, gral. av.	9	-58.52932872	-34.65014993	auto	cargas	conductor	masculino	73	lunes	auto	cargas	65+	t
2018-0077	1	2018-07-16	2018	julio	16	23:15:00	calle	urquiza, gral.	sin datos	estados unidos	urquiza, gral. y estados unidos	3	-58.40917826	-34.62126274	auto	cargas	conductor	masculino	58	lunes	auto	cargas	45-64	t
2018-0078	1	2018-07-21	2018	julio	21	06:15:00	calle	paraguay	sin datos	sanchez de bustamante	paraguay y sanchez de bustamante	2	-58.41264127	-34.59473294	peaton	auto	peaton	masculino	27	sabado	peaton	auto	18-29	t
2018-0079	1	2018-07-23	2018	julio	23	07:15:00	gral paz	de los corrales av.	sin datos	paz, gral. av.	de los corrales av. y paz, gral. av.	9	-58.50877521	-34.66977709	peaton	cargas	peaton	masculino	\N	lunes	peaton	cargas	sin datos	t
2018-0080	1	2018-07-25	2018	julio	25	22:22:00	avenida	alberdi, juan bautista av.	sin datos	carhue	alberdi, juan bautista av. y carhue	9	-58.51232237	-34.65903530	peaton	auto	peaton	masculino	26	miercoles	peaton	auto	18-29	t
2018-0081	1	2018-07-29	2018	julio	29	06:30:00	avenida	castanares av.	sin datos	rivera indarte av.	castaã‘ares av. y rivera indarte av.	7	-58.44744156	-34.64567171	peaton	multiple	peaton	masculino	35	domingo	multiple	sin datos	30-44	t
2018-0082	1	2018-08-01	2018	agosto	1	15:53:00	avenida	larrazabal	sin datos	garzon, eugenio, gral. av.	larrazabal y garzon, eugenio, gral. av.	9	-58.49441273	-34.65869968	moto	cargas	conductor	femenino	17	miercoles	moto	cargas	0-17	t
2018-0083	1	2018-08-02	2018	agosto	2	05:20:00	gral paz	paz, gral. av.	sin datos	fernandez de la cruz, f., gral. av.	paz, gral. av. y fernandez de la cruz, f., gral. av.	8	-58.47976785	-34.69153196	moto	cargas	conductor	masculino	\N	jueves	moto	cargas	sin datos	t
2018-0084	1	2018-08-03	2018	agosto	3	07:25:00	avenida	moreau de justo, alicia av.	sin datos	cochabamba	moreau de justo, alicia av. y cochabamba	1	-58.36523349	-34.62260331	peaton	cargas	peaton	masculino	45	viernes	peaton	cargas	45-64	t
2018-0085	2	2018-08-03	2018	agosto	3	18:16:00	avenida	entre rios av.	sin datos	garay, juan de av.	entre rios av. y garay, juan de av.	3	-58.39118948	-34.62704273	moto	pasajeros	pasajero_acompañante	femenino	22	viernes	moto	pasajeros	18-29	t
2018-0085	2	2018-08-03	2018	agosto	3	18:16:00	avenida	entre rios av.	sin datos	garay, juan de av.	entre rios av. y garay, juan de av.	3	-58.39118948	-34.62704273	moto	pasajeros	conductor	masculino	30	viernes	moto	pasajeros	30-44	t
2018-0086	1	2018-08-10	2018	agosto	10	21:44:00	avenida	directorio av.	sin datos	guardia nacional	directorio av. y guardia nacional	9	-58.49019551	-34.65015854	peaton	pasajeros	peaton	masculino	40	viernes	peaton	pasajeros	30-44	t
2018-0087	1	2018-08-15	2018	agosto	15	19:20:00	avenida	pavon av.	sin datos	colombres	pavon av. y colombres	5	-58.41644362	-34.63023775	peaton	pasajeros	peaton	masculino	75	miercoles	peaton	pasajeros	65+	t
2018-0088	1	2018-08-17	2018	agosto	17	16:36:00	gral paz	paz, gral. av.	sin datos	balbin, ricardo, dr. av.	paz, gral. av. y balbin, ricardo, dr. av.	12	-58.50073810	-34.54979510	moto	cargas	conductor	masculino	\N	viernes	moto	cargas	sin datos	t
2018-0089	1	2018-08-17	2018	agosto	17	17:56:00	avenida	pichincha av.	sin datos	brasil	pichincha av. y brasil	4	-58.39626094	-34.63036565	peaton	pasajeros	peaton	masculino	80	viernes	peaton	pasajeros	65+	t
2018-0090	1	2018-08-18	2018	agosto	18	10:34:00	avenida	27 de febrero av.	sin datos	pergamino	27 de febrero av. y pergamino	8	-58.43284809	-34.67051543	moto	auto	conductor	masculino	27	sabado	moto	auto	18-29	t
2018-0091	1	2018-08-19	2018	agosto	19	18:47:00	autopista	autopista perito moreno	sin datos	barragan	autopista perito moreno y barragan	9	-58.52280139	-34.63659934	auto	auto	pasajero_acompañante	femenino	23	domingo	auto	auto	18-29	t
2018-0092	1	2018-08-20	2018	agosto	20	08:20:00	avenida	cordoba av.	sin datos	gascon	cordoba av. y gascon	14	-58.42336930	-34.59774487	moto	auto	conductor	masculino	23	lunes	moto	auto	18-29	t
2018-0093	1	2018-08-20	2018	agosto	20	08:41:00	calle	15 de noviembre de 1889	1513.0	sin datos	15 de noviembre de 1889 1513	1	-58.38691681	-34.63105973	peaton	pasajeros	peaton	masculino	24	lunes	peaton	pasajeros	18-29	f
2018-0094	1	2018-08-23	2018	agosto	23	05:35:00	calle	salguero, jeronimo	sin datos	beruti	salguero, jeronimo y beruti	14	-58.41169020	-34.58579880	moto	pasajeros	conductor	masculino	32	jueves	moto	pasajeros	30-44	t
2018-0095	1	2018-08-26	2018	agosto	26	00:59:00	avenida	lacarra av.	sin datos	dellepiane, luis, tte. gral.	lacarra av. y dellepiane, luis, tte. gral.	9	-58.46739825	-34.65117757	auto	auto	pasajero_acompañante	femenino	49	domingo	auto	auto	45-64	t
2018-0096	1	2018-08-31	2018	agosto	31	22:20:00	autopista	autopista presidente h?ctor j. c?mpora	sin datos	roca, cnel. av.	autopista presidente hã‰ctor j. cãmpora y roca, cnel. av.	8	-58.44483258	-34.67152226	peaton	auto	peaton	masculino	39	viernes	peaton	auto	30-44	t
2018-0097	1	2018-09-02	2018	septiembre	2	10:50:00	avenida	varela av.	sin datos	rabanal, francisco, intendente av.	varela av. y rabanal, francisco, intendente av.	8	-58.43254025	-34.66128115	auto	otro	conductor	femenino	35	domingo	auto	movil	30-44	t
2018-0098	2	2018-09-09	2018	septiembre	9	05:00:00	gral paz	paz, gral. av.	sin datos	beron de astrada	paz, gral. av. y beron de astrada	8	-58.47199387	-34.69640164	auto	auto	conductor	masculino	55	domingo	auto	auto	45-64	t
2018-0098	2	2018-09-09	2018	septiembre	9	05:00:00	gral paz	paz, gral. av.	sin datos	beron de astrada	paz, gral. av. y beron de astrada	8	-58.47199387	-34.69640164	auto	auto	pasajero_acompañante	masculino	54	domingo	auto	auto	45-64	t
2018-0099	1	2018-09-12	2018	septiembre	12	14:25:00	avenida	rivadavia av.	sin datos	pedernera	rivadavia av. y pedernera	7	-58.46411215	-34.62925068	peaton	pasajeros	peaton	masculino	18	miercoles	peaton	pasajeros	18-29	t
2018-0100	1	2018-09-20	2018	septiembre	20	10:30:00	avenida	rawson de dellepiane, elvira av.	150.0	sin datos	rawson de dellepiane, elvira av. 150	1	-58.36217754	-34.62367156	moto	auto	sin datos	femenino	33	jueves	moto	auto	30-44	f
2018-0101	1	2018-09-21	2018	septiembre	21	00:15:00	gral paz	paz, gral. av.	sin datos	zapiola	paz, gral. av. y zapiola	12	-58.48098594	-34.54073130	auto	multiple	conductor	masculino	\N	viernes	multiple	sin datos	sin datos	t
2018-0102	1	2018-09-21	2018	septiembre	21	00:30:00	calle	famatina	sin datos	taborda, diogenes	famatina y taborda, diogenes	4	-58.41083404	-34.64640709	moto	auto	conductor	masculino	20	viernes	moto	auto	18-29	t
2018-0103	1	2018-09-27	2018	septiembre	27	17:51:00	avenida	casta?ares av.	sin datos	bonorino, esteban, cnel. av.	castaã‘ares av. y bonorino, esteban, cnel. av.	7	-58.44609828	-34.64446729	peaton	moto	peaton	masculino	1	jueves	peaton	moto	0-17	t
2018-0104	1	2018-10-01	2018	octubre	1	08:58:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	suarez av.	autopista 1 sur presidente arturo frondizi y suarez av.	4	-58.37709334	-34.64035082	moto	moto	conductor	masculino	22	lunes	moto	moto	18-29	t
2018-0105	1	2018-10-03	2018	octubre	3	18:12:00	avenida	nazca av.	sin datos	rivadavia av.	nazca av. y rivadavia av.	7	-58.46963952	-34.63070603	peaton	pasajeros	peaton	femenino	56	miercoles	peaton	pasajeros	45-64	t
2018-0106	1	2018-10-04	2018	octubre	4	22:02:00	avenida	figueroa alcorta, pres. av.	sin datos	echeverria	figueroa alcorta, pres. av. y echeverria	13	-58.43674281	-34.55161027	moto	moto	conductor	masculino	27	jueves	moto	moto	18-29	t
2018-0107	1	2018-10-06	2018	octubre	6	14:20:00	avenida	rivadavia av.	sin datos	jujuy av.	rivadavia av. y jujuy av.	3	-58.40596860	-34.61011987	peaton	pasajeros	peaton	femenino	62	sabado	peaton	pasajeros	45-64	t
2018-0108	1	2018-10-09	2018	octubre	9	14:00:00	avenida	de los italianos av.	sin datos	guemes, macacha	de los italianos av. y guemes, macacha	1	-58.36154069	-34.60463618	moto	auto	conductor	masculino	37	martes	moto	auto	30-44	t
2018-0109	1	2018-10-10	2018	octubre	10	22:12:00	avenida	tucuman	sin datos	alem, leandro n. av.	tucuman y alem, leandro n. av.	1	-58.37062179	-34.60066507	peaton	pasajeros	peaton	masculino	34	miercoles	peaton	pasajeros	30-44	t
2018-0110	1	2018-10-13	2018	octubre	13	03:05:00	avenida	corrientes av.	sin datos	gallardo, angel av.	corrientes av. y gallardo, angel av.	15	-58.43220014	-34.60207186	peaton	moto	peaton	masculino	60	sabado	peaton	moto	45-64	t
2018-0111	1	2018-10-19	2018	octubre	19	12:13:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno & peron, eva  av.	9	-58.46958442	-34.64949724	moto	cargas	conductor	masculino	28	viernes	moto	cargas	18-29	f
2018-0112	1	2018-10-24	2018	octubre	24	09:18:00	calle	mu?ecas	sin datos	serrano	muã‘ecas y serrano	15	-58.44671397	-34.59970903	moto	cargas	conductor	femenino	28	miercoles	moto	cargas	18-29	t
2018-0113	1	2018-10-25	2018	octubre	25	11:00:00	calle	artigas, jose gervasio, gral.	sin datos	tres arroyos	artigas, jose gervasio, gral. y tres arroyos	11	-58.47152163	-34.61474911	moto	cargas	conductor	masculino	20	jueves	moto	cargas	18-29	t
2018-0114	1	2018-10-30	2018	octubre	30	02:15:00	avenida	solis	sin datos	independencia av.	solis e independencia av.	1	-58.39032921	-34.61807951	moto	auto	conductor	masculino	23	martes	moto	auto	18-29	t
2018-0115	1	2018-10-31	2018	octubre	31	12:30:00	calle	bosch, ventura	sin datos	paz, gral. av.	bosch, ventura y paz, gral. av.	9	-58.52887773	-34.64297861	peaton	pasajeros	peaton	masculino	42	miercoles	peaton	pasajeros	30-44	t
2018-0116	1	2018-11-01	2018	noviembre	1	10:50:00	gral paz	paz, gral. av.	14800.0	sin datos	paz, gral. av. 14800	8	-58.49371157	-34.67981324	peaton	cargas	peaton	masculino	48	jueves	peaton	cargas	45-64	f
2018-0117	1	2018-11-04	2018	noviembre	4	08:15:00	avenida	peron, eva av.	5321.0	sin datos	peron, eva av. 5321	9	-58.48266599	-34.66012327	moto	moto	conductor	masculino	30	domingo	moto	moto	30-44	f
2018-0118	1	2018-11-05	2018	noviembre	5	14:49:00	avenida	peron, juan domingo, tte. general	sin datos	pueyrredon av.	peron, juan domingo, tte. general y pueyrredon av.	3	-58.40612253	-34.60774301	peaton	moto	peaton	femenino	80	lunes	peaton	moto	65+	t
2018-0119	1	2018-11-05	2018	noviembre	5	22:35:00	avenida	rabanal, francisco, intendente av.	sin datos	san pedrito	rabanal, francisco, intendente av. y san pedrito	8	-58.43613623	-34.66292532	peaton	sin datos	peaton	femenino	32	lunes	peaton	sin datos	30-44	t
2018-0120	1	2018-11-09	2018	noviembre	9	13:34:00	avenida	monroe	sin datos	alvarez thomas av.	monroe y alvarez thomas av.	12	-58.48250732	-34.57208238	peaton	auto	peaton	femenino	51	viernes	peaton	auto	45-64	t
2018-0121	1	2018-11-09	2018	noviembre	9	16:32:00	avenida	rivadavia av.	sin datos	manzoni	rivadavia av. y manzoni	10	-58.49945705	-34.63743280	peaton	pasajeros	peaton	femenino	72	viernes	peaton	pasajeros	65+	t
2018-0122	1	2018-11-12	2018	noviembre	12	01:00:00	autopista	autopista dellepiane luis tte. gral.	sin datos	larrazabal	autopista dellepiane luis tte. gral. y larrazabal	8	-58.47743966	-34.67233407	auto	auto	conductor	masculino	33	lunes	auto	auto	30-44	t
2018-0123	1	2018-11-12	2018	noviembre	12	03:32:00	gral paz	paz, gral. av.	sin datos	peron, eva av.	paz, gral. av. y peron, eva av.	9	-58.50251790	-34.67450313	auto	sin datos	conductor	masculino	25	lunes	auto	sin datos	18-29	t
2018-0124	1	2018-11-15	2018	noviembre	15	19:40:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno y reservistas argentinos	9	-58.52144411	-34.63682499	cargas	cargas	conductor	masculino	44	jueves	cargas	cargas	30-44	f
2018-0125	1	2018-11-16	2018	noviembre	16	21:12:00	avenida	saenz av.	sin datos	ventana	saenz av. y ventana	4	-58.41650465	-34.65084045	peaton	pasajeros	peaton	masculino	29	viernes	peaton	pasajeros	18-29	t
2018-0126	1	2018-11-18	2018	noviembre	18	12:11:00	gral paz	paz, gral. av.	sin datos	falcon, ramon l.,cnel.	paz, gral. av. y falcon, ramon l.,cnel.	9	-58.52994219	-34.64055918	moto	auto	conductor	masculino	27	domingo	moto	auto	18-29	t
2020-0048	1	2020-10-29	2020	octubre	29	20:20:00	avenida	dorrego av.	614.0	sin datos	dorrego av. 614	15	-58.44958780	-34.59322448	moto	objeto fijo	conductor	masculino	41	jueves	moto	objeto fijo	30-44	f
2018-0127	1	2018-11-19	2018	noviembre	19	09:14:00	gral paz	paz, gral. av.	sin datos	de los constituyentes av.	paz, gral. av. y de los constituyentes av.	12	-58.50993046	-34.56919739	moto	moto	conductor	masculino	29	lunes	moto	moto	18-29	t
2018-0128	2	2018-11-25	2018	noviembre	25	04:30:00	gral paz	paz, gral. av.	11200.0	sin datos	paz, gral. av. 11200	9	-58.52844623	-34.64592873	auto	pasajeros	pasajero_acompañante	masculino	49	domingo	auto	pasajeros	45-64	f
2018-0128	2	2018-11-25	2018	noviembre	25	04:30:00	gral paz	paz, gral. av.	11200.0	sin datos	paz, gral. av. 11200	9	-58.52844623	-34.64592873	auto	pasajeros	pasajero_acompañante	femenino	39	domingo	auto	pasajeros	30-44	f
2018-0129	1	2018-11-28	2018	noviembre	28	04:01:00	avenida	newbery, jorge av.	sin datos	guevara	newbery, jorge av. y guevara	15	-58.45021367	-34.58695347	moto	pasajeros	conductor	masculino	37	miercoles	moto	pasajeros	30-44	t
2018-0130	1	2018-12-03	2018	diciembre	3	03:00:00	avenida	gaona av.	sin datos	segurola av.	gaona av. y segurola av.	10	-58.49022072	-34.62770192	moto	pasajeros	conductor	masculino	\N	lunes	moto	pasajeros	sin datos	t
2018-0131	1	2018-12-07	2018	diciembre	7	19:10:00	avenida	madero, eduardo av.	550.0	sin datos	madero, eduardo av. 550	1	-58.36860866	-34.60106568	moto	cargas	conductor	masculino	29	viernes	moto	cargas	18-29	f
2018-0132	1	2018-12-12	2018	diciembre	12	08:26:00	autopista	autopista arturo illia	sin datos	castillo, ramon s., pres. av.	autopista arturo illia y castillo, ramon s., pres. av.	2	-58.39490504	-34.57241534	peaton	cargas	peaton	masculino	70	miercoles	peaton	cargas	65+	t
2018-0133	1	2018-12-12	2018	diciembre	12	14:07:00	avenida	nazca av.	sin datos	rivadavia av.	nazca av. y rivadavia av.	7	-58.46963952	-34.63070603	peaton	cargas	peaton	femenino	60	miercoles	peaton	cargas	45-64	t
2018-0134	1	2018-12-12	2018	diciembre	12	21:00:00	avenida	la plata av.	sin datos	caseros av.	la plata av. y caseros av.	7	-58.42349365	-34.64019887	peaton	moto	peaton	masculino	56	miercoles	peaton	moto	45-64	t
2018-0135	1	2018-12-18	2018	diciembre	18	14:40:00	avenida	belgrano av.	sin datos	peru	belgrano av. y peru	1	-58.37471802	-34.61265002	peaton	pasajeros	peaton	masculino	80	martes	peaton	pasajeros	65+	t
2018-0136	1	2018-12-18	2018	diciembre	18	15:42:00	avenida	rivadavia av.	7013.0	sin datos	rivadavia av. 7013	7	-58.46438789	-34.62913916	peaton	pasajeros	peaton	femenino	70	martes	peaton	pasajeros	65+	f
2018-0137	1	2018-12-18	2018	diciembre	18	20:15:00	calle	alsina, adolfo	sin datos	santiago del estero	alsina, adolfo y santiago del estero	1	-58.38481975	-34.61100424	moto	pasajeros	pasajero_acompañante	masculino	29	martes	moto	pasajeros	18-29	t
2018-0138	1	2018-12-21	2018	diciembre	21	09:30:00	calle	bermudez	1893.0	sin datos	bermudez 1893	10	-58.50751833	-34.62073702	pasajeros	pasajeros	pasajero_acompañante	femenino	79	viernes	pasajeros	pasajeros	65+	f
2018-0139	1	2018-12-22	2018	diciembre	22	06:30:00	calle	santander	1974.0	sin datos	santander 1974	7	-58.44682986	-34.63888084	moto	moto	pasajero_acompañante	masculino	28	sabado	moto	moto	18-29	f
2018-0140	1	2018-12-22	2018	diciembre	22	08:05:00	calle	lanteri julieta	1400.0	sin datos	lanteri julieta 1400	1	-58.36004650	-34.61381341	auto	auto	conductor	masculino	78	sabado	auto	auto	65+	f
2018-0141	1	2018-12-22	2018	diciembre	22	17:40:00	avenida	maza	sin datos	independencia av.	maza e independencia av.	5	-58.41509546	-34.62085945	peaton	moto	peaton	masculino	75	sabado	peaton	moto	65+	t
2018-0142	1	2018-12-25	2018	diciembre	25	13:30:00	gral paz	paz, gral. av.	5172.0	sin datos	paz, gral. av. 5172	12	-58.50997604	-34.57251072	cargas	pasajeros	pasajero_acompañante	masculino	32	martes	cargas	pasajeros	30-44	f
2018-0143	1	2018-12-29	2018	diciembre	29	05:25:00	avenida	olivera av.	sin datos	alberdi, juan bautista av.	olivera av. y alberdi, juan bautista av.	10	-58.48606475	-34.64047818	moto	auto	conductor	masculino	22	sabado	moto	auto	18-29	t
2019-0001	1	2019-01-08	2019	enero	8	08:30:00	avenida	castillo, ramon s., pres. av.	sin datos	calle 12 (no oficial)	castillo, ramon s., pres. av. y calle 12 (no oficial)	2	-58.38526125	-34.57805810	moto	cargas	conductor	masculino	25	martes	moto	cargas	18-29	t
2019-0002	1	2019-01-09	2019	enero	9	04:00:00	avenida	casta?ares av.	sin datos	moreno, perito av.	castaã‘ares av. y moreno, perito av.	7	-58.45463662	-34.65082149	auto	cargas	conductor	masculino	32	miercoles	auto	cargas	30-44	t
2019-0003	1	2019-01-12	2019	enero	12	08:00:00	avenida	san martin av.	sin datos	terrada	san martin av. y terrada	15	-58.49121672	-34.59718073	moto	auto	conductor	masculino	23	sabado	moto	auto	18-29	t
2019-0004	1	2019-01-14	2019	enero	14	19:58:00	avenida	peron, eva av.	sin datos	medina	peron, eva av. y medina	9	-58.47325712	-34.65284605	auto	pasajeros	conductor	masculino	71	lunes	auto	pasajeros	65+	t
2019-0005	1	2019-01-19	2019	enero	19	12:00:00	avenida	justo, juan b. av.	sin datos	alvarez jonte av.	justo, juan b. av. y alvarez jonte av.	10	-58.52108101	-34.63382309	moto	cargas	conductor	masculino	43	sabado	moto	cargas	30-44	t
2019-0006	1	2019-01-23	2019	enero	23	05:45:00	avenida	obligado rafael, av.costanera	4650.0	sin datos	obligado rafael, av.costanera 4650	14	-58.41652702	-34.55509606	peaton	auto	peaton	femenino	12	miercoles	peaton	auto	0-17	f
2019-0007	1	2019-01-26	2019	enero	26	19:34:00	calle	mitre, bartolome	sin datos	yatay	mitre, bartolome y yatay	5	-58.42891604	-34.61071660	moto	auto	conductor	masculino	35	sabado	moto	auto	30-44	t
2019-0008	1	2019-01-30	2019	enero	30	22:45:00	gral paz	paz, gral. av.	16080.0	sin datos	paz, gral. av. 16080	8	-58.47802293	-34.69156793	moto	multiple	conductor	masculino	42	miercoles	multiple	sin datos	30-44	f
2019-0009	1	2019-01-31	2019	enero	31	14:55:00	avenida	chacabuco	sin datos	san juan av.	chacabuco y san juan av.	1	-58.37564821	-34.62200207	moto	auto	conductor	masculino	34	jueves	moto	auto	30-44	t
2019-0010	2	2019-02-02	2019	febrero	2	07:50:00	avenida	del libertador av.	4100.0	sin datos	del libertador av. 4100	14	-58.42668489	-34.56961468	peaton	auto	peaton	masculino	\N	sabado	peaton	auto	sin datos	f
2019-0010	2	2019-02-02	2019	febrero	2	07:50:00	avenida	del libertador av.	4100.0	sin datos	del libertador av. 4100	14	-58.42668489	-34.56961468	peaton	auto	peaton	masculino	59	sabado	peaton	auto	45-64	f
2019-0011	1	2019-02-10	2019	febrero	10	01:00:00	gral paz	paz, gral. av.	sin datos	alberdi, juan bautista av.	paz, gral. av. y alberdi, juan bautista av.	9	-58.51839930	-34.66252488	peaton	auto	peaton	masculino	\N	domingo	peaton	auto	sin datos	t
2019-0012	1	2019-02-17	2019	febrero	17	03:16:00	avenida	casta?ares av.	sin datos	gordillo, timoteo	castaã‘ares av. y gordillo, timoteo	8	-58.48432691	-34.67665828	moto	auto	conductor	masculino	31	domingo	moto	auto	30-44	t
2019-0013	1	2019-02-20	2019	febrero	20	07:30:00	calle	salvigny	sin datos	mom	salvigny y mom	7	-58.43383830	-34.64457699	peaton	auto	peaton	masculino	39	miercoles	peaton	auto	30-44	t
2019-0014	1	2019-02-20	2019	febrero	20	17:30:00	calle	lamarca, emilio	5402.0	sin datos	lamarca, emilio 5402	11	-58.51664939	-34.58657938	moto	objeto fijo	conductor	masculino	69	miercoles	moto	objeto fijo	65+	f
2019-0015	1	2019-02-23	2019	febrero	23	06:57:00	avenida	san martin av.	5638.0	sin datos	san martin av. 5638	11	-58.49613012	-34.59703502	auto	objeto fijo	conductor	masculino	21	sabado	auto	objeto fijo	18-29	f
2019-0016	1	2019-02-24	2019	febrero	24	02:00:00	calle	carrillo, ramon, dr.	sin datos	finochietto enrique dr.	carrillo, ramon, dr. y finochietto enrique dr.	4	-58.38313603	-34.63356284	moto	pasajeros	conductor	masculino	40	domingo	moto	pasajeros	30-44	t
2019-0017	1	2019-03-03	2019	marzo	3	07:00:00	calle	mexico	sin datos	pichincha	mexico y pichincha	3	-58.39914719	-34.61632317	auto	pasajeros	conductor	masculino	22	domingo	auto	pasajeros	18-29	t
2019-0018	1	2019-03-03	2019	marzo	3	23:30:00	autopista	cantilo, int.	sin datos	udaondo, guillermo av.	cantilo, int. y udaondo, guillermo av.	13	-58.44927253	-34.54048625	peaton	auto	peaton	femenino	29	domingo	peaton	auto	18-29	t
2019-0019	1	2019-03-06	2019	marzo	6	12:00:00	avenida	del libertador av.	6326.0	sin datos	del libertador av. 6326	13	-58.45049163	-34.55374003	moto	auto	conductor	masculino	\N	miercoles	moto	auto	sin datos	f
2019-0020	1	2019-03-07	2019	marzo	7	21:01:00	avenida	chiclana av.	3444.0	sin datos	chiclana av. 3444	5	-58.41288952	-34.63572989	moto	auto	conductor	masculino	43	jueves	moto	auto	30-44	f
2019-0021	1	2019-03-15	2019	marzo	15	22:50:00	avenida	boyaca av.	sin datos	yerbal	boyaca av. y yerbal	7	-58.45743597	-34.62561234	moto	auto	conductor	masculino	23	viernes	moto	auto	18-29	t
2019-0022	1	2019-03-15	2019	marzo	15	00:00:00	avenida	entre rios av.	1260.0	sin datos	entre rios av. 1260	1	-58.39123782	-34.62352245	auto	sin datos	pasajero_acompañante	masculino	\N	viernes	auto	sin datos	sin datos	f
2019-0023	1	2019-03-16	2019	marzo	16	08:28:00	gral paz	paz, gral. av.	sin datos	jacques, amadeo	paz, gral. av. y jacques, amadeo	9	-58.52922765	-34.63637963	auto	objeto fijo	conductor	masculino	34	sabado	auto	objeto fijo	30-44	t
2019-0024	1	2019-03-19	2019	marzo	19	07:12:00	avenida	antartida argentina av.	1325.0	sin datos	antartida argentina av. 1325	1	-58.37208118	-34.58541957	moto	cargas	conductor	masculino	32	martes	moto	cargas	30-44	f
2019-0025	1	2019-03-22	2019	marzo	22	13:10:00	calle	mitre, bartolome	sin datos	sanchez de bustamante	mitre, bartolome y sanchez de bustamante	5	-58.41458534	-34.60937557	peaton	auto	peaton	masculino	27	viernes	peaton	auto	18-29	t
2019-0026	1	2019-03-28	2019	marzo	28	07:32:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	paz, gral. av.	fernandez de la cruz, f., gral. av. y paz, gral. av.	8	-58.47976785	-34.69153196	peaton	pasajeros	peaton	masculino	\N	jueves	peaton	pasajeros	sin datos	t
2019-0027	1	2019-03-28	2019	marzo	28	11:11:00	avenida	santa fe av.	sin datos	azcuenaga	santa fe av. y azcuenaga	2	-58.39990285	-34.59511714	bicicleta	multiple	ciclista	masculino	37	jueves	multiple	sin datos	30-44	t
2019-0028	1	2019-04-06	2019	abril	6	09:15:00	avenida	justo, juan b. av.	sin datos	oro?o, nicasio	justo, juan b. av. y oroã‘o, nicasio	11	-58.46051346	-34.60588536	peaton	pasajeros	peaton	femenino	\N	sabado	peaton	pasajeros	sin datos	t
2019-0029	1	2019-04-07	2019	abril	7	10:15:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	paz, gral. av.	fernandez de la cruz, f., gral. av. y paz, gral. av.	8	-58.47976785	-34.69153196	moto	objeto fijo	conductor	masculino	27	domingo	moto	objeto fijo	18-29	t
2019-0030	1	2019-04-09	2019	abril	9	16:00:00	calle	alvarez, donato, tte. gral.	sin datos	yerbal	alvarez, donato, tte. gral. y yerbal	7	-58.45457546	-34.62447891	moto	cargas	conductor	masculino	25	martes	moto	cargas	18-29	t
2019-0031	1	2019-04-12	2019	abril	12	19:55:00	avenida	cordoba av.	sin datos	madero, eduardo av.	cordoba av. y madero, eduardo av.	1	-58.36951669	-34.59832047	bicicleta	cargas	ciclista	masculino	20	viernes	bicicleta	cargas	18-29	t
2019-0032	1	2019-04-16	2019	abril	16	11:00:00	avenida	camarones	sin datos	alvarez, donato, tte. gral. av.	camarones y alvarez, donato, tte. gral. av.	11	-58.46415322	-34.60443790	peaton	auto	peaton	femenino	83	martes	peaton	auto	65+	t
2019-0033	1	2019-04-18	2019	abril	18	01:00:00	autopista	autopista 25 de mayo	sin datos	huergo, ing. av.	autopista 25 de mayo y huergo, ing. av.	1	-58.36607137	-34.62150748	moto	sin datos	conductor	masculino	25	jueves	moto	sin datos	18-29	t
2019-0034	1	2019-04-21	2019	abril	21	09:08:00	avenida	moreno, perito av.	3050.0	sin datos	moreno, perito av. 3050	7	-58.45537373	-34.65093074	moto	objeto fijo	conductor	masculino	\N	domingo	moto	objeto fijo	sin datos	f
2019-0035	1	2019-04-23	2019	abril	23	14:10:00	calle	suipacha	665.0	sin datos	suipacha 665	1	-58.37942637	-34.60053054	peaton	bicicleta	peaton	femenino	75	martes	peaton	bicicleta	65+	f
2019-0036	1	2019-04-26	2019	abril	26	22:46:00	calle	riglos	sin datos	formosa	riglos y formosa	6	-58.43680440	-34.62147504	moto	auto	conductor	masculino	34	viernes	moto	auto	30-44	t
2019-0037	1	2019-05-01	2019	mayo	1	23:10:00	avenida	la rioja	sin datos	independencia av.	la rioja e independencia av.	3	-58.40778291	-34.61971907	moto	auto	conductor	masculino	17	miercoles	moto	auto	0-17	t
2019-0038	1	2019-05-04	2019	mayo	4	14:10:00	avenida	udaondo, guillermo av.	sin datos	figueroa alcorta, pres. av.	udaondo, guillermo av. y figueroa alcorta, pres. av.	13	-58.45212523	-34.54628513	peaton	moto	peaton	femenino	42	sabado	peaton	moto	30-44	t
2019-0039	1	2019-05-09	2019	mayo	9	03:05:00	avenida	san pedrito av.	sin datos	directorio av.	san pedrito av. y directorio av.	7	-58.46749188	-34.63551751	moto	auto	conductor	masculino	28	jueves	moto	auto	18-29	t
2019-0040	1	2019-05-09	2019	mayo	9	12:45:00	calle	puan	sin datos	santander	puan y santander	7	-58.44263580	-34.63679732	moto	sin datos	conductor	masculino	44	jueves	moto	sin datos	30-44	t
2019-0041	1	2019-05-11	2019	mayo	11	20:30:00	avenida	alberdi, juan bautista av.	sin datos	andalgala	alberdi, juan bautista av. y andalgala	9	-58.51140289	-34.65846419	auto	multiple	pasajero_acompañante	femenino	78	sabado	multiple	sin datos	65+	t
2019-0042	1	2019-05-14	2019	mayo	14	15:00:00	calle	lima	sin datos	constitucion	lima y constitucion	1	-58.38211431	-34.62465368	peaton	pasajeros	peaton	masculino	39	martes	peaton	pasajeros	30-44	t
2019-0043	1	2019-05-21	2019	mayo	21	09:00:00	avenida	cordoba av.	sin datos	madero, eduardo av.	cordoba av. y madero, eduardo av.	1	-58.36951669	-34.59832047	bicicleta	cargas	ciclista	femenino	\N	martes	bicicleta	cargas	sin datos	t
2019-0044	1	2019-05-27	2019	mayo	27	12:45:00	avenida	boedo av.	650.0	sin datos	boedo av. 650	5	-58.41635217	-34.62036547	peaton	moto	peaton	femenino	77	lunes	peaton	moto	65+	f
2019-0045	1	2019-06-03	2019	junio	3	07:27:00	avenida	del libertador av.	sin datos	republica de la india	del libertador av. y republica de la india	14	-58.41316147	-34.57579669	moto	cargas	conductor	masculino	33	lunes	moto	cargas	30-44	t
2019-0046	1	2019-06-04	2019	junio	4	09:00:00	gral paz	paz, gral. av.	sin datos	cabildo av.	paz, gral. av. y cabildo av.	13	-58.47617802	-34.53825652	moto	auto	pasajero_acompañante	femenino	26	martes	moto	auto	18-29	t
2019-0047	1	2019-06-06	2019	junio	6	10:00:00	avenida	caseros av.	1700.0	sin datos	caseros av. 1700	4	-58.38641783	-34.63330028	peaton	cargas	peaton	masculino	76	jueves	peaton	cargas	65+	f
2019-0048	1	2019-06-07	2019	junio	7	07:00:00	avenida	avellaneda av.	1548.0	sin datos	avellaneda av. 1548	6	-58.45322169	-34.62038137	moto	cargas	conductor	masculino	32	viernes	moto	cargas	30-44	f
2019-0049	1	2019-06-08	2019	junio	8	09:20:00	calle	ciudad de la paz	sin datos	mendoza	ciudad de la paz y mendoza	13	-58.45849057	-34.56166498	peaton	cargas	peaton	femenino	72	sabado	peaton	cargas	65+	t
2019-0050	1	2019-06-08	2019	junio	8	23:35:00	avenida	salguero, jeronimo	sin datos	honduras av.	salguero, jeronimo y honduras av.	14	-58.41829559	-34.59411677	moto	cargas	conductor	masculino	21	sabado	moto	cargas	18-29	t
2019-0051	1	2019-06-11	2019	junio	11	10:00:00	calle	filiberto, juan de dios	sin datos	olavarria	filiberto, juan de dios y olavarria	4	-58.36376488	-34.63832093	moto	auto	conductor	masculino	41	martes	moto	auto	30-44	t
2019-0053	1	2019-06-14	2019	junio	14	17:20:00	avenida	asturias av.	sin datos	casta?ares av.	asturias av. y castaã‘ares av.	8	-58.46442668	-34.66004784	auto	auto	pasajero_acompañante	masculino	49	viernes	auto	auto	45-64	t
2019-0054	1	2019-06-20	2019	junio	20	03:00:00	calle	gandara	2976.0	sin datos	gandara 2976	15	-58.48222035	-34.58428769	moto	objeto fijo	conductor	masculino	21	jueves	moto	objeto fijo	18-29	f
2019-0055	1	2019-06-20	2019	junio	20	19:45:00	avenida	guevara, trinidad	sin datos	madero, eduardo av.	guevara, trinidad y madero, eduardo av.	1	-58.36819005	-34.60283208	moto	pasajeros	conductor	masculino	47	jueves	moto	pasajeros	45-64	t
2019-0056	1	2019-06-29	2019	junio	29	17:16:00	avenida	boyaca av.	305.0	sin datos	boyaca av. 305	7	-58.45877601	-34.62330939	peaton	auto	peaton	femenino	75	sabado	peaton	auto	65+	f
2019-0057	1	2019-07-05	2019	julio	5	19:00:00	calle	artilleros	sin datos	la pampa	artilleros y la pampa	13	-58.44196498	-34.55760517	peaton	auto	peaton	femenino	63	viernes	peaton	auto	45-64	t
2019-0058	1	2019-07-10	2019	julio	10	09:20:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno e irigoyen	10	-58.50622631	-34.63627822	moto	pasajeros	conductor	masculino	39	miercoles	moto	pasajeros	30-44	f
2019-0059	1	2019-07-13	2019	julio	13	22:35:00	calle	15 de noviembre de 1889	sin datos	santiago del estero	15 de noviembre de 1889 y santiago del estero	1	-58.38410880	-34.63099197	moto	pasajeros	conductor	masculino	30	sabado	moto	pasajeros	30-44	t
2019-0060	1	2019-07-17	2019	julio	17	11:20:00	avenida	acosta, mariano av.	sin datos	falcon, ramon l.,cnel.	acosta, mariano av. y falcon, ramon l.,cnel.	10	-58.48100602	-34.63504312	peaton	auto	peaton	femenino	78	miercoles	peaton	auto	65+	t
2019-0061	1	2019-07-17	2019	julio	17	18:40:00	calle	11 de septiembre de 1888	sin datos	mendoza	11 de septiembre de 1888 y mendoza	13	-58.45200171	-34.55781320	peaton	pasajeros	peaton	femenino	58	miercoles	peaton	pasajeros	45-64	t
2019-0062	1	2019-08-01	2019	agosto	1	23:00:00	avenida	pino, virrey del	sin datos	campos, luis m. av.	pino, virrey del y campos, luis m. av.	13	-58.44462132	-34.56201105	peaton	pasajeros	peaton	femenino	60	jueves	peaton	pasajeros	45-64	t
2019-0063	1	2019-08-04	2019	agosto	4	01:30:00	avenida	forest av.	sin datos	maure	forest av. y maure	15	-58.45220688	-34.58711712	moto	pasajeros	pasajero_acompañante	masculino	\N	domingo	moto	pasajeros	sin datos	t
2019-0064	1	2019-08-06	2019	agosto	6	03:15:00	avenida	boyaca av.	sin datos	avellaneda av.	boyaca av. y avellaneda av.	7	-58.45962210	-34.62245140	moto	auto	conductor	masculino	20	martes	moto	auto	18-29	t
2019-0065	1	2019-08-08	2019	agosto	8	16:45:00	calle	barco centenera del	sin datos	tilcara	barco centenera del y tilcara	4	-58.41970850	-34.65414867	peaton	pasajeros	peaton	femenino	55	jueves	peaton	pasajeros	45-64	t
2019-0066	1	2019-08-11	2019	agosto	11	21:15:00	avenida	riestra av.	sin datos	bolivar (no oficial)	riestra av. y bolivar (no oficial)	7	-58.44187596	-34.64938031	peaton	auto	peaton	masculino	40	domingo	peaton	auto	30-44	t
2019-0067	1	2019-08-14	2019	agosto	14	15:00:00	calle	castro, emilio	4706.0	sin datos	castro, emilio 4706	10	-58.49101637	-34.64276621	moto	cargas	conductor	masculino	35	miercoles	moto	cargas	30-44	f
2019-0068	1	2019-08-14	2019	agosto	14	17:40:00	avenida	27 de febrero av.	5600.0	sin datos	27 de febrero av. 5600	8	-58.42493829	-34.66256502	moto	moto	conductor	masculino	53	miercoles	moto	moto	45-64	f
2019-0069	1	2019-08-17	2019	agosto	17	05:25:00	avenida	garay, juan de av.	2874.0	sin datos	garay, juan de av. 2874	4	-58.40489318	-34.62930162	moto	auto	conductor	masculino	43	sabado	moto	auto	30-44	f
2019-0070	1	2019-08-22	2019	agosto	22	12:30:00	avenida	scalabrini ortiz, raul av.	sin datos	gorriti	scalabrini ortiz, raul av. y gorriti	14	-58.42686680	-34.59217875	moto	bicicleta	conductor	masculino	25	jueves	moto	bicicleta	18-29	t
2019-0071	1	2019-08-27	2019	agosto	27	11:30:00	avenida	primera junta	sin datos	olivera av.	primera junta y olivera av.	9	-58.47961100	-34.65620398	peaton	cargas	peaton	masculino	\N	martes	peaton	cargas	sin datos	t
2019-0072	1	2019-08-28	2019	agosto	28	06:20:00	avenida	alberdi, juan bautista av.	sin datos	azul	alberdi, juan bautista av. y azul	10	-58.47439934	-34.63524207	auto	auto	conductor	masculino	22	miercoles	auto	auto	18-29	t
2019-0073	1	2019-08-29	2019	agosto	29	01:50:00	avenida	alvarez thomas av.	1788.0	sin datos	alvarez thomas av. 1788	15	-58.46711912	-34.57926018	auto	objeto fijo	conductor	masculino	29	jueves	auto	objeto fijo	18-29	f
2019-0074	1	2019-08-29	2019	agosto	29	09:00:00	autopista	lugones, leopoldo av.	sin datos	paz, gral. av.	lugones, leopoldo av. y paz, gral. av.	13	-58.46514781	-34.53465378	moto	cargas	conductor	masculino	35	jueves	moto	cargas	30-44	t
2019-0075	1	2019-08-30	2019	agosto	30	23:20:00	calle	san antonio	sin datos	lujan	san antonio y lujan	4	-58.37571078	-34.65584079	moto	pasajeros	conductor	masculino	31	viernes	moto	pasajeros	30-44	t
2019-0076	1	2019-09-05	2019	septiembre	5	18:00:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y don pedro de mendoza av.	4	-58.37157668	-34.65429986	moto	cargas	conductor	femenino	29	jueves	moto	cargas	18-29	f
2019-0077	1	2019-09-08	2019	septiembre	8	03:40:00	avenida	figueroa alcorta, pres. av.	sin datos	tagle	figueroa alcorta, pres. av. y tagle	14	-58.39811256	-34.58070186	peaton	auto	peaton	femenino	28	domingo	peaton	auto	18-29	t
2019-0078	1	2019-09-12	2019	septiembre	12	08:25:00	avenida	einstein, alberto	sin datos	alcorta, amancio av.	einstein, alberto y alcorta, amancio av.	4	-58.41125934	-34.65417740	peaton	cargas	peaton	femenino	72	jueves	peaton	cargas	65+	t
2019-0079	1	2019-09-17	2019	septiembre	17	05:30:00	calle	agrelo	sin datos	colombres	agrelo y colombres	5	-58.41822901	-34.61866836	moto	pasajeros	conductor	masculino	57	martes	moto	pasajeros	45-64	t
2019-0080	1	2019-09-17	2019	septiembre	17	18:40:00	gral paz	cabildo av.	sin datos	paz, gral. av.	cabildo av. y paz, gral. av.	13	-58.47617802	-34.53825652	peaton	moto	peaton	masculino	76	martes	peaton	moto	65+	t
2019-0081	1	2019-09-23	2019	septiembre	23	16:00:00	avenida	elcano av.	4300.0	sin datos	elcano av. 4300	15	-58.46141281	-34.58623761	peaton	pasajeros	peaton	masculino	67	lunes	peaton	pasajeros	65+	f
2019-0082	1	2019-09-25	2019	septiembre	25	07:45:00	avenida	rabanal, francisco, intendente av.	2428.0	sin datos	rabanal, francisco, intendente av. 2428	8	-58.42985146	-34.66119740	bicicleta	cargas	ciclista	masculino	47	miercoles	bicicleta	cargas	45-64	f
2019-0083	1	2019-09-26	2019	septiembre	26	08:00:00	calle	monte	sin datos	corvalan	monte y corvalan	9	-58.48457413	-34.65839090	auto	auto	conductor	masculino	73	jueves	auto	auto	65+	t
2019-0084	1	2019-09-27	2019	septiembre	27	11:45:00	calle	tandil	sin datos	lafuente	tandil y lafuente	7	-58.46572884	-34.63628186	bicicleta	cargas	ciclista	femenino	40	viernes	bicicleta	cargas	30-44	t
2019-0085	1	2019-10-09	2019	octubre	9	22:18:00	calle	cardoso	sin datos	bacacay	cardoso y bacacay	10	-58.49261744	-34.63419130	bicicleta	tren	ciclista	masculino	20	miercoles	bicicleta	tren	18-29	t
2019-0086	1	2019-10-15	2019	octubre	15	14:10:00	avenida	corrientes av.	6700.0	sin datos	corrientes av. 6700	15	-58.45283186	-34.58841560	moto	pasajeros	conductor	masculino	29	martes	moto	pasajeros	18-29	f
2019-0087	1	2019-10-21	2019	octubre	21	21:00:00	avenida	alvarez thomas av.	sin datos	mendoza	alvarez thomas av. y mendoza	12	-58.47973681	-34.57418656	moto	moto	conductor	masculino	41	lunes	moto	moto	30-44	t
2019-0088	1	2019-10-22	2019	octubre	22	20:00:00	avenida	alcorta, amancio av.	sin datos	bonavena, oscar natalio	alcorta, amancio av. y bonavena, oscar natalio	4	-58.40623949	-34.65076549	peaton	pasajeros	peaton	masculino	27	martes	peaton	pasajeros	18-29	t
2019-0089	1	2019-10-23	2019	octubre	23	15:45:00	avenida	brown, alte. av.	sin datos	blanes, juan manuel	brown, alte. av. y blanes, juan manuel	4	-58.36244648	-34.63107887	peaton	cargas	peaton	femenino	92	miercoles	peaton	cargas	65+	t
2019-0090	1	2019-10-24	2019	octubre	24	18:26:00	avenida	alberdi, juan bautista av.	5455.0	sin datos	alberdi, juan bautista av. 5455	9	-58.49962423	-34.64868027	peaton	moto	peaton	masculino	67	jueves	peaton	moto	65+	f
2019-0091	1	2019-11-01	2019	noviembre	1	20:50:00	avenida	justo, juan b. av.	sin datos	camargo	justo, juan b. av. y camargo	15	-58.44551437	-34.59559816	peaton	pasajeros	peaton	masculino	35	viernes	peaton	pasajeros	30-44	t
2019-0092	1	2019-11-03	2019	noviembre	3	10:30:00	calle	brin, ministro	sin datos	suarez	brin, ministro y suarez	4	-58.35608181	-34.63420319	peaton	pasajeros	peaton	masculino	37	domingo	peaton	pasajeros	30-44	t
2019-0093	1	2019-11-13	2019	noviembre	13	11:50:00	avenida	niza	sin datos	justo, juan b. av.	niza y justo, juan b. av.	11	-58.46483679	-34.60907662	bicicleta	otro	ciclista	masculino	16	miercoles	bicicleta	otro	0-17	t
2019-0094	1	2019-11-18	2019	noviembre	18	14:00:00	calle	camargo	sin datos	serrano	camargo y serrano	15	-58.44368628	-34.59724326	moto	otro	pasajero_acompañante	femenino	\N	lunes	moto	otro	sin datos	t
2019-0095	1	2019-11-20	2019	noviembre	20	15:30:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y caseros av.	1	-58.37864583	-34.62907067	moto	cargas	conductor	masculino	\N	miercoles	moto	cargas	sin datos	f
2019-0096	1	2019-11-22	2019	noviembre	22	19:33:00	avenida	caseros av.	sin datos	piedras	caseros av. y piedras	1	-58.37560352	-34.62726382	peaton	pasajeros	peaton	masculino	73	viernes	peaton	pasajeros	65+	t
2019-0097	1	2019-11-25	2019	noviembre	25	08:50:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno km. 5.6	9	-58.47721439	-34.64815069	moto	multiple	pasajero_acompañante	femenino	23	lunes	multiple	sin datos	18-29	f
2019-0098	1	2019-11-25	2019	noviembre	25	14:00:00	avenida	guzman	365.0	sin datos	guzman 365	15	-58.45134029	-34.58984288	pasajeros	pasajeros	pasajero_acompañante	femenino	61	lunes	pasajeros	pasajeros	45-64	f
2019-0100	1	2019-12-05	2019	diciembre	5	17:30:00	avenida	de los constituyentes av.	4300.0	sin datos	de los constituyentes av. 4300	12	-58.49040794	-34.58368803	moto	auto	conductor	masculino	38	jueves	moto	auto	30-44	f
2019-0101	1	2019-12-17	2019	diciembre	17	04:20:00	avenida	moreno, perito av.	sin datos	tilcara av.	moreno, perito av. y tilcara av.	4	-58.42102679	-34.64991178	moto	moto	conductor	masculino	25	martes	moto	moto	18-29	t
2019-0102	1	2019-12-17	2019	diciembre	17	14:30:00	calle	ibarrola	sin datos	gordillo, timoteo	ibarrola y gordillo, timoteo	9	-58.52219407	-34.64143926	moto	auto	conductor	masculino	18	martes	moto	auto	18-29	t
2019-0103	1	2019-12-18	2019	diciembre	18	\N	gral paz	paz, gral. av.	sin datos	griveo	paz, gral. av. y griveo	11	-58.52169422	-34.59471640	moto	moto	conductor	masculino	24	miercoles	moto	moto	18-29	t
2019-0104	1	2019-12-21	2019	diciembre	21	04:25:00	avenida	rivadavia av.	sin datos	pergamino	rivadavia av. y pergamino	10	-58.47460416	-34.63206174	moto	auto	pasajero_acompañante	femenino	23	sabado	moto	auto	18-29	t
2019-0105	1	2019-05-05	2019	mayo	5	11:00:00	avenida	santo tome	sin datos	segurola av.	santo tome y segurola av.	10	-58.50512382	-34.61520391	peaton	auto	peaton	femenino	82	domingo	peaton	auto	65+	t
2020-0001	1	2020-01-04	2020	enero	4	10:40:00	calle	uriarte	sin datos	loyola	uriarte y loyola	15	-58.43910409	-34.59213355	peaton	auto	peaton	femenino	87	sabado	peaton	auto	65+	t
2020-0002	1	2020-01-05	2020	enero	5	20:00:00	avenida	saraza	sin datos	varela av.	saraza y varela av.	7	-58.45019436	-34.64646409	moto	objeto fijo	conductor	masculino	36	domingo	moto	objeto fijo	30-44	t
2020-0003	1	2020-01-11	2020	enero	11	06:00:00	avenida	rivadavia av.	sin datos	combate de los pozos	rivadavia av. y combate de los pozos	3	-58.39337644	-34.60927582	peaton	auto	peaton	masculino	44	sabado	peaton	auto	30-44	t
2020-0004	1	2020-01-14	2020	enero	14	21:40:00	avenida	rodriguez pe?a	sin datos	rivadavia av.	rodriguez peã‘a y rivadavia av.	1	-58.39055614	-34.60919284	peaton	pasajeros	peaton	masculino	82	martes	peaton	pasajeros	65+	t
2020-0005	1	2020-01-14	2020	enero	14	06:00:00	avenida	24 de noviembre	sin datos	san juan av.	24 de noviembre y san juan av.	3	-58.41036975	-34.62477021	moto	pasajeros	conductor	masculino	25	martes	moto	pasajeros	18-29	t
2020-0006	1	2020-01-20	2020	enero	20	12:55:00	avenida	lafuente av.	2250.0	sin datos	lafuente av. 2250	8	-58.44925765	-34.65412546	moto	cargas	conductor	masculino	23	lunes	moto	cargas	18-29	f
2020-0007	1	2020-01-27	2020	enero	27	00:37:00	calle	chile	sin datos	lima	chile y lima	1	-58.38156850	-34.61648696	peaton	moto	peaton	masculino	52	lunes	peaton	moto	45-64	t
2020-0008	1	2020-01-30	2020	enero	30	07:10:00	avenida	cordoba av.	sin datos	jaures, jean	cordoba av. y jaures, jean	2	-58.40662899	-34.59804521	moto	cargas	conductor	masculino	49	jueves	moto	cargas	45-64	t
2020-0009	1	2020-02-04	2020	febrero	4	14:50:00	calle	peron, juan domingo, tte. general	sin datos	salguero, jeronimo	peron, juan domingo, tte. general y salguero, jeronimo	5	-58.41985649	-34.60600850	peaton	auto	peaton	masculino	48	martes	peaton	auto	45-64	t
2020-0010	1	2020-02-08	2020	febrero	8	05:45:00	avenida	9 de julio av.	sin datos	san juan av.	9 de julio av. y san juan av.	1	-58.38099833	-34.62214953	moto	objeto fijo	conductor	masculino	\N	sabado	moto	objeto fijo	sin datos	t
2020-0011	1	2020-02-12	2020	febrero	12	11:29:00	calle	colombres	466.0	sin datos	colombres 466	5	-58.41803309	-34.61823178	moto	cargas	conductor	masculino	31	miercoles	moto	cargas	30-44	f
2020-0012	1	2020-02-18	2020	febrero	18	21:00:00	calle	mexico	2860.0	sin datos	mexico 2860	3	-58.40604003	-34.61783553	peaton	moto	peaton	femenino	66	martes	peaton	moto	65+	f
2020-0013	1	2020-02-20	2020	febrero	20	12:00:00	avenida	combatientes de malvinas av.	sin datos	triunvirato av.	combatientes de malvinas av. y triunvirato av.	15	-58.47549929	-34.57994061	peaton	moto	peaton	femenino	58	jueves	peaton	moto	45-64	t
2020-0014	1	2020-02-27	2020	febrero	27	02:14:00	calle	bermudez	sin datos	nogoya	bermudez y nogoya	11	-58.51398484	-34.61600366	moto	pasajeros	conductor	masculino	\N	jueves	moto	pasajeros	sin datos	t
2020-0015	1	2020-02-28	2020	febrero	28	14:30:00	avenida	brasil av.	sin datos	paseo colon av.	brasil av. y paseo colon av.	1	-58.36797542	-34.62519403	moto	pasajeros	conductor	masculino	29	viernes	moto	pasajeros	18-29	t
2020-0016	1	2020-02-29	2020	febrero	29	13:00:00	avenida	alem, leandro n. av.	770.0	sin datos	alem, leandro n. av. 770	1	-58.37133616	-34.59879316	peaton	pasajeros	peaton	masculino	68	sabado	peaton	pasajeros	65+	f
2020-0017	1	2020-03-05	2020	marzo	5	23:00:00	avenida	belgrano av.	sin datos	rincon	belgrano av. y rincon	3	-58.39613805	-34.61413568	peaton	auto	peaton	masculino	\N	jueves	peaton	auto	sin datos	t
2020-0018	1	2020-03-09	2020	marzo	9	14:00:00	avenida	udaondo, guillermo av.	901.0	sin datos	udaondo, guillermo av. 901	13	-58.44903073	-34.54200276	moto	objeto fijo	conductor	masculino	31	lunes	moto	objeto fijo	30-44	f
2020-0019	1	2020-03-10	2020	marzo	10	21:00:00	calle	constitucion	sin datos	castro	constitucion y castro	5	-58.41972364	-34.62846670	peaton	auto	peaton	femenino	80	martes	peaton	auto	65+	t
2020-0020	1	2020-03-13	2020	marzo	13	17:30:00	avenida	pueyrredon av.	sin datos	gomez, valentin	pueyrredon av. y gomez, valentin	3	-58.40571596	-34.60557123	peaton	moto	peaton	femenino	74	viernes	peaton	moto	65+	t
2020-0022	1	2020-04-07	2020	abril	7	06:15:00	autopista	autopista dellepiane luis tte. gral.	sin datos	escalada av.	autopista dellepiane luis tte. gral. y escalada av.	9	-58.47297505	-34.66245085	auto	cargas	pasajero_acompañante	masculino	44	martes	auto	cargas	30-44	t
2020-0023	1	2020-04-09	2020	abril	9	18:42:00	avenida	araoz de lamadrid, gregorio, gral.	sin datos	brown, alte. av.	araoz de lamadrid, gregorio, gral. y brown, alte. av.	4	-58.35791192	-34.63695178	auto	cargas	conductor	masculino	44	jueves	auto	cargas	30-44	t
2020-0024	1	2020-04-24	2020	abril	24	07:58:00	calle	murguiondo	1339.0	sin datos	murguiondo 1339	9	-58.50801713	-34.65177305	auto	auto	conductor	masculino	53	viernes	auto	auto	45-64	f
2020-0025	1	2020-05-12	2020	mayo	12	05:35:00	avenida	rivadavia av.	2551.0	sin datos	rivadavia av. 2551	3	-58.40258477	-34.60975108	peaton	auto	peaton	masculino	\N	martes	peaton	auto	sin datos	f
2020-0026	1	2020-05-17	2020	mayo	17	06:40:00	autopista	lugones, leopoldo av.	sin datos	sin datos	sin datos	14	sin datos	sin datos	moto	objeto fijo	conductor	masculino	28	domingo	moto	objeto fijo	18-29	f
2020-0027	1	2020-05-18	2020	mayo	18	08:00:00	avenida	dellepiane, luis, tte. gral.	sin datos	montiel	dellepiane, luis, tte. gral. y montiel	8	-58.48267426	-34.68454456	peaton	cargas	peaton	masculino	76	lunes	peaton	cargas	65+	t
2020-0028	1	2020-05-19	2020	mayo	19	10:00:00	avenida	scalabrini ortiz, raul av.	sin datos	warnes av.	scalabrini ortiz, raul av. y warnes av.	15	-58.44248936	-34.60221948	peaton	pasajeros	peaton	masculino	91	martes	peaton	pasajeros	65+	t
2020-0029	1	2020-06-10	2020	junio	10	14:00:00	gral paz	paz, gral. av.	sin datos	roffo, angel h., dr.	paz, gral. av. y roffo, angel h., dr.	9	-58.52909134	-34.63886726	peaton	pasajeros	peaton	masculino	80	miercoles	peaton	pasajeros	65+	t
2020-0030	1	2020-06-16	2020	junio	16	15:00:00	avenida	san martin av.	1550.0	sin datos	san martin av. 1550	6	-58.45158942	-34.60646580	moto	multiple	conductor	masculino	40	martes	multiple	sin datos	30-44	f
2020-0031	1	2020-06-30	2020	junio	30	08:00:00	avenida	garzon, eugenio, gral. av.	sin datos	larraya	garzon, eugenio, gral. av. y larraya	9	-58.49344309	-34.65788529	moto	cargas	conductor	masculino	29	martes	moto	cargas	18-29	t
2020-0032	1	2020-07-10	2020	julio	10	23:00:00	avenida	corrientes av.	sin datos	serrano	corrientes av. y serrano	15	-58.44259166	-34.59635137	moto	auto	conductor	masculino	21	viernes	moto	auto	18-29	t
2020-0033	1	2020-07-19	2020	julio	19	06:25:00	gral paz	paz, gral. av.	sin datos	del libertador av.	paz, gral. av. y del libertador av.	13	-58.46743471	-34.53476874	auto	objeto fijo	conductor	masculino	32	domingo	auto	objeto fijo	30-44	t
2020-0034	1	2020-08-02	2020	agosto	2	03:20:00	calle	mitre, bartolome	sin datos	anchorena, tomas manuel de, dr.	mitre, bartolome y anchorena, tomas manuel de, dr.	3	-58.41178158	-34.60922259	peaton	auto	peaton	femenino	\N	domingo	peaton	auto	sin datos	t
2020-0035	1	2020-08-04	2020	agosto	4	05:30:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y pumacahua	7	-58.45068621	-34.63638927	moto	pasajeros	conductor	masculino	40	martes	moto	pasajeros	30-44	f
2020-0036	1	2020-08-07	2020	agosto	7	18:40:00	avenida	scalabrini ortiz, raul av.	sin datos	paraguay	scalabrini ortiz, raul av. y paraguay	14	-58.42016954	-34.58778790	peaton	moto	peaton	masculino	72	viernes	peaton	moto	65+	t
2020-0037	1	2020-08-29	2020	agosto	29	04:30:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	varela av.	fernandez de la cruz, f., gral. av. y varela av.	8	-58.43850413	-34.65554754	peaton	auto	peaton	masculino	38	sabado	peaton	auto	30-44	t
2020-0038	2	2020-08-30	2020	agosto	30	04:00:00	avenida	las heras general av.	sin datos	diaz, cnel. av.	las heras general av. y diaz, cnel. av.	14	-58.40617526	-34.58345898	auto	auto	conductor	masculino	46	domingo	auto	auto	45-64	t
2020-0038	2	2020-08-30	2020	agosto	30	04:00:00	avenida	las heras general av.	sin datos	diaz, cnel. av.	las heras general av. y diaz, cnel. av.	14	-58.40617526	-34.58345898	auto	auto	conductor	masculino	64	domingo	auto	auto	45-64	t
2020-0039	1	2020-09-01	2020	septiembre	1	19:17:42	calle	murguiondo	sin datos	sin datos	murguiondo	9	sin datos	sin datos	peaton	cargas	peaton	masculino	44	martes	peaton	cargas	30-44	f
2020-0040	1	2020-09-12	2020	septiembre	12	03:30:00	avenida	castillo, ramon s., pres. av.	sin datos	calle 12 (no oficial)	castillo, ramon s., pres. av. y calle 12 (no oficial)	2	-58.38526125	-34.57805810	auto	objeto fijo	conductor	masculino	\N	sabado	auto	objeto fijo	sin datos	t
2020-0041	1	2020-09-28	2020	septiembre	28	01:45:00	avenida	curapaligue	sin datos	peron, eva av.	curapaligue y peron, eva av.	7	-58.44750470	-34.63491705	moto	pasajeros	conductor	masculino	34	lunes	moto	pasajeros	30-44	t
2020-0042	1	2020-09-29	2020	septiembre	29	17:10:00	avenida	diaz, ana	sin datos	soldado de la frontera av.	diaz, ana y soldado de la frontera av.	8	-58.46745752	-34.68192648	peaton	pasajeros	peaton	femenino	53	martes	peaton	pasajeros	45-64	t
2020-0043	1	2020-09-30	2020	septiembre	30	17:20:00	avenida	alem, leandro n. av.	sin datos	paraguay	alem, leandro n. av. y paraguay	1	-58.37202621	-34.59717942	peaton	pasajeros	peaton	masculino	64	miercoles	peaton	pasajeros	45-64	t
2020-0044	1	2020-10-05	2020	octubre	5	00:20:00	avenida	la plata av.	sin datos	independencia av.	la plata av. e independencia av.	6	-58.42779702	-34.62207347	auto	auto	conductor	masculino	43	lunes	auto	auto	30-44	t
2020-0045	1	2020-10-19	2020	octubre	19	03:00:00	gral paz	paz, gral. av.	sin datos	27 de febrero av.	paz, gral. av. y 27 de febrero av.	8	-58.46244952	-34.70524971	auto	cargas	conductor	masculino	50	lunes	auto	cargas	45-64	t
2020-0046	1	2020-10-27	2020	octubre	27	21:00:00	avenida	nazca av.	sin datos	carranza, adolfo p.	nazca av. y carranza, adolfo p.	11	-58.48440160	-34.60776782	moto	moto	conductor	masculino	41	martes	moto	moto	30-44	t
2020-0047	1	2020-10-27	2020	octubre	27	14:00:00	autopista	autopista presidente hector j. campora	sin datos	lacarra av.	autopista presidente hã‰ctor j. cãmpora y lacarra av.	9	-58.46668375	-34.65174801	peaton	cargas	peaton	masculino	15	martes	peaton	cargas	0-17	t
2020-0049	1	2020-10-30	2020	octubre	30	20:00:00	avenida	del libertador av.	sin datos	ramos mejia, jose maria, dr. av.	del libertador av. y ramos mejia, jose maria, dr. av.	1	-58.37533517	-34.59276462	peaton	auto	peaton	masculino	36	viernes	peaton	auto	30-44	t
2020-0050	1	2020-11-01	2020	noviembre	1	22:00:00	avenida	santa fe av.	sin datos	godoy cruz	santa fe av. y godoy cruz	14	-58.42525456	-34.57866344	peaton	moto	peaton	femenino	28	domingo	peaton	moto	18-29	t
2020-0051	1	2020-11-05	2020	noviembre	5	00:40:00	avenida	avellaneda av.	sin datos	mercedes	avellaneda av. y mercedes	10	-58.48493828	-34.62981124	moto	auto	conductor	masculino	49	jueves	moto	auto	45-64	t
2020-0052	1	2020-11-07	2020	noviembre	7	06:50:00	avenida	tucuman	sin datos	pueyrredon av.	tucuman y pueyrredon av.	3	-58.40480504	-34.60183884	bicicleta	cargas	ciclista	masculino	44	sabado	bicicleta	cargas	30-44	t
2020-0053	1	2020-11-09	2020	noviembre	9	03:30:00	avenida	alcorta, amancio av.	sin datos	einstein, alberto	alcorta, amancio av. y einstein, alberto	4	-58.41125934	-34.65417740	auto	auto	pasajero_acompañante	masculino	27	lunes	auto	auto	18-29	t
2020-0054	1	2020-11-19	2020	noviembre	19	09:00:00	calle	inclan	sin datos	alberti	inclan y alberti	4	-58.39956546	-34.62977080	bicicleta	auto	ciclista	masculino	59	jueves	bicicleta	auto	45-64	t
2020-0055	1	2020-11-19	2020	noviembre	19	12:30:00	avenida	olazabal av.	5437.0	sin datos	olazabal av. 5437	12	-58.49005682	-34.57868970	peaton	cargas	peaton	masculino	91	jueves	peaton	cargas	65+	f
2020-0056	1	2020-11-21	2020	noviembre	21	13:00:00	gral paz	paz, gral. av.	sin datos	roca, cnel. av.	paz, gral. av. y roca, cnel. av.	8	-58.47064556	-34.69843756	moto	cargas	conductor	femenino	34	sabado	moto	cargas	30-44	t
2020-0057	1	2020-11-23	2020	noviembre	23	07:45:00	avenida	nazca av.	sin datos	viale, luis	nazca av. y viale, luis	11	-58.47501560	-34.61945902	peaton	auto	peaton	masculino	84	lunes	peaton	auto	65+	t
2020-0058	1	2020-11-24	2020	noviembre	24	16:00:00	avenida	olivera av.	sin datos	falcon, ramon l.,cnel.	olivera av. y falcon, ramon l.,cnel.	10	-58.48727942	-34.63652467	peaton	auto	peaton	masculino	57	martes	peaton	auto	45-64	t
2020-0059	1	2020-12-01	2020	diciembre	1	06:35:00	calle	brasil	1100.0	sin datos	brasil 1100	1	-58.37951690	-34.62794241	peaton	pasajeros	peaton	femenino	49	martes	peaton	pasajeros	45-64	f
2020-0060	1	2020-12-03	2020	diciembre	3	20:30:00	avenida	homero	sin datos	peron, eva av.	homero y peron, eva av.	9	-58.47750832	-34.65672199	peaton	moto	peaton	femenino	69	jueves	peaton	moto	65+	t
2020-0061	1	2020-12-03	2020	diciembre	3	14:40:00	autopista	cantilo, int.	sin datos	udaondo, guillermo av.	cantilo, int. y udaondo, guillermo av.	13	-58.44927253	-34.54048625	moto	cargas	conductor	masculino	45	jueves	moto	cargas	45-64	t
2020-0062	1	2020-12-04	2020	diciembre	4	17:19:00	calle	moreno	1845.0	sin datos	moreno 1845	3	-58.39246272	-34.61253541	bicicleta	pasajeros	ciclista	masculino	47	viernes	bicicleta	pasajeros	45-64	f
2020-0063	2	2020-12-05	2020	diciembre	5	07:10:00	calle	nueva york	sin datos	alta gracia	nueva york y alta gracia	11	-58.52783814	-34.61047001	peaton	moto	peaton	masculino	38	sabado	peaton	moto	30-44	t
2020-0063	2	2020-12-05	2020	diciembre	5	07:10:00	calle	nueva york	sin datos	alta gracia	nueva york y alta gracia	11	-58.52783814	-34.61047001	peaton	moto	pasajero_acompañante	masculino	21	sabado	peaton	moto	18-29	t
2020-0065	1	2020-12-05	2020	diciembre	5	16:00:00	gral paz	paz, gral. av.	sin datos	goyeneche, roberto parque av.	paz, gral. av. y goyeneche, roberto parque av.	12	-58.49332664	-34.54836855	moto	auto	conductor	masculino	24	sabado	moto	auto	18-29	t
2020-0066	1	2020-12-07	2020	diciembre	7	04:30:00	autopista	autopista perito moreno	sin datos	sin datos	autopista perito moreno (altura estacion de tren villa luro)	10	-58.50178784	-34.63593897	moto	objeto fijo	conductor	masculino	27	lunes	moto	objeto fijo	18-29	f
2020-0067	1	2020-12-11	2020	diciembre	11	22:00:00	avenida	saenz av.	sin datos	beazley	saenz av. y beazley	4	-58.41657793	-34.65476216	peaton	pasajeros	peaton	masculino	51	viernes	peaton	pasajeros	45-64	t
2020-0068	1	2020-12-12	2020	diciembre	12	20:30:00	avenida	del libertador av.	sin datos	austria	del libertador av. y austria	2	-58.39731474	-34.58307887	moto	auto	conductor	masculino	71	sabado	moto	auto	65+	t
2020-0069	1	2020-12-15	2020	diciembre	15	05:20:00	avenida	independencia av.	sin datos	saenz pe?a, luis, pres.	independencia av. y saenz peã‘a, luis, pres.	1	-58.38746381	-34.61790839	moto	pasajeros	pasajero_acompañante	masculino	25	martes	moto	pasajeros	18-29	t
2020-0070	1	2020-12-17	2020	diciembre	17	15:35:00	avenida	callao av.	sin datos	las heras, general	callao av. y las heras, general	2	-58.39189441	-34.59176378	peaton	pasajeros	peaton	femenino	81	jueves	peaton	pasajeros	65+	t
2020-0071	1	2020-12-17	2020	diciembre	17	23:00:00	avenida	san pedrito av.	sin datos	directorio av.	san pedrito av. y directorio av.	7	-58.46749188	-34.63551751	peaton	auto	peaton	masculino	4	jueves	peaton	auto	0-17	t
2020-0072	1	2020-12-19	2020	diciembre	19	03:30:00	avenida	jujuy av.	sin datos	calvo, carlos	jujuy av. y calvo, carlos	3	-58.40280471	-34.62113271	bicicleta	auto	ciclista	masculino	42	sabado	bicicleta	auto	30-44	t
2020-0073	1	2020-12-20	2020	diciembre	20	07:40:00	avenida	27 de febrero av.	sin datos	escalada av.	27 de febrero av. y escalada av.	8	-58.44451316	-34.68475866	moto	objeto fijo	conductor	masculino	56	domingo	moto	objeto fijo	45-64	t
2020-0074	1	2020-12-20	2020	diciembre	20	21:00:00	avenida	bogota	sin datos	nazca av.	bogota y nazca av.	7	-58.47110424	-34.62742408	auto	auto	conductor	masculino	39	domingo	auto	auto	30-44	t
2020-0075	1	2020-12-23	2020	diciembre	23	14:00:00	avenida	corrientes av.	sin datos	9 de julio av.	corrientes av. y 9 de julio av.	1	-58.38220928	-34.60373898	peaton	pasajeros	peaton	masculino	23	miercoles	peaton	pasajeros	18-29	t
2020-0076	1	2020-12-24	2020	diciembre	24	12:30:00	avenida	alvarez jonte av.	sin datos	chivilcoy	alvarez jonte av. y chivilcoy	10	-58.49794468	-34.61565025	auto	pasajeros	conductor	femenino	78	jueves	auto	pasajeros	65+	t
2020-0077	2	2020-12-25	2020	diciembre	25	06:40:00	avenida	san martin av.	sin datos	punta arenas	san martin av. y punta arenas	15	-58.47220945	-34.60111373	moto	auto	conductor	femenino	30	viernes	moto	auto	30-44	t
2020-0077	2	2020-12-25	2020	diciembre	25	06:40:00	avenida	san martin av.	sin datos	punta arenas	san martin av. y punta arenas	15	-58.47220945	-34.60111373	moto	auto	pasajero_acompañante	femenino	24	viernes	moto	auto	18-29	t
2020-0078	1	2020-12-25	2020	diciembre	25	05:50:00	calle	barco centenera del	1118.0	sin datos	barco centenera del 1118	7	-58.43706741	-34.63217813	bicicleta	pasajeros	ciclista	masculino	26	viernes	bicicleta	pasajeros	18-29	f
2020-0079	1	2020-12-27	2020	diciembre	27	04:15:00	gral paz	paz, gral. av.	sin datos	goyeneche, roberto parque av.	paz, gral. av. y goyeneche, roberto parque av.	12	-58.49332664	-34.54836855	moto	objeto fijo	conductor	masculino	28	domingo	moto	objeto fijo	18-29	t
2021-0001	1	2021-01-06	2021	enero	6	18:00:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	au frondizi km. 3	1	-58.37960727	-34.62622851	moto	auto	conductor	masculino	36	miercoles	moto	auto	30-44	f
2021-0002	1	2021-01-07	2021	enero	7	10:20:00	avenida	castro, emilio av.	sin datos	murguiondo	castro, emilio av. y murguiondo	9	-58.51061062	-34.64972472	moto	cargas	conductor	femenino	47	jueves	moto	cargas	45-64	t
2021-0003	1	2021-01-10	2021	enero	10	07:40:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo km. 3.7	7	-58.43052224	-34.62941648	moto	objeto fijo	conductor	masculino	27	domingo	moto	objeto fijo	18-29	f
2021-0004	1	2021-01-11	2021	enero	11	09:12:18	avenida	caseros av.	sin datos	guarani	caseros av. y guarani	5	-58.41455544	-34.63866836	peaton	cargas	peaton	femenino	61	lunes	peaton	cargas	45-64	t
2021-0005	1	2021-01-11	2021	enero	11	21:30:00	avenida	peron, eva av.	3800.0	sin datos	peron, eva av. 3800	9	-58.46774439	-34.64730145	peaton	auto	peaton	masculino	73	lunes	peaton	auto	65+	f
2021-0006	1	2021-01-12	2021	enero	12	21:00:00	autopista	autopista arturo illia	sin datos	sarmiento av.	autopista arturo illia y sarmiento av.	14	-58.40786274	-34.56726817	moto	cargas	pasajero_acompañante	femenino	23	martes	moto	cargas	18-29	t
2021-0007	1	2021-01-18	2021	enero	18	10:00:00	avenida	de los constituyentes av.	sin datos	giribone	de los constituyentes av. y giribone	15	-58.48744301	-34.58622275	moto	moto	conductor	masculino	84	lunes	moto	moto	65+	t
2021-0008	1	2021-01-22	2021	enero	22	23:30:00	avenida	saenz av.	sin datos	rabanal, francisco, intendente av.	saenz av. y rabanal, francisco, intendente av.	4	-58.41657793	-34.65476216	peaton	pasajeros	peaton	masculino	28	viernes	peaton	pasajeros	18-29	t
2021-0009	1	2021-01-23	2021	enero	23	05:30:00	avenida	paysandu	sin datos	gaona av.	paysandu y gaona av.	6	-58.45351111	-34.61134937	moto	objeto fijo	conductor	masculino	31	sabado	moto	objeto fijo	30-44	t
2021-0010	1	2021-01-23	2021	enero	23	08:00:00	gral paz	paz, gral. av.	sin datos	balbin, ricardo, dr. av.	paz, gral. av. y balbin, ricardo, dr. av.	12	-58.50073810	-34.54979510	moto	auto	conductor	masculino	28	sabado	moto	auto	18-29	t
2021-0011	1	2021-01-27	2021	enero	27	01:04:26	avenida	santa fe av.	1675.0	sin datos	santa fe av. 1675	2	-58.39144148	-34.59564871	peaton	auto	peaton	masculino	21	miercoles	peaton	auto	18-29	f
2021-0012	1	2021-01-29	2021	enero	29	20:07:22	autopista	dellepiane, luis, tte. gral.	sin datos	guamini	dellepiane, luis, tte. gral. y guamini	8	-58.48191128	-34.68385968	peaton	auto	peaton	masculino	\N	viernes	peaton	auto	sin datos	t
2021-0013	1	2021-01-31	2021	enero	31	06:10:00	avenida	falcon, ramon l.,cnel.	sin datos	olivera av.	falcon, ramon l.,cnel. y olivera av.	10	-58.48727942	-34.63652467	moto	objeto fijo	conductor	masculino	41	domingo	moto	objeto fijo	30-44	t
2021-0014	1	2021-02-02	2021	febrero	2	00:50:00	avenida	san martin av.	sin datos	nogoya	san martin av. y nogoya	15	-58.48328708	-34.59779521	peaton	auto	peaton	masculino	28	martes	peaton	auto	18-29	t
2021-0015	1	2021-02-06	2021	febrero	6	03:05:00	avenida	san martin av.	sin datos	tinogasta	san martin av. y tinogasta	15	-58.49018543	-34.59724990	moto	objeto fijo	conductor	masculino	26	sabado	moto	objeto fijo	18-29	t
2021-0016	1	2021-02-14	2021	febrero	14	05:50:00	avenida	fernandez de la cruz, f., gral. av.	sin datos	de la torre, lisandro	fernandez de la cruz, f., gral. av. y de la torre, lisandro	8	-58.47230127	-34.68482689	auto	objeto fijo	conductor	masculino	22	domingo	auto	objeto fijo	18-29	t
2021-0017	1	2021-02-17	2021	febrero	17	04:10:00	avenida	salta	sin datos	caseros av.	salta y caseros av.	1	-58.38262614	-34.63168269	moto	pasajeros	conductor	masculino	33	miercoles	moto	pasajeros	30-44	t
2021-0018	1	2021-02-20	2021	febrero	20	19:00:00	calle	jaures, jean	sin datos	peron, juan domingo, tte. general	jaures, jean y peron, juan domingo, tte. general	3	-58.41047268	-34.60793518	peaton	auto	peaton	masculino	36	sabado	peaton	auto	30-44	t
2021-0019	1	2021-02-21	2021	febrero	21	01:20:00	avenida	triunvirato av.	sin datos	larralde, crisologo av.	triunvirato av. y larralde, crisologo av.	12	-58.49659234	-34.56353635	moto	objeto fijo	conductor	masculino	30	domingo	moto	objeto fijo	30-44	t
2021-0020	1	2021-02-21	2021	febrero	21	15:00:00	calle	potosi	sin datos	gascon	potosi y gascon	5	-58.42462955	-34.60727189	peaton	cargas	peaton	femenino	\N	domingo	peaton	cargas	sin datos	t
2021-0021	1	2021-02-26	2021	febrero	26	05:30:00	calle	yrigoyen, hipolito	sin datos	24 de noviembre	yrigoyen, hipolito y 24 de noviembre	3	-58.41168345	-34.61185625	moto	objeto fijo	conductor	masculino	39	viernes	moto	objeto fijo	30-44	t
2021-0022	1	2021-02-28	2021	febrero	28	12:00:00	avenida	del libertador av.	sin datos	roosevelt franklin d.	del libertador av. y roosevelt franklin d.	13	-58.45157681	-34.55217303	pasajeros	sin datos	pasajero_acompañante	masculino	68	domingo	pasajeros	sin datos	65+	t
2021-0023	1	2021-03-01	2021	marzo	1	09:20:00	autopista	autopista buenos aires - la plata	sin datos	sin datos	sin datos	4	sin datos	sin datos	moto	cargas	conductor	masculino	24	lunes	moto	cargas	18-29	f
2021-0024	1	2021-03-03	2021	marzo	3	16:30:00	avenida	peron, eva av.	sin datos	piedra buena av.	peron, eva av. y piedra buena av.	9	-58.49573651	-34.67006054	bicicleta	cargas	ciclista	masculino	5	miercoles	bicicleta	cargas	0-17	t
2021-0025	1	2021-03-11	2021	marzo	11	03:45:00	gral paz	paz, gral. av.	sin datos	autopista dellepiane luis tte. gral.	paz, gral. av. y autopista dellepiane luis tte. gral.	8	-58.48695354	-34.68795245	moto	otro	conductor	masculino	37	jueves	moto	otro	30-44	t
2021-0026	1	2021-03-15	2021	marzo	15	02:35:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y quinquela martin, benito	4	-58.37562539	-34.64449357	moto	objeto fijo	conductor	masculino	36	lunes	moto	objeto fijo	30-44	f
2021-0027	1	2021-03-16	2021	marzo	16	15:30:00	gral paz	paz, gral. av.	sin datos	donado	paz, gral. av. y donado	12	-58.49491054	-34.54795581	moto	cargas	conductor	femenino	19	martes	moto	cargas	18-29	t
2021-0028	1	2021-03-29	2021	marzo	29	17:20:00	avenida	corea av.	sin datos	torres y tenorio, pres.	corea av. y torres y tenorio, pres.	7	-58.44147621	-34.64357704	peaton	pasajeros	peaton	masculino	\N	lunes	peaton	pasajeros	sin datos	t
2021-0029	1	2021-03-31	2021	marzo	31	18:05:00	avenida	falcon, ramon l.,cnel.	sin datos	san pedrito av.	falcon, ramon l.,cnel. y san pedrito av.	7	-58.46899119	-34.63215432	auto	auto	conductor	masculino	26	miercoles	auto	auto	18-29	t
2021-0030	1	2021-04-03	2021	abril	3	18:30:00	calle	finochietto enrique dr.	1623.0	sin datos	finochietto enrique dr. 1623	4	-58.38685612	-34.63455776	peaton	pasajeros	peaton	masculino	36	sabado	peaton	pasajeros	30-44	f
2021-0031	1	2021-04-07	2021	abril	7	10:29:00	avenida	9 de julio av.	sin datos	independencia av.	9 de julio av. e independencia av.	1	-58.38113667	-34.61765323	peaton	cargas	peaton	femenino	68	miercoles	peaton	cargas	65+	t
2021-0032	1	2021-04-10	2021	abril	10	19:55:00	autopista	cantilo, int.	sin datos	guiraldes, int.	cantilo, int. y guiraldes, int.	13	-58.44112678	-34.54538956	peaton	moto	peaton	masculino	60	sabado	peaton	moto	45-64	t
2021-0033	1	2021-04-14	2021	abril	14	17:50:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y boedo av.	5	-58.41595919	-34.62743346	auto	objeto fijo	conductor	masculino	33	miercoles	auto	objeto fijo	30-44	f
2021-0034	1	2021-04-19	2021	abril	19	14:40:00	avenida	alcorta, amancio av.	sin datos	zavaleta	alcorta, amancio av. y zavaleta	4	-58.40184094	-34.64546845	moto	cargas	pasajero_acompañante	femenino	26	lunes	moto	cargas	18-29	t
2021-0035	1	2021-05-03	2021	mayo	3	09:20:00	avenida	janer, ana maria	sin datos	lafuente av.	janer, ana maria y lafuente av.	8	-58.44642231	-34.65679806	moto	cargas	conductor	masculino	24	lunes	moto	cargas	18-29	t
2021-0036	1	2021-05-09	2021	mayo	9	06:00:00	gral paz	paz, gral. av.	sin datos	mosconi general av.	paz, gral. av. y mosconi general av.	11	-58.52340614	-34.59798754	moto	objeto fijo	conductor	masculino	36	domingo	moto	objeto fijo	30-44	t
2021-0037	1	2021-05-11	2021	mayo	11	07:10:00	avenida	monroe	sin datos	balbin, ricardo, dr. av.	monroe y balbin, ricardo, dr. av.	13	-58.46649069	-34.56219075	peaton	pasajeros	peaton	femenino	58	martes	peaton	pasajeros	45-64	t
2021-0038	1	2021-05-14	2021	mayo	14	11:40:00	avenida	justo, juan b. av.	sin datos	santa fe av.	justo, juan b. av. y santa fe av.	14	-58.42653328	-34.57816791	moto	cargas	conductor	femenino	44	viernes	moto	cargas	30-44	t
2021-0039	1	2021-05-15	2021	mayo	15	12:09:00	avenida	oliden	sin datos	alberdi, juan bautista av.	oliden y alberdi, juan bautista av.	9	-58.50407099	-34.65303372	bicicleta	auto	ciclista	masculino	86	sabado	bicicleta	auto	65+	t
2021-0040	1	2021-05-20	2021	mayo	20	05:50:00	gral paz	paz, gral. av.	sin datos	del libertador av.	paz, gral. av. y del libertador av.	13	-58.46743471	-34.53476874	moto	auto	conductor	masculino	27	jueves	moto	auto	18-29	t
2021-0041	1	2021-05-20	2021	mayo	20	08:30:00	avenida	del libertador av.	sin datos	casares av.	del libertador av. y casares av.	14	-58.40986646	-34.57728060	peaton	pasajeros	peaton	masculino	75	jueves	peaton	pasajeros	65+	t
2021-0042	1	2021-05-21	2021	mayo	21	05:00:00	avenida	rivadavia av.	10900.0	sin datos	rivadavia av. 10900	9	-58.51739138	-34.63931792	peaton	pasajeros	peaton	masculino	39	viernes	peaton	pasajeros	30-44	f
2021-0043	1	2021-05-22	2021	mayo	22	18:26:00	avenida	alberdi, juan bautista av.	sin datos	pilar	alberdi, juan bautista av. y pilar	9	-58.50719962	-34.65556223	peaton	auto	peaton	masculino	50	sabado	peaton	auto	45-64	t
2021-0044	1	2021-05-25	2021	mayo	25	02:00:00	avenida	peron, eva av.	sin datos	acosta, mariano	peron, eva av. y acosta, mariano	9	-58.46712311	-34.64600222	moto	objeto fijo	pasajero_acompañante	masculino	21	martes	moto	objeto fijo	18-29	t
2021-0045	1	2021-05-26	2021	mayo	26	17:24:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y suarez av.	4	-58.37709334	-34.64035082	moto	multiple	conductor	masculino	22	miercoles	multiple	sin datos	18-29	f
2021-0046	1	2021-05-31	2021	mayo	31	02:00:00	avenida	elcano av.	sin datos	guzman av.	elcano av. y guzman av.	15	-58.46033141	-34.58569883	auto	objeto fijo	pasajero_acompañante	masculino	20	lunes	auto	objeto fijo	18-29	t
2021-0047	1	2021-06-02	2021	junio	2	16:00:00	avenida	vedia, agustin de	sin datos	rabanal, francisco, intendente av.	vedia, agustin de y rabanal, francisco, intendente av.	4	-58.42190745	-34.65633192	moto	auto	conductor	masculino	59	miercoles	moto	auto	45-64	t
2021-0048	1	2021-06-03	2021	junio	3	09:58:00	avenida	capdevila	sin datos	congreso av.	capdevila y congreso av.	12	-58.49026573	-34.56981410	bicicleta	auto	ciclista	masculino	44	jueves	bicicleta	auto	30-44	t
2021-0049	1	2021-06-03	2021	junio	3	20:30:00	avenida	fernandez de la cruz, f., gral. av.	4000.0	sin datos	fernandez de la cruz, f., gral. av. 4000	8	-58.45410344	-34.66902702	auto	auto	conductor	masculino	74	jueves	auto	auto	65+	f
2021-0050	1	2021-06-10	2021	junio	10	13:30:00	avenida	del libertador av.	5958.0	sin datos	del libertador av. 5958	13	-58.44751621	-34.55719892	moto	pasajeros	conductor	masculino	56	jueves	moto	pasajeros	45-64	f
2021-0051	1	2021-06-15	2021	junio	15	19:20:00	avenida	27 de febrero av.	sin datos	erezcano av.	27 de febrero av. y erezcano av.	4	-58.42040352	-34.66005171	peaton	cargas	peaton	masculino	73	martes	peaton	cargas	65+	t
2021-0052	1	2021-06-20	2021	junio	20	05:40:00	gral paz	paz, gral. av.	14723.0	sin datos	paz, gral. av. 14723	8	-58.49530249	-34.68010798	moto	objeto fijo	pasajero_acompañante	femenino	19	domingo	moto	objeto fijo	18-29	f
2021-0053	1	2021-06-20	2021	junio	20	12:00:00	avenida	corrientes av.	5783.0	sin datos	corrientes av. 5783	15	-58.44399875	-34.59477360	peaton	bicicleta	peaton	masculino	58	domingo	peaton	bicicleta	45-64	f
2021-0054	1	2021-06-22	2021	junio	22	14:44:00	calle	tabare	sin datos	erezcano	tabare y erezcano	4	-58.42759813	-34.65463857	moto	cargas	conductor	masculino	41	martes	moto	cargas	30-44	t
2021-0055	1	2021-06-29	2021	junio	29	12:20:00	avenida	corrientes av.	sin datos	pueyrredon av.	corrientes av. y pueyrredon av.	3	-58.40547222	-34.60456293	moto	cargas	pasajero_acompañante	masculino	47	martes	moto	cargas	45-64	t
2021-0056	1	2021-07-09	2021	julio	9	23:25:00	avenida	corrales	sin datos	moreno, perito av.	corrales y moreno, perito av.	4	-58.42473018	-34.65008280	bicicleta	auto	ciclista	masculino	60	viernes	bicicleta	auto	45-64	t
2021-0057	1	2021-07-10	2021	julio	10	23:30:00	autopista	autopista arturo illia	sin datos	sin datos	autopista  arturo illia (cabina de peaje)	2	-58.39257023	-34.57563957	auto	objeto fijo	conductor	masculino	46	sabado	auto	objeto fijo	45-64	f
2021-0058	1	2021-07-21	2021	julio	21	00:40:00	gral paz	paz, gral. av.	sin datos	vedia	paz, gral. av. y vedia	12	-58.48941042	-34.54596153	peaton	auto	peaton	masculino	24	miercoles	peaton	auto	18-29	t
2021-0059	1	2021-07-22	2021	julio	22	01:20:00	avenida	garay, juan de av.	2269.0	sin datos	garay, juan de av. 2269	3	-58.39640740	-34.62783085	auto	objeto fijo	pasajero_acompañante	femenino	44	jueves	auto	objeto fijo	30-44	f
2021-0060	1	2021-07-22	2021	julio	22	12:30:00	avenida	salguero, jeronimo	sin datos	rivadavia av.	salguero, jeronimo y rivadavia av.	5	-58.41971993	-34.61112240	peaton	pasajeros	peaton	femenino	80	jueves	peaton	pasajeros	65+	t
2021-0061	1	2021-07-24	2021	julio	24	09:15:00	avenida	moreno, perito av.	sin datos	alcorta, amancio av.	moreno, perito av. y alcorta, amancio av.	4	-58.40544588	-34.65012801	peaton	cargas	peaton	femenino	55	sabado	peaton	cargas	45-64	t
2021-0062	1	2021-07-27	2021	julio	27	07:16:00	avenida	la plata av.	2723.0	sin datos	la plata av. 2723	4	-58.42003882	-34.64645957	auto	cargas	conductor	masculino	73	martes	auto	cargas	65+	f
2021-0063	1	2021-08-02	2021	agosto	2	04:40:00	avenida	alberdi, juan bautista av.	2906.0	sin datos	alberdi, juan bautista av. 2906	7	-58.46851293	-34.63348678	auto	auto	pasajero_acompañante	femenino	31	lunes	auto	auto	30-44	f
2021-0064	1	2021-08-02	2021	agosto	2	20:00:00	gral paz	paz, gral. av.	sin datos	tonelero	paz, gral. av. y tonelero	9	-58.52931141	-34.65422917	peaton	cargas	peaton	masculino	37	lunes	peaton	cargas	30-44	t
2021-0065	1	2021-08-06	2021	agosto	6	08:30:00	avenida	san juan av.	sin datos	la plata av.	san juan av. y la plata av.	6	-58.42675754	-34.62699730	peaton	pasajeros	peaton	femenino	63	viernes	peaton	pasajeros	45-64	t
2021-0066	1	2021-08-06	2021	agosto	6	20:00:00	avenida	lope de vega av.	sin datos	paz, gral. av.	lope de vega av. y paz, gral. av.	11	-58.52933723	-34.61098186	peaton	pasajeros	peaton	masculino	59	viernes	peaton	pasajeros	45-64	t
2021-0067	1	2021-08-08	2021	agosto	8	09:29:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y brasil	1	-58.37910943	-34.62764718	moto	objeto fijo	conductor	masculino	27	domingo	moto	objeto fijo	18-29	f
2021-0068	1	2021-08-15	2021	agosto	15	06:10:00	avenida	beiro, francisco av.	5071.0	sin datos	beiro, francisco av. 5071	11	-58.52161176	-34.61164474	moto	objeto fijo	conductor	masculino	39	domingo	moto	objeto fijo	30-44	f
2021-0069	1	2021-08-20	2021	agosto	20	17:15:00	avenida	santa fe av.	3428.0	sin datos	santa fe av. 3428	14	-58.41354692	-34.58697680	peaton	auto	peaton	masculino	17	viernes	peaton	auto	0-17	f
2021-0070	1	2021-08-28	2021	agosto	28	08:30:00	avenida	chilavert, martiniano, coronel	sin datos	varela av.	chilavert, martiniano, coronel y varela av.	8	-58.43960781	-34.65470804	moto	cargas	conductor	masculino	31	sabado	moto	cargas	30-44	t
2021-0071	1	2021-08-31	2021	agosto	31	16:00:00	calle	san luis	2730.0	sin datos	san luis 2730	3	-58.40454610	-34.60003693	peaton	moto	peaton	masculino	88	martes	peaton	moto	65+	f
2021-0072	1	2021-09-01	2021	septiembre	1	19:10:00	avenida	callao av.	sin datos	paraguay	callao av. y paraguay	2	-58.39303911	-34.59871111	peaton	auto	peaton	femenino	57	miercoles	peaton	auto	45-64	t
2021-0073	1	2021-09-18	2021	septiembre	18	12:20:00	avenida	del libertador av.	sin datos	agote, luis dr.	del libertador av. y agote, luis dr.	2	-58.39391034	-34.58405348	bicicleta	auto	ciclista	femenino	76	sabado	bicicleta	auto	65+	t
2021-0074	1	2021-09-20	2021	septiembre	20	15:00:00	gral paz	paz, gral. av.	sin datos	balbin, ricardo, dr. av.	paz, gral. av. y balbin, ricardo, dr. av.	12	-58.50073810	-34.54979510	moto	multiple	conductor	masculino	55	lunes	multiple	sin datos	45-64	t
2021-0075	1	2021-09-21	2021	septiembre	21	14:30:00	calle	salta	sin datos	brasil	salta y brasil	1	-58.38281301	-34.62786038	peaton	cargas	peaton	masculino	65	martes	peaton	cargas	65+	t
2021-0076	1	2021-10-16	2021	octubre	16	06:15:00	avenida	moreno, perito av.	2152.0	sin datos	moreno, perito av. 2152	7	-58.43980799	-34.65094083	moto	objeto fijo	conductor	masculino	31	sabado	moto	objeto fijo	30-44	f
2021-0077	1	2021-10-18	2021	octubre	18	07:20:00	avenida	directorio av.	1169.0	sin datos	directorio av. 1169	6	-58.44402387	-34.62933109	moto	cargas	conductor	femenino	31	lunes	moto	cargas	30-44	f
2021-0078	1	2021-10-23	2021	octubre	23	06:35:00	avenida	independencia av.	sin datos	la plata av.	independencia av. y la plata av.	6	-58.42779702	-34.62207347	moto	pasajeros	conductor	masculino	22	sabado	moto	pasajeros	18-29	t
2021-0079	1	2021-10-25	2021	octubre	25	03:30:00	calle	tucuman	3112.0	sin datos	tucuman 3112	3	-58.40944147	-34.60097942	peaton	auto	peaton	masculino	\N	lunes	peaton	auto	sin datos	f
2021-0080	1	2021-10-28	2021	octubre	28	16:16:00	avenida	arenales	sin datos	9 de julio av.	arenales y 9 de julio av.	1	-58.38277479	-34.59430160	moto	auto	conductor	masculino	32	jueves	moto	auto	30-44	t
2021-0081	1	2021-11-02	2021	noviembre	2	13:35:00	autopista	autopista 1 sur presidente arturo frondizi	sin datos	sin datos	autopista 1 sur presidente arturo frondizi y brandsen	4	-58.37627355	-34.63800916	moto	cargas	conductor	masculino	26	martes	moto	cargas	18-29	f
2021-0082	1	2021-11-06	2021	noviembre	6	04:39:00	autopista	autopista 25 de mayo	sin datos	sin datos	autopista 25 de mayo y pasco	3	-58.39591856	-34.62453459	moto	auto	conductor	masculino	38	sabado	moto	auto	30-44	f
2021-0083	1	2021-11-09	2021	noviembre	9	00:35:00	avenida	cabildo av.	sin datos	olazabal	cabildo av. y olazabal	13	-58.45829717	-34.56015762	moto	auto	conductor	masculino	30	martes	moto	auto	30-44	t
2021-0084	1	2021-11-11	2021	noviembre	11	03:00:00	avenida	tapalque	sin datos	bruix av.	tapalque y bruix av.	9	-58.49142611	-34.64584795	auto	objeto fijo	conductor	masculino	32	jueves	auto	objeto fijo	30-44	t
2021-0085	1	2021-11-20	2021	noviembre	20	18:30:00	gral paz	paz, gral. av.	sin datos	ezeiza	paz, gral. av. y ezeiza	12	-58.51271409	-34.57786555	moto	objeto fijo	conductor	masculino	49	sabado	moto	objeto fijo	45-64	t
2021-0086	1	2021-11-25	2021	noviembre	25	10:10:00	avenida	rivadavia av.	sin datos	puan	rivadavia av. y puan	6	-58.44864864	-34.62352826	peaton	pasajeros	peaton	masculino	75	jueves	peaton	pasajeros	65+	t
2021-0087	1	2021-11-27	2021	noviembre	27	11:22:00	calle	esmeralda	1359.0	sin datos	esmeralda 1359	1	-58.37795815	-34.59167894	peaton	bicicleta	peaton	femenino	73	sabado	peaton	bicicleta	65+	f
2021-0088	1	2021-12-01	2021	diciembre	1	15:40:00	calle	monroe	sin datos	3 de febrero	monroe y 3 de febrero	13	-58.45531707	-34.55555257	moto	auto	conductor	masculino	45	miercoles	moto	auto	45-64	t
2021-0089	1	2021-12-02	2021	diciembre	2	01:10:00	avenida	gaona av.	3655.0	sin datos	gaona av. 3655	11	-58.47633683	-34.62140594	moto	auto	conductor	masculino	41	jueves	moto	auto	30-44	f
2021-0090	1	2021-12-10	2021	diciembre	10	11:45:00	avenida	9 de julio av.	sin datos	lavalle	9 de julio av. y lavalle	1	-58.38188582	-34.60256036	peaton	pasajeros	peaton	masculino	73	viernes	peaton	pasajeros	65+	t
2021-0091	1	2021-12-11	2021	diciembre	11	23:00:00	calle	baigorria	sin datos	hugo, victor	baigorria y hugo, victor	10	-58.51989389	-34.62284918	moto	auto	conductor	masculino	24	sabado	moto	auto	18-29	t
2021-0092	1	2021-12-12	2021	diciembre	12	06:20:00	avenida	rivadavia av.	sin datos	pueyrredon av.	rivadavia av. y pueyrredon av.	3	-58.40596860	-34.61011987	peaton	auto	peaton	femenino	50	domingo	peaton	auto	45-64	t
2021-0093	1	2021-12-13	2021	diciembre	13	17:10:00	avenida	riestra av.	sin datos	mom	riestra av. y mom	7	-58.43353773	-34.64561636	moto	auto	pasajero_acompañante	femenino	18	lunes	moto	auto	18-29	t
2021-0094	1	2021-12-20	2021	diciembre	20	01:10:00	autopista	dellepiane, luis, tte. gral.	sin datos	lacarra av.	dellepiane, luis, tte. gral. y lacarra av.	9	-58.46739825	-34.65117757	moto	auto	pasajero_acompañante	femenino	43	lunes	moto	auto	30-44	t
2021-0095	1	2021-12-30	2021	diciembre	30	00:43:00	avenida	gaona av.	sin datos	terrada	gaona av. y terrada	11	-58.47293407	-34.61984745	moto	cargas	conductor	masculino	27	jueves	moto	cargas	18-29	t
2021-0096	1	2021-12-15	2021	diciembre	15	10:30:00	avenida	peron, eva av.	4071.0	sin datos	peron, eva av. 4071	9	-58.47066794	-34.65021673	auto	cargas	conductor	masculino	60	miercoles	auto	cargas	45-64	f
2021-0097	1	2021-11-18	2021	noviembre	18	06:10:00	calle	padre carlos mujica	709.0	sin datos	padre carlos mugica 709	1	-58.37976155	-34.58679619	bicicleta	auto	ciclista	masculino	53	jueves	bicicleta	auto	45-64	f
\.


--
-- Data for Name: kpi_1; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.kpi_1 ("HOMICIDIOS", "TASA_HOMICIDIOS", "TASA_HOMICIDIOS_ANTERIOR", "VARIACION", "SEMESTRE", "AÑO", "OBJETIVO") FROM stdin;
65	2.12	0	0	1	2016	0
80	2.62	2.12	23.08	2	2016	1.91
69	2.25	2.62	-13.88	1	2017	2.35
71	2.32	2.25	2.9	2	2017	2.03
70	2.28	2.32	-1.55	1	2018	2.09
79	2.57	2.28	12.86	2	2018	2.05
57	1.86	2.57	-27.94	1	2019	2.32
47	1.53	1.86	-17.54	2	2019	1.67
31	1.01	1.53	-34.12	1	2020	1.38
50	1.63	1.01	61.29	2	2020	0.91
55	1.79	1.63	9.89	1	2021	1.46
42	1.36	1.79	-23.64	2	2021	1.61
\.


--
-- Data for Name: kpi_2; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.kpi_2 ("año", "N_VICTIMAS", "N_VICTIMAS_ANTERIOR", "VARIACION_VICTIMAS_MOTO") FROM stdin;
2016	67	0	0
2017	62	67	-7.46
2018	61	62	-1.61
2019	50	61	-18.03
2020	30	50	-40
2021	46	30	53.33
\.


--
-- Data for Name: kpi_3; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.kpi_3 ("Período", "Concentración (%)") FROM stdin;
Últimos 6 meses	16.666666666666664
Semestre anterior	17.359050445103858
Variación porcentual	-3.9886039886040026
\.


--
-- PostgreSQL database dump complete
--

