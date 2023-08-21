PGDMP     &                    {            veterinaria_citiaps    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    veterinaria_citiaps    DATABASE     �   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false            �            1259    16415    dueno    TABLE     �   CREATE TABLE public.dueno (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    edad integer NOT NULL,
    sexo character varying(50) NOT NULL
);
    DROP TABLE public.dueno;
       public         heap    postgres    false            �            1259    16414    dueno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dueno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.dueno_id_seq;
       public          postgres    false    215                       0    0    dueno_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.dueno_id_seq OWNED BY public.dueno.id;
          public          postgres    false    214            �            1259    16422    perro    TABLE     �   CREATE TABLE public.perro (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    raza character varying(50) NOT NULL,
    color character varying(50) NOT NULL,
    edad integer NOT NULL,
    dueno_id integer NOT NULL
);
    DROP TABLE public.perro;
       public         heap    postgres    false            �            1259    16421    perro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.perro_id_seq;
       public          postgres    false    217                       0    0    perro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.perro_id_seq OWNED BY public.perro.id;
          public          postgres    false    216            �            1259    16434    vacuna    TABLE     �   CREATE TABLE public.vacuna (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre_vacuna character varying(100) NOT NULL,
    perros_id integer NOT NULL
);
    DROP TABLE public.vacuna;
       public         heap    postgres    false            �            1259    16433    vacuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vacuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vacuna_id_seq;
       public          postgres    false    219                       0    0    vacuna_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vacuna_id_seq OWNED BY public.vacuna.id;
          public          postgres    false    218            o           2604    16418    dueno id    DEFAULT     d   ALTER TABLE ONLY public.dueno ALTER COLUMN id SET DEFAULT nextval('public.dueno_id_seq'::regclass);
 7   ALTER TABLE public.dueno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            p           2604    16425    perro id    DEFAULT     d   ALTER TABLE ONLY public.perro ALTER COLUMN id SET DEFAULT nextval('public.perro_id_seq'::regclass);
 7   ALTER TABLE public.perro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            q           2604    16437 	   vacuna id    DEFAULT     f   ALTER TABLE ONLY public.vacuna ALTER COLUMN id SET DEFAULT nextval('public.vacuna_id_seq'::regclass);
 8   ALTER TABLE public.vacuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            	          0    16415    dueno 
   TABLE DATA           7   COPY public.dueno (id, nombre, edad, sexo) FROM stdin;
    public          postgres    false    215   I                 0    16422    perro 
   TABLE DATA           H   COPY public.perro (id, nombre, raza, color, edad, dueno_id) FROM stdin;
    public          postgres    false    217   �                 0    16434    vacuna 
   TABLE DATA           E   COPY public.vacuna (id, fecha, nombre_vacuna, perros_id) FROM stdin;
    public          postgres    false    219   H                  0    0    dueno_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.dueno_id_seq', 5, true);
          public          postgres    false    214                       0    0    perro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.perro_id_seq', 5, true);
          public          postgres    false    216                       0    0    vacuna_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.vacuna_id_seq', 5, true);
          public          postgres    false    218            s           2606    16420    dueno dueno_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.dueno
    ADD CONSTRAINT dueno_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.dueno DROP CONSTRAINT dueno_pkey;
       public            postgres    false    215            u           2606    16427    perro perro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_pkey;
       public            postgres    false    217            w           2606    16439    vacuna vacuna_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_pkey;
       public            postgres    false    219            x           2606    16428    perro perro_dueno_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.perro
    ADD CONSTRAINT perro_dueno_id_fkey FOREIGN KEY (dueno_id) REFERENCES public.dueno(id);
 C   ALTER TABLE ONLY public.perro DROP CONSTRAINT perro_dueno_id_fkey;
       public          postgres    false    3187    217    215            y           2606    16440    vacuna vacuna_perros_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.vacuna
    ADD CONSTRAINT vacuna_perros_id_fkey FOREIGN KEY (perros_id) REFERENCES public.perro(id);
 F   ALTER TABLE ONLY public.vacuna DROP CONSTRAINT vacuna_perros_id_fkey;
       public          postgres    false    217    3189    219            	   Y   x�3�tN,����K�41�tK�M�����2�tM)M,J��41��M,N.�	�T��s�!���E9���r���Tr��")����� �!�         �   x�U˱�0����� ���@�@s�#�6:	Fb��@z��?�!�2F����f�+'x>�_0�Z��0�!������5ìkd1�-��^x��/�ВÎ��=�OY�d��`��W՘������aED��0�         F   x�E�+�0@��]�t�IP������dG�@�ZWS�=��N�P���h�G����Q�pF�W�O'���     