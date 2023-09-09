PGDMP     0    2        	        {            veterinaria_citiaps    13.12    13.12     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    veterinaria_citiaps    DATABASE     o   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false            �            1259    16439    dueno    TABLE     h   CREATE TABLE public.dueno (
    id integer NOT NULL,
    nombre text,
    edad bigint,
    sexo text
);
    DROP TABLE public.dueno;
       public         heap    postgres    false            �            1259    16437    dueño_id_seq    SEQUENCE     �   CREATE SEQUENCE public."dueño_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."dueño_id_seq";
       public          postgres    false    203            �           0    0    dueño_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."dueño_id_seq" OWNED BY public.dueno.id;
          public          postgres    false    202            �            1259    16428    perro    TABLE     �   CREATE TABLE public.perro (
    id integer NOT NULL,
    nombre text,
    raza text,
    color text,
    edad bigint,
    dueno_id bigint
);
    DROP TABLE public.perro;
       public         heap    postgres    false            �            1259    16426    perro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.perro_id_seq;
       public          postgres    false    201            �           0    0    perro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.perro_id_seq OWNED BY public.perro.id;
          public          postgres    false    200            �            1259    16450    vacuna    TABLE     u   CREATE TABLE public.vacuna (
    id integer NOT NULL,
    nombre_vacuna text,
    perro_id bigint,
    fecha date
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
          public          postgres    false    204            2           2604    16442    dueno id    DEFAULT     g   ALTER TABLE ONLY public.dueno ALTER COLUMN id SET DEFAULT nextval('public."dueño_id_seq"'::regclass);
 7   ALTER TABLE public.dueno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            1           2604    16431    perro id    DEFAULT     d   ALTER TABLE ONLY public.perro ALTER COLUMN id SET DEFAULT nextval('public.perro_id_seq'::regclass);
 7   ALTER TABLE public.perro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            3           2604    16453 	   vacuna id    DEFAULT     f   ALTER TABLE ONLY public.vacuna ALTER COLUMN id SET DEFAULT nextval('public.vacuna_id_seq'::regclass);
 8   ALTER TABLE public.vacuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �          0    16439    dueno 
   TABLE DATA           7   COPY public.dueno (id, nombre, edad, sexo) FROM stdin;
    public          postgres    false    203   �       �          0    16428    perro 
   TABLE DATA           H   COPY public.perro (id, nombre, raza, color, edad, dueno_id) FROM stdin;
    public          postgres    false    201          �          0    16450    vacuna 
   TABLE DATA           D   COPY public.vacuna (id, nombre_vacuna, perro_id, fecha) FROM stdin;
    public          postgres    false    205   �       �           0    0    dueño_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."dueño_id_seq"', 7, true);
          public          postgres    false    202            �           0    0    perro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.perro_id_seq', 9, true);
          public          postgres    false    200            �           0    0    vacuna_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vacuna_id_seq', 23, true);
          public          postgres    false    204            7           2606    16447    dueno dueño_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.dueno
    ADD CONSTRAINT "dueño_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.dueno DROP CONSTRAINT "dueño_pkey";
       public            postgres    false    203            5           2606    16436    perro perro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_pkey;
       public            postgres    false    201            9           2606    16458    vacuna vacuna_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_pkey;
       public            postgres    false    205            �   |   x�3��N,J�S�9�� ���Ȍ�-575/3/�˔�1/=5G�91'%�(��М�7�8�4$i�鑚�[Z����������if�$o��������Z�����i�0�(����	���ɀ=... �3V      �   �   x�M�;�@E�;��h	%b��hk����!���tn��Sx��ݓ3Ƭ&&�tn�鴱�睱��#�B`E�C���~�DTi��?b V1t�Kѭ�Jt]Z���������X{��f�OnBL�Az�F0oH]e��Y0m��	|@賺m�9m���!�b����R/�RG8      �   �   x�}�=��0Fk�)��W��p�f�T�2��(�N�r�-s�\lQ~V3 ��=�g}c$���ylR�Sۡ��ط}T�Ȑզ� �����E�ER��)��'�Яh5�f]tBT���ȱngYV��t����qf/)��~��kf�#�?A�8NȨ4�T��X���2i4M��`���ڧ����Y� Dbx)��`��J�w3Na�����Lk4K�.ǅ� �K��4     