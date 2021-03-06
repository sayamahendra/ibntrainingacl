toc.dat                                                                                             0000600 0004000 0002000 00000036670 13651765067 0014473 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6                     x            ibnacl2    12.2    12.2 ;    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Z           1262    16508    ibnacl2    DATABASE     �   CREATE DATABASE ibnacl2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE ibnacl2;
                postgres    false         �            1259    16546    acos    TABLE       CREATE TABLE public.acos (
    id integer NOT NULL,
    parent_id integer,
    model character varying(255) DEFAULT NULL::character varying,
    foreign_key integer,
    alias character varying(255) DEFAULT NULL::character varying,
    lft integer,
    rght integer
);
    DROP TABLE public.acos;
       public         heap    postgres    false         �            1259    16544    acos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.acos_id_seq;
       public          postgres    false    211         [           0    0    acos_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.acos_id_seq OWNED BY public.acos.id;
          public          postgres    false    210         �            1259    16561    aros    TABLE       CREATE TABLE public.aros (
    id integer NOT NULL,
    parent_id integer,
    model character varying(255) DEFAULT NULL::character varying,
    foreign_key integer,
    alias character varying(255) DEFAULT NULL::character varying,
    lft integer,
    rght integer
);
    DROP TABLE public.aros;
       public         heap    postgres    false         �            1259    16576 	   aros_acos    TABLE     �  CREATE TABLE public.aros_acos (
    id integer NOT NULL,
    aro_id integer NOT NULL,
    aco_id integer NOT NULL,
    _create character varying(2) DEFAULT '0'::character varying NOT NULL,
    _read character varying(2) DEFAULT '0'::character varying NOT NULL,
    _update character varying(2) DEFAULT '0'::character varying NOT NULL,
    _delete character varying(2) DEFAULT '0'::character varying NOT NULL
);
    DROP TABLE public.aros_acos;
       public         heap    postgres    false         �            1259    16574    aros_acos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aros_acos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.aros_acos_id_seq;
       public          postgres    false    215         \           0    0    aros_acos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.aros_acos_id_seq OWNED BY public.aros_acos.id;
          public          postgres    false    214         �            1259    16559    aros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.aros_id_seq;
       public          postgres    false    213         ]           0    0    aros_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.aros_id_seq OWNED BY public.aros.id;
          public          postgres    false    212         �            1259    16519    groups    TABLE     �   CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(100),
    created timestamp without time zone,
    modified timestamp without time zone
);
    DROP TABLE public.groups;
       public         heap    postgres    false         �            1259    16517    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    205         ^           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    204         �            1259    16527    posts    TABLE     �   CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer,
    title character varying(255),
    body text,
    created timestamp without time zone,
    modified timestamp without time zone
);
    DROP TABLE public.posts;
       public         heap    postgres    false         �            1259    16525    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    207         _           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    206         �            1259    16511    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    password character(40),
    group_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    16509    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203         `           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202         �            1259    16538    widgets    TABLE     �   CREATE TABLE public.widgets (
    id integer NOT NULL,
    name character varying(100),
    part_no character varying(12),
    quantity integer
);
    DROP TABLE public.widgets;
       public         heap    postgres    false         �            1259    16536    widgets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.widgets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.widgets_id_seq;
       public          postgres    false    209         a           0    0    widgets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.widgets_id_seq OWNED BY public.widgets.id;
          public          postgres    false    208         �
           2604    16549    acos id    DEFAULT     b   ALTER TABLE ONLY public.acos ALTER COLUMN id SET DEFAULT nextval('public.acos_id_seq'::regclass);
 6   ALTER TABLE public.acos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         �
           2604    16564    aros id    DEFAULT     b   ALTER TABLE ONLY public.aros ALTER COLUMN id SET DEFAULT nextval('public.aros_id_seq'::regclass);
 6   ALTER TABLE public.aros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213         �
           2604    16579    aros_acos id    DEFAULT     l   ALTER TABLE ONLY public.aros_acos ALTER COLUMN id SET DEFAULT nextval('public.aros_acos_id_seq'::regclass);
 ;   ALTER TABLE public.aros_acos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215         �
           2604    16522 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         �
           2604    16530    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207         �
           2604    16514    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         �
           2604    16541 
   widgets id    DEFAULT     h   ALTER TABLE ONLY public.widgets ALTER COLUMN id SET DEFAULT nextval('public.widgets_id_seq'::regclass);
 9   ALTER TABLE public.widgets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         P          0    16546    acos 
   TABLE DATA           S   COPY public.acos (id, parent_id, model, foreign_key, alias, lft, rght) FROM stdin;
    public          postgres    false    211       2896.dat R          0    16561    aros 
   TABLE DATA           S   COPY public.aros (id, parent_id, model, foreign_key, alias, lft, rght) FROM stdin;
    public          postgres    false    213       2898.dat T          0    16576 	   aros_acos 
   TABLE DATA           Y   COPY public.aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) FROM stdin;
    public          postgres    false    215       2900.dat J          0    16519    groups 
   TABLE DATA           =   COPY public.groups (id, name, created, modified) FROM stdin;
    public          postgres    false    205       2890.dat L          0    16527    posts 
   TABLE DATA           L   COPY public.posts (id, user_id, title, body, created, modified) FROM stdin;
    public          postgres    false    207       2892.dat H          0    16511    users 
   TABLE DATA           T   COPY public.users (id, username, password, group_id, created, modified) FROM stdin;
    public          postgres    false    203       2888.dat N          0    16538    widgets 
   TABLE DATA           >   COPY public.widgets (id, name, part_no, quantity) FROM stdin;
    public          postgres    false    209       2894.dat b           0    0    acos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.acos_id_seq', 30, true);
          public          postgres    false    210         c           0    0    aros_acos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.aros_acos_id_seq', 9, true);
          public          postgres    false    214         d           0    0    aros_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.aros_id_seq', 6, true);
          public          postgres    false    212         e           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 3, true);
          public          postgres    false    204         f           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    206         g           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    202         h           0    0    widgets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.widgets_id_seq', 1, false);
          public          postgres    false    208         �
           2606    16556    acos acos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.acos
    ADD CONSTRAINT acos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.acos DROP CONSTRAINT acos_pkey;
       public            postgres    false    211         �
           2606    16585    aros_acos aros_acos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.aros_acos
    ADD CONSTRAINT aros_acos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.aros_acos DROP CONSTRAINT aros_acos_pkey;
       public            postgres    false    215         �
           2606    16571    aros aros_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.aros
    ADD CONSTRAINT aros_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.aros DROP CONSTRAINT aros_pkey;
       public            postgres    false    213         �
           2606    16524    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    205         �
           2606    16535    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    207         �
           2606    16516    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203         �
           2606    16543    widgets widgets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT widgets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.widgets DROP CONSTRAINT widgets_pkey;
       public            postgres    false    209         �
           1259    16586    aro_aco_key    INDEX     R   CREATE UNIQUE INDEX aro_aco_key ON public.aros_acos USING btree (aro_id, aco_id);
    DROP INDEX public.aro_aco_key;
       public            postgres    false    215    215         �
           1259    16587 
   idx_aco_id    INDEX     B   CREATE INDEX idx_aco_id ON public.aros_acos USING btree (aco_id);
    DROP INDEX public.idx_aco_id;
       public            postgres    false    215         �
           1259    16558    idx_acos_alias    INDEX     @   CREATE INDEX idx_acos_alias ON public.acos USING btree (alias);
 "   DROP INDEX public.idx_acos_alias;
       public            postgres    false    211         �
           1259    16557    idx_acos_lft_rght    INDEX     G   CREATE INDEX idx_acos_lft_rght ON public.acos USING btree (lft, rght);
 %   DROP INDEX public.idx_acos_lft_rght;
       public            postgres    false    211    211         �
           1259    16573    idx_aros_alias    INDEX     @   CREATE INDEX idx_aros_alias ON public.aros USING btree (alias);
 "   DROP INDEX public.idx_aros_alias;
       public            postgres    false    213         �
           1259    16572    idx_aros_lft_rght    INDEX     G   CREATE INDEX idx_aros_lft_rght ON public.aros USING btree (lft, rght);
 %   DROP INDEX public.idx_aros_lft_rght;
       public            postgres    false    213    213                                                                                2896.dat                                                                                            0000600 0004000 0002000 00000001273 13651765067 0014305 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	2	\N	\N	index	3	4
4	2	\N	\N	view	5	6
5	2	\N	\N	add	7	8
6	2	\N	\N	edit	9	10
2	1	\N	\N	Groups	2	13
7	2	\N	\N	delete	11	12
8	1	\N	\N	Pages	14	17
9	8	\N	\N	display	15	16
11	10	\N	\N	index	19	20
12	10	\N	\N	view	21	22
13	10	\N	\N	add	23	24
14	10	\N	\N	edit	25	26
10	1	\N	\N	Posts	18	29
15	10	\N	\N	delete	27	28
17	16	\N	\N	login	31	32
18	16	\N	\N	logout	33	34
19	16	\N	\N	index	35	36
20	16	\N	\N	view	37	38
21	16	\N	\N	add	39	40
22	16	\N	\N	edit	41	42
16	1	\N	\N	Users	30	45
23	16	\N	\N	delete	43	44
25	24	\N	\N	index	47	48
26	24	\N	\N	view	49	50
27	24	\N	\N	add	51	52
28	24	\N	\N	edit	53	54
24	1	\N	\N	Widgets	46	57
29	24	\N	\N	delete	55	56
1	\N	\N	\N	controllers	1	60
30	1	\N	\N	AclExtras	58	59
\.


                                                                                                                                                                                                                                                                                                                                     2898.dat                                                                                            0000600 0004000 0002000 00000000101 13651765067 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	\N	Group	1	\N	1	2
2	\N	Group	2	\N	3	4
3	\N	Group	3	\N	5	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               2900.dat                                                                                            0000600 0004000 0002000 00000000221 13651765067 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	1	1	1	1
2	2	1	-1	-1	-1	-1
3	2	10	1	1	1	1
4	2	24	1	1	1	1
5	3	1	-1	-1	-1	-1
6	3	13	1	1	1	1
7	3	14	1	1	1	1
8	3	27	1	1	1	1
9	3	28	1	1	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                               2890.dat                                                                                            0000600 0004000 0002000 00000000241 13651765067 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	managers	2020-04-28 09:16:32	2020-04-28 09:16:32
3	users	2020-04-28 09:16:37	2020-04-28 09:16:37
1	administrators	2020-04-28 09:15:58	2020-04-28 09:16:45
\.


                                                                                                                                                                                                                                                                                                                                                               2892.dat                                                                                            0000600 0004000 0002000 00000000005 13651765067 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2888.dat                                                                                            0000600 0004000 0002000 00000000427 13651765067 0014306 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	8b4d22284632b380fc27e9466be4bddc3e89ab01	1	2020-04-28 09:18:15	2020-04-28 09:18:15
2	manager	0618135987b03c58b0bd0b65f77ac01b3f55c3dc	2	2020-04-28 09:18:24	2020-04-28 09:18:24
3	user	0618135987b03c58b0bd0b65f77ac01b3f55c3dc	3	2020-04-28 09:18:31	2020-04-28 09:18:31
\.


                                                                                                                                                                                                                                         2894.dat                                                                                            0000600 0004000 0002000 00000000005 13651765067 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000031126 13651765067 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

DROP DATABASE ibnacl2;
--
-- Name: ibnacl2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ibnacl2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';


ALTER DATABASE ibnacl2 OWNER TO postgres;

\connect ibnacl2

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
-- Name: acos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acos (
    id integer NOT NULL,
    parent_id integer,
    model character varying(255) DEFAULT NULL::character varying,
    foreign_key integer,
    alias character varying(255) DEFAULT NULL::character varying,
    lft integer,
    rght integer
);


ALTER TABLE public.acos OWNER TO postgres;

--
-- Name: acos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acos_id_seq OWNER TO postgres;

--
-- Name: acos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acos_id_seq OWNED BY public.acos.id;


--
-- Name: aros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aros (
    id integer NOT NULL,
    parent_id integer,
    model character varying(255) DEFAULT NULL::character varying,
    foreign_key integer,
    alias character varying(255) DEFAULT NULL::character varying,
    lft integer,
    rght integer
);


ALTER TABLE public.aros OWNER TO postgres;

--
-- Name: aros_acos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aros_acos (
    id integer NOT NULL,
    aro_id integer NOT NULL,
    aco_id integer NOT NULL,
    _create character varying(2) DEFAULT '0'::character varying NOT NULL,
    _read character varying(2) DEFAULT '0'::character varying NOT NULL,
    _update character varying(2) DEFAULT '0'::character varying NOT NULL,
    _delete character varying(2) DEFAULT '0'::character varying NOT NULL
);


ALTER TABLE public.aros_acos OWNER TO postgres;

--
-- Name: aros_acos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aros_acos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aros_acos_id_seq OWNER TO postgres;

--
-- Name: aros_acos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aros_acos_id_seq OWNED BY public.aros_acos.id;


--
-- Name: aros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aros_id_seq OWNER TO postgres;

--
-- Name: aros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aros_id_seq OWNED BY public.aros.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(100),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer,
    title character varying(255),
    body text,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    password character(40),
    group_id integer,
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: widgets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widgets (
    id integer NOT NULL,
    name character varying(100),
    part_no character varying(12),
    quantity integer
);


ALTER TABLE public.widgets OWNER TO postgres;

--
-- Name: widgets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.widgets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.widgets_id_seq OWNER TO postgres;

--
-- Name: widgets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.widgets_id_seq OWNED BY public.widgets.id;


--
-- Name: acos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acos ALTER COLUMN id SET DEFAULT nextval('public.acos_id_seq'::regclass);


--
-- Name: aros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aros ALTER COLUMN id SET DEFAULT nextval('public.aros_id_seq'::regclass);


--
-- Name: aros_acos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aros_acos ALTER COLUMN id SET DEFAULT nextval('public.aros_acos_id_seq'::regclass);


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: widgets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widgets ALTER COLUMN id SET DEFAULT nextval('public.widgets_id_seq'::regclass);


--
-- Data for Name: acos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acos (id, parent_id, model, foreign_key, alias, lft, rght) FROM stdin;
\.
COPY public.acos (id, parent_id, model, foreign_key, alias, lft, rght) FROM '$$PATH$$/2896.dat';

--
-- Data for Name: aros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aros (id, parent_id, model, foreign_key, alias, lft, rght) FROM stdin;
\.
COPY public.aros (id, parent_id, model, foreign_key, alias, lft, rght) FROM '$$PATH$$/2898.dat';

--
-- Data for Name: aros_acos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) FROM stdin;
\.
COPY public.aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) FROM '$$PATH$$/2900.dat';

--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id, name, created, modified) FROM stdin;
\.
COPY public.groups (id, name, created, modified) FROM '$$PATH$$/2890.dat';

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, title, body, created, modified) FROM stdin;
\.
COPY public.posts (id, user_id, title, body, created, modified) FROM '$$PATH$$/2892.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, group_id, created, modified) FROM stdin;
\.
COPY public.users (id, username, password, group_id, created, modified) FROM '$$PATH$$/2888.dat';

--
-- Data for Name: widgets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.widgets (id, name, part_no, quantity) FROM stdin;
\.
COPY public.widgets (id, name, part_no, quantity) FROM '$$PATH$$/2894.dat';

--
-- Name: acos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acos_id_seq', 30, true);


--
-- Name: aros_acos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aros_acos_id_seq', 9, true);


--
-- Name: aros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aros_id_seq', 6, true);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 3, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: widgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.widgets_id_seq', 1, false);


--
-- Name: acos acos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acos
    ADD CONSTRAINT acos_pkey PRIMARY KEY (id);


--
-- Name: aros_acos aros_acos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aros_acos
    ADD CONSTRAINT aros_acos_pkey PRIMARY KEY (id);


--
-- Name: aros aros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aros
    ADD CONSTRAINT aros_pkey PRIMARY KEY (id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: widgets widgets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT widgets_pkey PRIMARY KEY (id);


--
-- Name: aro_aco_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX aro_aco_key ON public.aros_acos USING btree (aro_id, aco_id);


--
-- Name: idx_aco_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_aco_id ON public.aros_acos USING btree (aco_id);


--
-- Name: idx_acos_alias; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_acos_alias ON public.acos USING btree (alias);


--
-- Name: idx_acos_lft_rght; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_acos_lft_rght ON public.acos USING btree (lft, rght);


--
-- Name: idx_aros_alias; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_aros_alias ON public.aros USING btree (alias);


--
-- Name: idx_aros_lft_rght; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_aros_lft_rght ON public.aros USING btree (lft, rght);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          