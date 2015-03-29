--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: prof_istat_l1_grandi_gruppi; Type: TABLE; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE TABLE prof_istat_l1_grandi_gruppi (
    pk_prof_istat_l1 integer NOT NULL,
    ds_prof_istat_l1 character varying(255)
);


ALTER TABLE prof_istat_l1_grandi_gruppi OWNER TO sod_hacklavoro;

--
-- Name: TABLE prof_istat_l1_grandi_gruppi; Type: COMMENT; Schema: public; Owner: sod_hacklavoro
--

COMMENT ON TABLE prof_istat_l1_grandi_gruppi IS 'Professione ISTAT
Livello 1
Grandi Gruppi';


--
-- Name: prof_istat_l2_gruppi; Type: TABLE; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE TABLE prof_istat_l2_gruppi (
    pk_prof_istat_l2 integer NOT NULL,
    ds_prof_istat_l2 character varying(255),
    fk_prof_istat_l1 integer
);


ALTER TABLE prof_istat_l2_gruppi OWNER TO sod_hacklavoro;

--
-- Name: prof_istat_l3_classi; Type: TABLE; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE TABLE prof_istat_l3_classi (
    pk_prof_istat_l3 integer NOT NULL,
    ds_prof_istat_l3 character varying(255),
    fk_prof_istat_l2 integer
);


ALTER TABLE prof_istat_l3_classi OWNER TO sod_hacklavoro;

--
-- Name: prof_istat_l4_categorie; Type: TABLE; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE TABLE prof_istat_l4_categorie (
    pk_prof_istat_l4 integer NOT NULL,
    ds_prof_istat_l4 character varying(255),
    fk_prof_istat_l3 integer
);


ALTER TABLE prof_istat_l4_categorie OWNER TO sod_hacklavoro;

--
-- Name: territorio; Type: TABLE; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE TABLE territorio (
    pk_regione integer NOT NULL,
    ds_regione character varying(255)[],
    id_ripartizione_geografica integer,
    ds_ripartizione_geografica character varying(255)[]
);


ALTER TABLE territorio OWNER TO sod_hacklavoro;

--
-- Data for Name: prof_istat_l1_grandi_gruppi; Type: TABLE DATA; Schema: public; Owner: sod_hacklavoro
--

COPY prof_istat_l1_grandi_gruppi (pk_prof_istat_l1, ds_prof_istat_l1) FROM stdin;
1	Dirigenti
2	Professioni intellettuali, scientifiche e di elevata specializzazione
3	Professioni tecniche
4	Professioni esecutive nel lavoro d'ufficio
5	Professioni qualificate nelle attività commerciali e nei servizi
6	Artigiani, operai specializzati e agricoltori
7	Conduttori di impianti e operai di macchinari fissi e mobili
8	Professioni non qualificate
\.


--
-- Data for Name: prof_istat_l2_gruppi; Type: TABLE DATA; Schema: public; Owner: sod_hacklavoro
--

COPY prof_istat_l2_gruppi (pk_prof_istat_l2, ds_prof_istat_l2, fk_prof_istat_l1) FROM stdin;
12	Amministratori e direttori di grandi aziende	1
13	Responsabili di piccole aziende	1
21	Specialisti in scienze matematiche, informatiche, fisiche e naturali	2
22	Ingegneri, architetti e professioni assimilate	2
23	Specialisti nelle scienze della vita	2
24	Specialisti della salute	2
25	Specialisti in scienze umane, sociali, artistiche e gestionali	2
26	Specialisti della formazione e della ricerca	2
31	Professioni tecniche in campo scientifico, ingegneristico e produttivo	3
32	Professioni tecniche nelle scienze della salute e della vita	3
33	Profess. tecniche in attività amministrative finanziarie e commerciali	3
34	Professioni tecniche nei servizi pubblici e alle persone	3
41	Impiegati alle funzioni di segreteria e alle macchine da ufficio	4
42	Impiegati addetti ai movimenti di denaro e all'assistenza clienti	4
43	Impiegati alla gestione amministrativa, contabile e finanziaria	4
44	Impiegati raccolta, controllo e conservazione della documentazione	4
51	Professioni qualificate nelle attività commerciali	5
52	Professioni qualificate nelle attività ricettive e della ristorazione	5
53	Professioni qualificate nei servizi sanitari e sociali	5
54	Profess. qualif. nei servizi di sicurezza, di pulizia e alla persona	5
61	Artigiani e operai specializzati in industria estrattiva e in edilizia	6
62	Artigiani e operai specializzati in metalmeccanica ed elettronica	6
63	Operai specializ. meccanica precisione, stampa e artigiani artistici	6
64	Agricoltori e operai specializzati di agricoltura, zootecnia e pesca	6
65	Artigiani e operai spec. ind. aliment.,legno,tessile,pelle,spettacolo	6
71	Conduttori di impianti industriali	7
72	Operai semiqualif. di macchinari lavorazione in serie e al montaggio	7
73	Operatori macchinari fissi in agricoltura e nell'industria alimentare	7
74	Conduttori di veicoli, di macchinari mobili e di sollevamento	7
81	Professioni non qualificate nel commercio e nei servizi	8
82	Profess. non qualif. nelle attività domestiche, ricreative e culturali	8
83	Profess. non qualif. in agricoltura, silvicoltura e pesca	8
84	Profess. non qualif. nella manifattura, estraz. minerali e costruzioni	8
\.


--
-- Data for Name: prof_istat_l3_classi; Type: TABLE DATA; Schema: public; Owner: sod_hacklavoro
--

COPY prof_istat_l3_classi (pk_prof_istat_l3, ds_prof_istat_l3, fk_prof_istat_l2) FROM stdin;
122	Direttori e dirigenti generali di aziende	12
123	Direttori e dirigenti dipartimentali di aziende	12
131	Responsabili di piccole aziende	13
211	Specialisti in scienze matematiche, informatiche, fisiche e naturali	21
221	Ingegneri e professioni assimilate	22
222	Architetti, urbanisti e specialisti recupero-conservaz. del territorio	22
231	Specialisti nelle scienze della vita	23
241	Medici	24
251	Specialisti delle scienze gestionali, commerciali e bancarie	25
252	Specialisti in scienze giuridiche	25
253	Specialisti in scienze sociali	25
254	Specialisti in discipline linguistiche, letterarie e documentali	25
255	Specialisti in discipline artistico-espressive	25
261	Docenti universitari (ordinari e associati)	26
263	Professori di scuola secondaria, post-secondaria e profess. assimilate	26
264	Professori di scuola primaria, pre-primaria e professioni assimilate	26
265	Altri specialisti dell'educazione e della formazione	26
311	Tecnici delle scienze quantitative, fisiche e chimiche	31
312	Tecnici informatici, telematici e delle telecomunicazioni	31
313	Tecnici in campo ingegneristico	31
314	Tecnici conduttori impianti produttivi, di reti idriche ed energetiche	31
315	Tecnici della gestione dei processi produttivi di beni e servizi	31
316	Tecnici del trasporto aereo, navale e ferroviario	31
317	Tecnici di apparecchiature ottiche e audio-video	31
318	Tecnici della sicurezza e della protezione ambientale	31
321	Tecnici della salute	32
322	Tecnici nelle scienze della vita	32
331	Tecnici organizzazione e amministrazione delle attività produttive	33
332	Tecnici delle attività finanziarie e assicurative	33
333	Tecnici dei rapporti con i mercati	33
334	Tecnici della distribuzione commerciale e professioni assimilate	33
341	Professioni tecniche delle attività turistiche, ricettive e assimilate	34
342	Insegnanti formaz.profes., istruttori,allenatori,atleti,profes.assim.	34
343	Tecnici dei servizi ricreativi	34
344	Tecnici dei servizi culturali	34
345	Tecnici dei servizi sociali	34
411	Impiegati addetti alla segreteria e agli affari generali	41
412	Impiegati addetti alle macchine d'ufficio	41
421	Impiegati addetti agli sportelli e ai movimenti di denaro	42
422	Impiegati addetti all'accoglienza e all'informazione della clientela	42
431	Impiegati addetti alla gestione amministrativa della logistica	43
432	Impiegati addetti alla gestione economica, contabile e finanziaria	43
441	Impiegati addetti controllo documenti e smistamento e recapito posta	44
442	Impiegati addetti archiviazione e conservazione documentazione	44
511	Esercenti delle vendite	51
512	Addetti alle vendite	51
513	Altre professioni qualificate nelle attività commerciali	51
522	Esercenti e addetti nelle attività di ristorazione	52
523	Assistenti di viaggio e professioni assimilate	52
531	Professioni qualificate nei servizi sanitari e sociali	53
541	Maestri di arti e mestieri	54
542	Professioni qualificate nei servizi ricreativi, culturali e assimilati	54
543	Operatori della cura estetica	54
544	Professioni qualificate nei servizi personali e assimilati	54
546	Esercenti e addetti agenzie disbrigo pratiche e assimilate	54
547	Esercenti e addetti di agenzie di pompe funebri	54
548	Professioni qualificate servizi di sicurezza, vigilanza e custodia	54
611	Brillatori, tagliatori pietre, coltivatori saline e profes.assimilate	61
612	Artigiani e operai specializ. costruzioni-mantenimento strutture edili	61
613	Artigiani e operai specializ. addetti rifiniture delle costruzioni	61
614	Artigiani e operai special. pitturazione e pulizia esterni edifici	61
615	Artigiani e operai specializ. addetti pulizia e igiene degli edifici	61
621	Fonditori, saldatori, montatori carpenteria metallica e profes. assim.	62
622	Fabbri ferrai costruttori di utensili e assimilati	62
623	Meccanici artigianali, montatori e manutentori macch. fisse e mobili	62
624	Artigiani e operai special. installaz. manutenz. elettriche-elettron.	62
631	Artigiani e operai special. meccanica precis.metalli, materiali assim.	63
632	Vasai, soffiatori e formatori di vetrerie e professioni assimilate	63
633	Artigiani del legno, del tessuto e del cuoio e dei materiali assim.	63
634	Artigiani e operai specializzati delle attività poligrafiche	63
641	Agricoltori e operai agricoli specializzati	64
644	Operai forestali specializzati	64
651	Artigiani e operai specializzati delle lavorazioni alimentari	65
652	Attrezzisti, operai e artigiani del trattamento del legno e assimilati	65
653	Artigiani e operai specializzati del tessile e dell'abbigliamento	65
654	Artigiani e operai special. lavoraz. cuoio, pelli e calzature e assim.	65
655	Artigiani e operai specializzati dell'industria dello spettacolo	65
711	Conduttori impianti e macch. estrazione e primo trattamento minerali	71
712	Operatori impianti trasformazione e lavorazione a caldo metalli	71
713	Conduttori forni e altri imp. lavoraz. vetro, ceramica e mater. assim.	71
714	Conduttori impianti trasformazione legno e fabbricazione carta	71
715	Operatori imp. raffin. gas e prod. petroliferi, per chimica e derivati	71
716	Conduttori imp. produz. energia termica, recupero rifiuti, distr.acque	71
717	Operatori di catene di montaggio automatizzate e di robot industriali	71
718	Conduttori di impianti per la trasformazione dei minerali	71
721	Operai macchine lavorazioni metalliche e per prodotti minerali	72
722	Operai rivestimenti metallici, galvanoplastica e prodotti fotografici	72
723	Conduttori macch. fabbricazione articoli in gomma e materie plastiche	72
724	Operai macch. in impianti per la produz. in serie di articoli in legno	72
725	Conduttori di macchinari per tipografia e stampa su carta e cartone	72
726	Operai macch. dell'industria tessile, delle confezioni e assimilati	72
727	Operai addetti all'assemblaggio di prodotti industriali	72
728	Operai addetti a macchine confezionatrici di prodotti industriali	72
731	Operai macch. fissi nell'agricoltura e prima trasform. prod. agricoli	73
732	Operai addetti a macchinari fissi per l'industria alimentare	73
741	Conduttori convogli ferrov., altri manovr. su rotaie e impianti a fune	74
742	Conduttori di veicoli a motore e a trazione animale	74
743	Conduttori di macchine agricole	74
744	Conduttori macch. movimento terra, sollevamento e maneggio materiali	74
745	Marinai di coperta e operai assimilati	74
812	Personale non qualificato di ufficio	81
813	Personale non qualif. spostamento e consegna merci	81
814	Personale non qualificato nei servizi di pulizia	81
815	Personale non qualificato nei servizi di istruzione e sanitari	81
816	Personale non qualif. servizi custodia edifici, attrezzature e beni	81
821	Personale non qualificato nei servizi ricreativi e culturali	82
831	Personale non qualif. nell'agricoltura e manutenzione del verde	83
832	Personale non qualif. alle foreste, cura degli animali, pesca e caccia	83
841	Personale non qualificato delle miniere e delle cave	84
842	Personale non qualificato delle costruzioni e professioni assimilate	84
843	Personale non qualificato nella manifattura	84
\.


--
-- Data for Name: prof_istat_l4_categorie; Type: TABLE DATA; Schema: public; Owner: sod_hacklavoro
--

COPY prof_istat_l4_categorie (pk_prof_istat_l4, ds_prof_istat_l4, fk_prof_istat_l3) FROM stdin;
1222	Direttori e dirigenti industria in senso stretto e nelle P.U.	122
1224	Dirigenti generali di aziende nel commercio	122
1225	Direttori e dirigenti nei servizi di alloggio e ristorazione	122
1227	Direttori e dirigenti di banche, assicurazioni e agenzie immobiliari	122
1228	Dirigenti generali di aziende di servizi alle imprese e alle persone	122
1231	Dirigenti del dipartimento finanza e amministrazione	123
1232	Direttori e dirigenti gestione risorse umane e relazioni industriali	123
1233	Dirigenti del dipartimento vendite e commercializzazione	123
1234	Direttori e dirigenti in comunicazione, pubblicità e public relations	123
1235	Direttori e dirigenti dipartimento approvvigionamento e distribuzione	123
1236	Direttori e dirigenti del dipartimento servizi informatici	123
1237	Dirigenti del dipartimento ricerca e sviluppo	123
1314	Responsabili di piccole aziende nel commercio	131
1315	Responsabili piccole aziende nei servizi di alloggio e ristorazione	131
1319	Responsabili piccole aziende in altri settori di attività economica	131
2111	Fisici e astronomi	211
2112	Chimici e professioni assimilate	211
2113	Matematici, statistici e professioni assimilate	211
2114	Analisti e progettisti di software	211
2115	Progettisti e amministratori di sistemi	211
2116	Geologi, meteorologi, geofisici e professioni assimilate	211
2211	Ingegneri energetici e meccanici	221
2212	Ingegneri metallurgico-minerari	221
2213	Ingegneri elettrotecnici	221
2214	Ingegneri elettronici e in telecomunicazioni	221
2215	Ingegneri chimici, petroliferi e dei materiali	221
2216	Ingegneri civili e professioni assimilate	221
2217	Ingegneri industriali e gestionali	221
2218	Ingegneri biomedici e bioingegneri	221
2221	Architetti, urbanisti e specialisti recupero-conservazione territorio	222
2311	Biologi, botanici, zoologi e professioni assimilate	231
2312	Farmacologi, batteriologi e professioni assimilate	231
2313	Agronomi e forestali	231
2314	Veterinari	231
2315	Farmacisti	231
2411	Medici di medicina generale	241
2412	Specialisti in terapie mediche	241
2413	Specialisti in terapie chirurgiche	241
2414	Laboratoristi e patologi clinici	241
2415	Dentisti e odontostomatologi	241
2416	Specialisti in diagnostica per immagini e radioterapia	241
2417	Specialisti in igiene, epidemiologia e sanità pubblica	241
2418	Anestesisti e rianimatori	241
2512	Specialisti della gestione e del controllo nelle imprese private	251
2513	Specialisti gestione e sviluppo del personale e del lavoro	251
2514	Specialisti in contabilità e problemi finanziari	251
2515	Specialisti nei rapporti con il mercato	251
2516	Specialisti nelle pubbliche relazioni, dell'immagine e simili	251
2521	Procuratori legali e avvocati	252
2522	Esperti legali in imprese o enti pubblici	252
2531	Specialisti in scienze economiche	253
2532	Specialisti in scienze sociologiche e antropologiche	253
2533	Specialisti in scienze psicologiche e psicoterapeutiche	253
2534	Specialisti in scienze storiche, artistiche, politiche e filosofiche	253
2541	Scrittori e professioni assimilate	254
2542	Giornalisti	254
2543	Interpreti e traduttori a livello elevato	254
2544	Linguisti e filologi	254
2545	Archivisti, bibliotecari, conservatori di musei e profess.assimilate	254
2551	Pittori, scultori, disegnatori e restauratori di beni culturali	255
2552	Registi, direttori artistici, attori, sceneggiatori e scenografi	255
2553	Coreografi e ballerini	255
2554	Compositori, musicisti e cantanti	255
2610	Docenti universitari	261
2632	Professori di scuola secondaria superiore	263
2633	Professori di scuola secondaria inferiore	263
2641	Professori di scuola primaria	264
2642	Professori di scuola preâprimaria	264
2651	Specialisti nella formazione di soggetti diversamente abili	265
2653	Docenti ed esperti nella progettazione formativa e curricolare	265
2654	Consiglieri dellâorientamento	265
2655	Insegnanti di discipline artistiche e letterarie	265
3111	Tecnici fisici e geologici	311
3112	Tecnici chimici	311
3113	Tecnici statistici	311
3121	Tecnici programmatori	312
3122	Tecnici esperti in applicazioni	312
3123	Tecnici web	312
3124	Tecnici gestori di basi di dati	312
3125	Tecnici gestori di reti e di sistemi telematici	312
3126	Tecnici per la trasmissione radio-televisiva e le telecomunicazioni	312
3131	Tecnici meccanici	313
3132	Tecnici metallurgico-minerari e della ceramica	313
3133	Elettrotecnici	313
3134	Tecnici elettronici	313
3135	Tecnici delle costruzioni civili e professioni assimilate	313
3136	Tecnici del risparmio energetico e delle energie rinnovabili	313
3137	Disegnatori industriali e professioni assimilate	313
3141	Tecnici della conduzione di impianti produttivi in continuo	314
3142	Tecnici dell'esercizio di reti idriche ed energetiche	314
3151	Tecnici di produzione in miniere e cave	315
3152	Tecnici della gestione di cantieri edili	315
3153	Tecnici della produzione manifatturiera	315
3154	Tecnici della produzione e preparazione alimentare	315
3155	Tecnici della produzione di servizi	315
3161	Comandanti e ufficiali di bordo	316
3162	Comandanti e piloti di aereo	316
3163	Tecnici dell'aviazione civile	316
3164	Tecnici dell'organizzazione del traffico ferroviario	316
3165	Tecnici dell'organizzazione del traffico portuale	316
3171	Fotografi e professioni assimilate	317
3172	Operatori di apparecchi per la ripresa e la produzione audio-video	317
3173	Tecnici di apparati medicali e per la diagnostica medica	317
3181	Tecnici della sicurezza di impianti	318
3182	Tecnici della sicurezza sul lavoro	318
3183	Tecnici del controllo e della bonifica ambientale	318
3211	Professioni sanitarie infermieristiche e ostetriche	321
3212	Professioni sanitarie riabilitative	321
3213	Professioni tecnico sanitarie - area tecnico diagnostica	321
3214	Professioni tecnico sanitarie - area tecnico assistenziale	321
3215	Professioni tecniche della prevenzione	321
3216	Altre professioni tecniche della salute	321
3221	Tecnici agronomi e forestali	322
3222	Zootecnici	322
3223	Tecnici biochimici e professioni assimilate	322
3311	Segretari amministrativi, archivisti e professioni assimilate	331
3312	Contabili e professioni assimilate	331
3313	Tecnici del trasferimento e del trattamento delle informazioni	331
3314	Corrispondenti in lingue estere e professioni assimilate	331
3315	Tecnici dell'organizzazione e della gestione dei fattori produttivi	331
3321	Tecnici della gestione finanziaria	332
3322	Tecnici del lavoro bancario	332
3323	Agenti assicurativi	332
3324	Periti, valutatori di rischio, liquidatori e professioni assimilate	332
\.


--
-- Data for Name: territorio; Type: TABLE DATA; Schema: public; Owner: sod_hacklavoro
--

COPY territorio (pk_regione, ds_regione, id_ripartizione_geografica, ds_ripartizione_geografica) FROM stdin;
\.


--
-- Name: prof_istat_l1_grandi_gruppi_pkey; Type: CONSTRAINT; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

ALTER TABLE ONLY prof_istat_l1_grandi_gruppi
    ADD CONSTRAINT prof_istat_l1_grandi_gruppi_pkey PRIMARY KEY (pk_prof_istat_l1);


--
-- Name: prof_istat_l2_gruppi_pkey; Type: CONSTRAINT; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

ALTER TABLE ONLY prof_istat_l2_gruppi
    ADD CONSTRAINT prof_istat_l2_gruppi_pkey PRIMARY KEY (pk_prof_istat_l2);


--
-- Name: prof_istat_l3_classi_pkey; Type: CONSTRAINT; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

ALTER TABLE ONLY prof_istat_l3_classi
    ADD CONSTRAINT prof_istat_l3_classi_pkey PRIMARY KEY (pk_prof_istat_l3);


--
-- Name: prof_istat_l4_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

ALTER TABLE ONLY prof_istat_l4_categorie
    ADD CONSTRAINT prof_istat_l4_categorie_pkey PRIMARY KEY (pk_prof_istat_l4);


--
-- Name: territorio_pkey; Type: CONSTRAINT; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

ALTER TABLE ONLY territorio
    ADD CONSTRAINT territorio_pkey PRIMARY KEY (pk_regione);


--
-- Name: fki_prof_istat_l2_l1; Type: INDEX; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE INDEX fki_prof_istat_l2_l1 ON prof_istat_l2_gruppi USING btree (fk_prof_istat_l1);


--
-- Name: fki_prof_istat_l3_l2; Type: INDEX; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE INDEX fki_prof_istat_l3_l2 ON prof_istat_l3_classi USING btree (fk_prof_istat_l2);


--
-- Name: fki_prof_istat_l4_l3; Type: INDEX; Schema: public; Owner: sod_hacklavoro; Tablespace: 
--

CREATE INDEX fki_prof_istat_l4_l3 ON prof_istat_l4_categorie USING btree (fk_prof_istat_l3);


--
-- Name: prof_istat_l2_l1; Type: FK CONSTRAINT; Schema: public; Owner: sod_hacklavoro
--

ALTER TABLE ONLY prof_istat_l2_gruppi
    ADD CONSTRAINT prof_istat_l2_l1 FOREIGN KEY (fk_prof_istat_l1) REFERENCES prof_istat_l1_grandi_gruppi(pk_prof_istat_l1);


--
-- Name: prof_istat_l3_l2; Type: FK CONSTRAINT; Schema: public; Owner: sod_hacklavoro
--

ALTER TABLE ONLY prof_istat_l3_classi
    ADD CONSTRAINT prof_istat_l3_l2 FOREIGN KEY (fk_prof_istat_l2) REFERENCES prof_istat_l2_gruppi(pk_prof_istat_l2);


--
-- Name: prof_istat_l4_l3; Type: FK CONSTRAINT; Schema: public; Owner: sod_hacklavoro
--

ALTER TABLE ONLY prof_istat_l4_categorie
    ADD CONSTRAINT prof_istat_l4_l3 FOREIGN KEY (fk_prof_istat_l3) REFERENCES prof_istat_l3_classi(pk_prof_istat_l3);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

