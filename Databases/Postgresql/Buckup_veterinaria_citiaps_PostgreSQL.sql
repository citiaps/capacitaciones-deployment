PGDMP     :    0                {           veterinaria_citiaps    15.4    15.4 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397    veterinaria_citiaps    DATABASE     �   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false            �            1259    16399    Dueno    TABLE     �   CREATE TABLE public."Dueno" (
    "ID" integer NOT NULL,
    "Nombre" character varying,
    "Edad" integer,
    "Sexo" character varying
);
    DROP TABLE public."Dueno";
       public         heap    postgres    false            �            1259    16398    Dueno_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Dueno_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Dueno_ID_seq";
       public          postgres    false    215                       0    0    Dueno_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Dueno_ID_seq" OWNED BY public."Dueno"."ID";
          public          postgres    false    214            �            1259    16445    Perro    TABLE     �   CREATE TABLE public."Perro" (
    "ID" integer NOT NULL,
    "Nombre" character varying,
    "Raza" character varying,
    "Color" character varying,
    "Edad" integer,
    "ID_dueno" integer NOT NULL
);
    DROP TABLE public."Perro";
       public         heap    postgres    false            �            1259    16453    Perro_ID_dueno_seq    SEQUENCE     �   CREATE SEQUENCE public."Perro_ID_dueno_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Perro_ID_dueno_seq";
       public          postgres    false    217                       0    0    Perro_ID_dueno_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Perro_ID_dueno_seq" OWNED BY public."Perro"."ID_dueno";
          public          postgres    false    218            �            1259    16444    Perro_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Perro_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Perro_ID_seq";
       public          postgres    false    217                       0    0    Perro_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Perro_ID_seq" OWNED BY public."Perro"."ID";
          public          postgres    false    216            �            1259    16493    Vacuna    TABLE     �   CREATE TABLE public."Vacuna" (
    "ID" integer NOT NULL,
    "Nombre" character varying,
    "Fecha" date,
    "ID_perro" integer NOT NULL
);
    DROP TABLE public."Vacuna";
       public         heap    postgres    false            �            1259    16501    Vacuna_ID_perro_seq    SEQUENCE     �   CREATE SEQUENCE public."Vacuna_ID_perro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Vacuna_ID_perro_seq";
       public          postgres    false    220                       0    0    Vacuna_ID_perro_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Vacuna_ID_perro_seq" OWNED BY public."Vacuna"."ID_perro";
          public          postgres    false    221            �            1259    16492    Vacuna_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Vacuna_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Vacuna_ID_seq";
       public          postgres    false    220                        0    0    Vacuna_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Vacuna_ID_seq" OWNED BY public."Vacuna"."ID";
          public          postgres    false    219            q           2604    16402    Dueno ID    DEFAULT     j   ALTER TABLE ONLY public."Dueno" ALTER COLUMN "ID" SET DEFAULT nextval('public."Dueno_ID_seq"'::regclass);
 ;   ALTER TABLE public."Dueno" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    214    215    215            r           2604    16448    Perro ID    DEFAULT     j   ALTER TABLE ONLY public."Perro" ALTER COLUMN "ID" SET DEFAULT nextval('public."Perro_ID_seq"'::regclass);
 ;   ALTER TABLE public."Perro" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    216    217    217            s           2604    16454    Perro ID_dueno    DEFAULT     v   ALTER TABLE ONLY public."Perro" ALTER COLUMN "ID_dueno" SET DEFAULT nextval('public."Perro_ID_dueno_seq"'::regclass);
 A   ALTER TABLE public."Perro" ALTER COLUMN "ID_dueno" DROP DEFAULT;
       public          postgres    false    218    217            t           2604    16496 	   Vacuna ID    DEFAULT     l   ALTER TABLE ONLY public."Vacuna" ALTER COLUMN "ID" SET DEFAULT nextval('public."Vacuna_ID_seq"'::regclass);
 <   ALTER TABLE public."Vacuna" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    219    220    220            u           2604    16502    Vacuna ID_perro    DEFAULT     x   ALTER TABLE ONLY public."Vacuna" ALTER COLUMN "ID_perro" SET DEFAULT nextval('public."Vacuna_ID_perro_seq"'::regclass);
 B   ALTER TABLE public."Vacuna" ALTER COLUMN "ID_perro" DROP DEFAULT;
       public          postgres    false    221    220                      0    16399    Dueno 
   TABLE DATA           A   COPY public."Dueno" ("ID", "Nombre", "Edad", "Sexo") FROM stdin;
    public          postgres    false    215   '                 0    16445    Perro 
   TABLE DATA           V   COPY public."Perro" ("ID", "Nombre", "Raza", "Color", "Edad", "ID_dueno") FROM stdin;
    public          postgres    false    217   �'                 0    16493    Vacuna 
   TABLE DATA           G   COPY public."Vacuna" ("ID", "Nombre", "Fecha", "ID_perro") FROM stdin;
    public          postgres    false    220   '(       !           0    0    Dueno_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Dueno_ID_seq"', 1, false);
          public          postgres    false    214            "           0    0    Perro_ID_dueno_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Perro_ID_dueno_seq"', 1, false);
          public          postgres    false    218            #           0    0    Perro_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Perro_ID_seq"', 1, false);
          public          postgres    false    216            $           0    0    Vacuna_ID_perro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Vacuna_ID_perro_seq"', 1, false);
          public          postgres    false    221            %           0    0    Vacuna_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Vacuna_ID_seq"', 1, false);
          public          postgres    false    219            w           2606    16406    Dueno Dueno_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Dueno"
    ADD CONSTRAINT "Dueno_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Dueno" DROP CONSTRAINT "Dueno_pkey";
       public            postgres    false    215            y           2606    16450    Perro Perro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Perro"
    ADD CONSTRAINT "Perro_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Perro" DROP CONSTRAINT "Perro_pkey";
       public            postgres    false    217            |           2606    16498    Vacuna Vacuna_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Vacuna"
    ADD CONSTRAINT "Vacuna_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Vacuna" DROP CONSTRAINT "Vacuna_pkey";
       public            postgres    false    220            z           1259    16466    fki_ID_dueno    INDEX     H   CREATE INDEX "fki_ID_dueno" ON public."Perro" USING btree ("ID_dueno");
 "   DROP INDEX public."fki_ID_dueno";
       public            postgres    false    217            }           1259    16514    fki_ID_perro    INDEX     I   CREATE INDEX "fki_ID_perro" ON public."Vacuna" USING btree ("ID_perro");
 "   DROP INDEX public."fki_ID_perro";
       public            postgres    false    220            ~           2606    16461    Perro ID_dueno    FK CONSTRAINT     �   ALTER TABLE ONLY public."Perro"
    ADD CONSTRAINT "ID_dueno" FOREIGN KEY ("ID_dueno") REFERENCES public."Dueno"("ID") NOT VALID;
 <   ALTER TABLE ONLY public."Perro" DROP CONSTRAINT "ID_dueno";
       public          postgres    false    217    3191    215                       2606    16509    Vacuna ID_perro    FK CONSTRAINT     �   ALTER TABLE ONLY public."Vacuna"
    ADD CONSTRAINT "ID_perro" FOREIGN KEY ("ID_perro") REFERENCES public."Perro"("ID") NOT VALID;
 =   ALTER TABLE ONLY public."Vacuna" DROP CONSTRAINT "ID_perro";
       public          postgres    false    217    3193    220               r   x�M�1
�0��zr��@0��B\��<��bYm��+m��kL�7I�s������$&e0J�sםP!����X�q�Lz��`�G����ҙ��묁�5�NY(�ڗ͕R���*
         z   x�e�1�0�W�H�1pC2=�)���N9�ؼCA�jwf=rQk�[mՐ���hB2e��Iydi���\e�i��!�ެ���������kY���"�S��G��W{D���71         ?   x�3�t�+�,*JL�LN�4202�50�5��4�2�%e�e�Kʘ���1Hʈ��.C�=... "�     