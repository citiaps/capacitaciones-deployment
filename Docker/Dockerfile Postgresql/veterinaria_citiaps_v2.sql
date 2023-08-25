PGDMP     )                    {            veterinaria_citiaps_v2    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25450    veterinaria_citiaps_v2    DATABASE     r   CREATE DATABASE veterinaria_citiaps_v2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
 &   DROP DATABASE veterinaria_citiaps_v2;
                postgres    false            �            1259    25619    dog    TABLE     �   CREATE TABLE public.dog (
    id integer NOT NULL,
    name text NOT NULL,
    breed text NOT NULL,
    color text NOT NULL,
    age text NOT NULL,
    id_owner integer NOT NULL
);
    DROP TABLE public.dog;
       public         heap    postgres    false            �            1259    25618 
   dog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.dog_id_seq;
       public          postgres    false    212                       0    0 
   dog_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.dog_id_seq OWNED BY public.dog.id;
          public          postgres    false    211            �            1259    25610    owner    TABLE     �   CREATE TABLE public.owner (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    gender text NOT NULL
);
    DROP TABLE public.owner;
       public         heap    postgres    false            �            1259    25609    owner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.owner_id_seq;
       public          postgres    false    210            	           0    0    owner_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.owner_id_seq OWNED BY public.owner.id;
          public          postgres    false    209            �            1259    25628    vaccine    TABLE     �   CREATE TABLE public.vaccine (
    id integer NOT NULL,
    date date NOT NULL,
    vaccine_name text NOT NULL,
    id_dog integer NOT NULL
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false            �            1259    25627    vaccine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vaccine_id_seq;
       public          postgres    false    214            
           0    0    vaccine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;
          public          postgres    false    213            g           2604    25622    dog id    DEFAULT     `   ALTER TABLE ONLY public.dog ALTER COLUMN id SET DEFAULT nextval('public.dog_id_seq'::regclass);
 5   ALTER TABLE public.dog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            f           2604    25613    owner id    DEFAULT     d   ALTER TABLE ONLY public.owner ALTER COLUMN id SET DEFAULT nextval('public.owner_id_seq'::regclass);
 7   ALTER TABLE public.owner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    25631 
   vaccine id    DEFAULT     h   ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);
 9   ALTER TABLE public.vaccine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �          0    25619    dog 
   TABLE DATA           D   COPY public.dog (id, name, breed, color, age, id_owner) FROM stdin;
    public          postgres    false    212   �       �          0    25610    owner 
   TABLE DATA           6   COPY public.owner (id, name, age, gender) FROM stdin;
    public          postgres    false    210   
                 0    25628    vaccine 
   TABLE DATA           A   COPY public.vaccine (id, date, vaccine_name, id_dog) FROM stdin;
    public          postgres    false    214   q                  0    0 
   dog_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.dog_id_seq', 12, true);
          public          postgres    false    211                       0    0    owner_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.owner_id_seq', 10, true);
          public          postgres    false    209                       0    0    vaccine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vaccine_id_seq', 11, true);
          public          postgres    false    213            j           2606    25617    owner owner_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.owner DROP CONSTRAINT owner_pkey;
       public            postgres    false    210            l           2606    25637    dog pk_id_dog 
   CONSTRAINT     K   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT pk_id_dog PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.dog DROP CONSTRAINT pk_id_dog;
       public            postgres    false    212            n           2606    25639    vaccine pk_id_vaccine 
   CONSTRAINT     S   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT pk_id_vaccine PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT pk_id_vaccine;
       public            postgres    false    214            p           2606    25640    vaccine fk_id_dog    FK CONSTRAINT     w   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fk_id_dog FOREIGN KEY (id_dog) REFERENCES public.dog(id) NOT VALID;
 ;   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT fk_id_dog;
       public          postgres    false    3180    214    212            o           2606    25645    dog fk_id_owner    FK CONSTRAINT     y   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT fk_id_owner FOREIGN KEY (id_owner) REFERENCES public.owner(id) NOT VALID;
 9   ALTER TABLE ONLY public.dog DROP CONSTRAINT fk_id_owner;
       public          postgres    false    212    3178    210            �   u   x�M��
�@D�ُ�l=۳���i��,Y�$�����޼�`���&51C�]p��ࣤ�87_}y	���h	>�\�#�Č���볶�]���[t�w���`pC���vH%L      �   W   x�3��H-�;�0��Ȅ�#?7�(�˜�=1�(35'��Șӷ4+��˂�5�4�(%$Ug�霘�	ReUeh��_|x%�a1z\\\ 7��         W   x�3�4202�5��54�JL�L�����DH,*�/�,*-VHN�����24���А��Y�GjAbIfIf��3HȒ=... Yv%F     