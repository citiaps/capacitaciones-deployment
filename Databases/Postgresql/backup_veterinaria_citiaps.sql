PGDMP     2                    {            veterinaria_citiaps    13.12    13.12 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    veterinaria_citiaps    DATABASE     o   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false            �            1259    16439    dueño    TABLE     q   CREATE TABLE public."dueño" (
    id integer NOT NULL,
    "Nombre" text,
    "Edad" bigint,
    "Sexo" text
);
    DROP TABLE public."dueño";
       public         heap    postgres    false            �            1259    16437    dueño_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dueño_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."dueño_id_seq";
       public          postgres    false    203            �           0    0    dueño_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."dueño_id_seq" OWNED BY public."dueño".id;
          public          postgres    false    202            �            1259    16428    perro    TABLE     �   CREATE TABLE public.perro (
    id integer NOT NULL,
    "Nombre" text,
    "Raza" text,
    "Color" text,
    "Edad" bigint
);
    DROP TABLE public.perro;
       public         heap    postgres    false            �            1259    16477    perro_dueño    TABLE     m   CREATE TABLE public."perro_dueño" (
    id integer NOT NULL,
    perro_id bigint,
    "dueño_id" bigint
);
 "   DROP TABLE public."perro_dueño";
       public         heap    postgres    false            �            1259    16475    perro_dueño_id_seq    SEQUENCE     �   CREATE SEQUENCE public."perro_dueño_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."perro_dueño_id_seq";
       public          postgres    false    207            �           0    0    perro_dueño_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."perro_dueño_id_seq" OWNED BY public."perro_dueño".id;
          public          postgres    false    206            �            1259    16426    perro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.perro_id_seq;
       public          postgres    false    201            �           0    0    perro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.perro_id_seq OWNED BY public.perro.id;
          public          postgres    false    200            �            1259    16485    perro_vacuna    TABLE     i   CREATE TABLE public.perro_vacuna (
    id integer NOT NULL,
    perro_id bigint,
    vacuna_id bigint
);
     DROP TABLE public.perro_vacuna;
       public         heap    postgres    false            �            1259    16483    perro_vacuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perro_vacuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.perro_vacuna_id_seq;
       public          postgres    false    209            �           0    0    perro_vacuna_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.perro_vacuna_id_seq OWNED BY public.perro_vacuna.id;
          public          postgres    false    208            �            1259    16450    vacuna    TABLE     c   CREATE TABLE public.vacuna (
    id integer NOT NULL,
    "Fecha" date,
    "NombreVacuna" text
);
    DROP TABLE public.vacuna;
       public         heap    postgres    false            �            1259    16448    vacuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vacuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vacuna_id_seq;
       public          postgres    false    205            �           0    0    vacuna_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vacuna_id_seq OWNED BY public.vacuna.id;
          public          postgres    false    204            >           2604    16442 	   dueño id    DEFAULT     j   ALTER TABLE ONLY public."dueño" ALTER COLUMN id SET DEFAULT nextval('public."dueño_id_seq"'::regclass);
 :   ALTER TABLE public."dueño" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            =           2604    16431    perro id    DEFAULT     d   ALTER TABLE ONLY public.perro ALTER COLUMN id SET DEFAULT nextval('public.perro_id_seq'::regclass);
 7   ALTER TABLE public.perro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            @           2604    16480    perro_dueño id    DEFAULT     v   ALTER TABLE ONLY public."perro_dueño" ALTER COLUMN id SET DEFAULT nextval('public."perro_dueño_id_seq"'::regclass);
 @   ALTER TABLE public."perro_dueño" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            A           2604    16488    perro_vacuna id    DEFAULT     r   ALTER TABLE ONLY public.perro_vacuna ALTER COLUMN id SET DEFAULT nextval('public.perro_vacuna_id_seq'::regclass);
 >   ALTER TABLE public.perro_vacuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    16453 	   vacuna id    DEFAULT     f   ALTER TABLE ONLY public.vacuna ALTER COLUMN id SET DEFAULT nextval('public.vacuna_id_seq'::regclass);
 8   ALTER TABLE public.vacuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �          0    16439    dueño 
   TABLE DATA           @   COPY public."dueño" (id, "Nombre", "Edad", "Sexo") FROM stdin;
    public          postgres    false    203   �'       �          0    16428    perro 
   TABLE DATA           F   COPY public.perro (id, "Nombre", "Raza", "Color", "Edad") FROM stdin;
    public          postgres    false    201   J(       �          0    16477    perro_dueño 
   TABLE DATA           C   COPY public."perro_dueño" (id, perro_id, "dueño_id") FROM stdin;
    public          postgres    false    207   �(       �          0    16485    perro_vacuna 
   TABLE DATA           ?   COPY public.perro_vacuna (id, perro_id, vacuna_id) FROM stdin;
    public          postgres    false    209   )       �          0    16450    vacuna 
   TABLE DATA           =   COPY public.vacuna (id, "Fecha", "NombreVacuna") FROM stdin;
    public          postgres    false    205   W)       �           0    0    dueño_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."dueño_id_seq"', 5, true);
          public          postgres    false    202            �           0    0    perro_dueño_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."perro_dueño_id_seq"', 5, true);
          public          postgres    false    206            �           0    0    perro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.perro_id_seq', 5, true);
          public          postgres    false    200            �           0    0    perro_vacuna_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.perro_vacuna_id_seq', 5, true);
          public          postgres    false    208            �           0    0    vacuna_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.vacuna_id_seq', 5, true);
          public          postgres    false    204            E           2606    16447    dueño dueño_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."dueño"
    ADD CONSTRAINT "dueño_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."dueño" DROP CONSTRAINT "dueño_pkey";
       public            postgres    false    203            I           2606    16482    perro_dueño perro_dueño_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."perro_dueño"
    ADD CONSTRAINT "perro_dueño_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."perro_dueño" DROP CONSTRAINT "perro_dueño_pkey";
       public            postgres    false    207            C           2606    16436    perro perro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_pkey;
       public            postgres    false    201            K           2606    16490    perro_vacuna perro_vacuna_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.perro_vacuna
    ADD CONSTRAINT perro_vacuna_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.perro_vacuna DROP CONSTRAINT perro_vacuna_pkey;
       public            postgres    false    209            G           2606    16458    vacuna vacuna_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_pkey;
       public            postgres    false    205            �   z   x�3�HL��W�LI�M���4���M,N.�����2�tN,�2|Ko̯�46�tK�M��s�%�g'"�6EH�pz'��)��\�Z�i��Ӕ�1/=5G�91'%�(�����=... ��0�      �   �   x�-�1�@E�?��� ���mm\�:cV���Xz.&F�W��,ʫFE�AM�����:��
�Q�����|ǧ鍂V�zFͷA�)��L/�ևİK��flzl�I|�����浥����}�	�O�`s:,��Yl1�      �   (   x��9 0İ�����M��H�)��X�fh�?�&ޣ>LN2      �   (   x��9 0İ�����M��H�)��X�fh�?�&ޣ>LN2      �   s   x�3�4202�50�54�JL�L�2�
Y�pz�$�d�d+8'�e�%rCe�t�8}�K3sr�L@� !]CKΐ���������<�4�^S�^S]���++JJrR�b���� n�%     