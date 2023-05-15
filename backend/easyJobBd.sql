PGDMP     0    #    	            {            easyJob    15.1    15.1 =    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    38366    easyJob    DATABASE     �   CREATE DATABASE "easyJob" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "easyJob";
                postgres    false            �            1259    38391    alunos    TABLE     !  CREATE TABLE public.alunos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    senha character varying(255) NOT NULL,
    enderecoid integer NOT NULL,
    telefone character varying(20),
    tipousuarioid integer NOT NULL
);
    DROP TABLE public.alunos;
       public         heap    postgres    false            �            1259    38390    alunos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alunos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alunos_id_seq;
       public          postgres    false    221            B           0    0    alunos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;
          public          postgres    false    220            �            1259    38451    aulas    TABLE     �   CREATE TABLE public.aulas (
    id integer NOT NULL,
    contratoid integer NOT NULL,
    dataaula date NOT NULL,
    comentarios character varying(255)
);
    DROP TABLE public.aulas;
       public         heap    postgres    false            �            1259    38450    aulas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aulas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.aulas_id_seq;
       public          postgres    false    227            C           0    0    aulas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.aulas_id_seq OWNED BY public.aulas.id;
          public          postgres    false    226            �            1259    38434 	   contratos    TABLE     0  CREATE TABLE public.contratos (
    id integer NOT NULL,
    alunoid integer NOT NULL,
    professorid integer NOT NULL,
    datainicio date NOT NULL,
    datatermino date NOT NULL,
    valor numeric(10,2) NOT NULL,
    status character varying(20) NOT NULL,
    metodopagamento character varying(50)
);
    DROP TABLE public.contratos;
       public         heap    postgres    false            �            1259    38433    contratos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.contratos_id_seq;
       public          postgres    false    225            D           0    0    contratos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.contratos_id_seq OWNED BY public.contratos.id;
          public          postgres    false    224            �            1259    38368 	   enderecos    TABLE     _  CREATE TABLE public.enderecos (
    id integer NOT NULL,
    logradouro character varying(255) NOT NULL,
    numero character varying(10) NOT NULL,
    complemento character varying(255),
    bairro character varying(100) NOT NULL,
    cidade character varying(100) NOT NULL,
    estado character(2) NOT NULL,
    cep character varying(8) NOT NULL
);
    DROP TABLE public.enderecos;
       public         heap    postgres    false            �            1259    38367    enderecos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enderecos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.enderecos_id_seq;
       public          postgres    false    215            E           0    0    enderecos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.enderecos_id_seq OWNED BY public.enderecos.id;
          public          postgres    false    214            �            1259    38377    materias    TABLE     k   CREATE TABLE public.materias (
    id integer NOT NULL,
    nomemateria character varying(255) NOT NULL
);
    DROP TABLE public.materias;
       public         heap    postgres    false            �            1259    38376    materias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.materias_id_seq;
       public          postgres    false    217            F           0    0    materias_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.materias_id_seq OWNED BY public.materias.id;
          public          postgres    false    216            �            1259    38410    professores    TABLE     F  CREATE TABLE public.professores (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    senha character varying(255) NOT NULL,
    enderecoid integer NOT NULL,
    telefone character varying(20),
    tipousuarioid integer NOT NULL,
    materiaid integer NOT NULL
);
    DROP TABLE public.professores;
       public         heap    postgres    false            �            1259    38409    professores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.professores_id_seq;
       public          postgres    false    223            G           0    0    professores_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.professores_id_seq OWNED BY public.professores.id;
          public          postgres    false    222            �            1259    38384    tipousuario    TABLE     l   CREATE TABLE public.tipousuario (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);
    DROP TABLE public.tipousuario;
       public         heap    postgres    false            �            1259    38383    tipousuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipousuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tipousuario_id_seq;
       public          postgres    false    219            H           0    0    tipousuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tipousuario_id_seq OWNED BY public.tipousuario.id;
          public          postgres    false    218            �           2604    38394 	   alunos id    DEFAULT     f   ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);
 8   ALTER TABLE public.alunos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    38454    aulas id    DEFAULT     d   ALTER TABLE ONLY public.aulas ALTER COLUMN id SET DEFAULT nextval('public.aulas_id_seq'::regclass);
 7   ALTER TABLE public.aulas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    38437    contratos id    DEFAULT     l   ALTER TABLE ONLY public.contratos ALTER COLUMN id SET DEFAULT nextval('public.contratos_id_seq'::regclass);
 ;   ALTER TABLE public.contratos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    38371    enderecos id    DEFAULT     l   ALTER TABLE ONLY public.enderecos ALTER COLUMN id SET DEFAULT nextval('public.enderecos_id_seq'::regclass);
 ;   ALTER TABLE public.enderecos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    38380    materias id    DEFAULT     j   ALTER TABLE ONLY public.materias ALTER COLUMN id SET DEFAULT nextval('public.materias_id_seq'::regclass);
 :   ALTER TABLE public.materias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    38413    professores id    DEFAULT     p   ALTER TABLE ONLY public.professores ALTER COLUMN id SET DEFAULT nextval('public.professores_id_seq'::regclass);
 =   ALTER TABLE public.professores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    38387    tipousuario id    DEFAULT     p   ALTER TABLE ONLY public.tipousuario ALTER COLUMN id SET DEFAULT nextval('public.tipousuario_id_seq'::regclass);
 =   ALTER TABLE public.tipousuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            5          0    38391    alunos 
   TABLE DATA           ]   COPY public.alunos (id, nome, email, senha, enderecoid, telefone, tipousuarioid) FROM stdin;
    public          postgres    false    221   �F       ;          0    38451    aulas 
   TABLE DATA           F   COPY public.aulas (id, contratoid, dataaula, comentarios) FROM stdin;
    public          postgres    false    227   �F       9          0    38434 	   contratos 
   TABLE DATA           v   COPY public.contratos (id, alunoid, professorid, datainicio, datatermino, valor, status, metodopagamento) FROM stdin;
    public          postgres    false    225   �F       /          0    38368 	   enderecos 
   TABLE DATA           e   COPY public.enderecos (id, logradouro, numero, complemento, bairro, cidade, estado, cep) FROM stdin;
    public          postgres    false    215   �F       1          0    38377    materias 
   TABLE DATA           3   COPY public.materias (id, nomemateria) FROM stdin;
    public          postgres    false    217   G       7          0    38410    professores 
   TABLE DATA           m   COPY public.professores (id, nome, email, senha, enderecoid, telefone, tipousuarioid, materiaid) FROM stdin;
    public          postgres    false    223   1G       3          0    38384    tipousuario 
   TABLE DATA           4   COPY public.tipousuario (id, descricao) FROM stdin;
    public          postgres    false    219   NG       I           0    0    alunos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alunos_id_seq', 1, false);
          public          postgres    false    220            J           0    0    aulas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.aulas_id_seq', 1, false);
          public          postgres    false    226            K           0    0    contratos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.contratos_id_seq', 1, false);
          public          postgres    false    224            L           0    0    enderecos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.enderecos_id_seq', 1, false);
          public          postgres    false    214            M           0    0    materias_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materias_id_seq', 1, false);
          public          postgres    false    216            N           0    0    professores_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.professores_id_seq', 1, false);
          public          postgres    false    222            O           0    0    tipousuario_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tipousuario_id_seq', 1, false);
          public          postgres    false    218            �           2606    38398    alunos alunos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_pkey;
       public            postgres    false    221            �           2606    38456    aulas aulas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT aulas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.aulas DROP CONSTRAINT aulas_pkey;
       public            postgres    false    227            �           2606    38439    contratos contratos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_pkey;
       public            postgres    false    225            �           2606    38375    enderecos enderecos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_pkey;
       public            postgres    false    215            �           2606    38382    materias materias_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    217            �           2606    38417    professores professores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.professores DROP CONSTRAINT professores_pkey;
       public            postgres    false    223            �           2606    38389    tipousuario tipousuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tipousuario DROP CONSTRAINT tipousuario_pkey;
       public            postgres    false    219            �           2606    38399    alunos alunos_enderecoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_enderecoid_fkey FOREIGN KEY (enderecoid) REFERENCES public.enderecos(id);
 G   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_enderecoid_fkey;
       public          postgres    false    221    3211    215            �           2606    38404     alunos alunos_tipousuarioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_tipousuarioid_fkey FOREIGN KEY (tipousuarioid) REFERENCES public.tipousuario(id);
 J   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_tipousuarioid_fkey;
       public          postgres    false    219    3215    221            �           2606    38457    aulas aulas_contratoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT aulas_contratoid_fkey FOREIGN KEY (contratoid) REFERENCES public.contratos(id);
 E   ALTER TABLE ONLY public.aulas DROP CONSTRAINT aulas_contratoid_fkey;
       public          postgres    false    225    3221    227            �           2606    38440     contratos contratos_alunoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_alunoid_fkey FOREIGN KEY (alunoid) REFERENCES public.alunos(id);
 J   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_alunoid_fkey;
       public          postgres    false    225    221    3217            �           2606    38445 $   contratos contratos_professorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_professorid_fkey FOREIGN KEY (professorid) REFERENCES public.professores(id);
 N   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_professorid_fkey;
       public          postgres    false    225    223    3219            �           2606    38418 '   professores professores_enderecoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_enderecoid_fkey FOREIGN KEY (enderecoid) REFERENCES public.enderecos(id);
 Q   ALTER TABLE ONLY public.professores DROP CONSTRAINT professores_enderecoid_fkey;
       public          postgres    false    3211    215    223            �           2606    38428 &   professores professores_materiaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_materiaid_fkey FOREIGN KEY (materiaid) REFERENCES public.materias(id);
 P   ALTER TABLE ONLY public.professores DROP CONSTRAINT professores_materiaid_fkey;
       public          postgres    false    3213    217    223            �           2606    38423 *   professores professores_tipousuarioid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_tipousuarioid_fkey FOREIGN KEY (tipousuarioid) REFERENCES public.tipousuario(id);
 T   ALTER TABLE ONLY public.professores DROP CONSTRAINT professores_tipousuarioid_fkey;
       public          postgres    false    3215    219    223            5      x������ � �      ;      x������ � �      9      x������ � �      /      x������ � �      1      x������ � �      7      x������ � �      3      x������ � �     