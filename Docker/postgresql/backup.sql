PGDMP     #    2                 {           veterinaria_citiaps    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    veterinaria_citiaps    DATABASE     �   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false            �            1259    16653    dueno    TABLE     �   CREATE TABLE public.dueno (
    id integer NOT NULL,
    "Nombre" character varying(80),
    "Edad" integer,
    "Sexo" character varying(80)
);
    DROP TABLE public.dueno;
       public         heap    postgres    false            �            1259    16652    dueno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dueno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.dueno_id_seq;
       public          postgres    false    217                       0    0    dueno_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.dueno_id_seq OWNED BY public.dueno.id;
          public          postgres    false    216            �            1259    16646    perro    TABLE     �   CREATE TABLE public.perro (
    id integer NOT NULL,
    id_dueno integer,
    "Nombre" character varying(80),
    "Raza" character varying(80),
    "Color" character varying(80),
    "Edad" integer
);
    DROP TABLE public.perro;
       public         heap    postgres    false            �            1259    16645    perro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.perro_id_seq;
       public          postgres    false    215                       0    0    perro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.perro_id_seq OWNED BY public.perro.id;
          public          postgres    false    214            �            1259    16660    vacuna    TABLE     �   CREATE TABLE public.vacuna (
    id integer NOT NULL,
    id_perro integer,
    "Fecha" date,
    "NombreVacuna" character varying(80)
);
    DROP TABLE public.vacuna;
       public         heap    postgres    false            �            1259    16659    vacuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vacuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vacuna_id_seq;
       public          postgres    false    219                       0    0    vacuna_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vacuna_id_seq OWNED BY public.vacuna.id;
          public          postgres    false    218            p           2604    16656    dueno id    DEFAULT     d   ALTER TABLE ONLY public.dueno ALTER COLUMN id SET DEFAULT nextval('public.dueno_id_seq'::regclass);
 7   ALTER TABLE public.dueno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            o           2604    16649    perro id    DEFAULT     d   ALTER TABLE ONLY public.perro ALTER COLUMN id SET DEFAULT nextval('public.perro_id_seq'::regclass);
 7   ALTER TABLE public.perro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            q           2604    16663 	   vacuna id    DEFAULT     f   ALTER TABLE ONLY public.vacuna ALTER COLUMN id SET DEFAULT nextval('public.vacuna_id_seq'::regclass);
 8   ALTER TABLE public.vacuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16653    dueno 
   TABLE DATA           =   COPY public.dueno (id, "Nombre", "Edad", "Sexo") FROM stdin;
    public          postgres    false    217   �       	          0    16646    perro 
   TABLE DATA           P   COPY public.perro (id, id_dueno, "Nombre", "Raza", "Color", "Edad") FROM stdin;
    public          postgres    false    215   h                 0    16660    vacuna 
   TABLE DATA           G   COPY public.vacuna (id, id_perro, "Fecha", "NombreVacuna") FROM stdin;
    public          postgres    false    219                     0    0    dueno_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.dueno_id_seq', 5, true);
          public          postgres    false    216                       0    0    perro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.perro_id_seq', 5, true);
          public          postgres    false    214                       0    0    vacuna_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.vacuna_id_seq', 5, true);
          public          postgres    false    218            u           2606    16658    dueno dueno_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.dueno
    ADD CONSTRAINT dueno_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.dueno DROP CONSTRAINT dueno_pkey;
       public            postgres    false    217            s           2606    16651    perro perro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_pkey;
       public            postgres    false    215            w           2606    16665    vacuna vacuna_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_pkey;
       public            postgres    false    219            x           2606    16666    perro perro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_fk FOREIGN KEY (id_dueno) REFERENCES public.dueno(id) ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_fk;
       public          postgres    false    3189    217    215            y           2606    16671    vacuna vacuna_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_fk FOREIGN KEY (id_perro) REFERENCES public.perro(id) ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_fk;
       public          postgres    false    219    3187    215               u   x�M�;
�0�S���CH�*m�%Y����Rܾy3��:g�Qm�V$���E�ܴ�����*�x��ڋL�˗�<xg�(�>zB꟝K#�s���v��V�տ��8�'7/      	   �   x���
1�o��@�KO�B�C+�&&��Y�$�ooڙ�i��b��&a*�Ɖ�*訫jR-'��󽄀1�h���r�ч\���k�a�)k�Y�q�|Jt�p}��+cdogF��z��ک��&6�DN�=�-��g�0*         e   x�M�K
�@�u�]Z�3#�J.��d@�����	�zU�"�Č%�f�U�e�s!�G��ҳ9�
j(����rR���N����e�ޞ%=�ǎ��^$     