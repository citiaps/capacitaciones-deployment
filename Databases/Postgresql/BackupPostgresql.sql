PGDMP     #                    {            veterinaria_citiaps    15.4    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16398    veterinaria_citiaps    DATABASE     �   CREATE DATABASE veterinaria_citiaps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 #   DROP DATABASE veterinaria_citiaps;
                postgres    false                       0    0    DATABASE veterinaria_citiaps    COMMENT     e   COMMENT ON DATABASE veterinaria_citiaps IS 'Actividad de capacitacion correspondiente a Postgresql';
                   postgres    false    3338            �            1259    16406    Dueño    TABLE     r   CREATE TABLE public."Dueño" (
    id integer NOT NULL,
    "Nombre" text,
    "Edad" integer,
    "Sexo" text
);
    DROP TABLE public."Dueño";
       public         heap    postgres    false            �            1259    16399    Perro    TABLE     �   CREATE TABLE public."Perro" (
    id integer NOT NULL,
    "Nombre" text,
    "Raza" text,
    "Color" text,
    "Edad" integer,
    "Dueño" integer
);
    DROP TABLE public."Perro";
       public         heap    postgres    false            �            1259    16413    Vacuna    TABLE     z   CREATE TABLE public."Vacuna" (
    id integer NOT NULL,
    "Fecha" date,
    "NombreVacuna" text,
    "Perro" integer
);
    DROP TABLE public."Vacuna";
       public         heap    postgres    false                      0    16406    Dueño 
   TABLE DATA           @   COPY public."Dueño" (id, "Nombre", "Edad", "Sexo") FROM stdin;
    public          postgres    false    215   �                 0    16399    Perro 
   TABLE DATA           R   COPY public."Perro" (id, "Nombre", "Raza", "Color", "Edad", "Dueño") FROM stdin;
    public          postgres    false    214   D                 0    16413    Vacuna 
   TABLE DATA           H   COPY public."Vacuna" (id, "Fecha", "NombreVacuna", "Perro") FROM stdin;
    public          postgres    false    216   �       o           2606    16412    Dueño Dueño_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Dueño"
    ADD CONSTRAINT "Dueño_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Dueño" DROP CONSTRAINT "Dueño_pkey";
       public            postgres    false    215            m           2606    16405    Perro Perro_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Perro"
    ADD CONSTRAINT "Perro_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Perro" DROP CONSTRAINT "Perro_pkey";
       public            postgres    false    214            q           2606    16419    Vacuna Vacuna_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Vacuna"
    ADD CONSTRAINT "Vacuna_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Vacuna" DROP CONSTRAINT "Vacuna_pkey";
       public            postgres    false    216            r           2606    16420    Perro FK_DueñoPerro    FK CONSTRAINT     �   ALTER TABLE ONLY public."Perro"
    ADD CONSTRAINT "FK_DueñoPerro" FOREIGN KEY ("Dueño") REFERENCES public."Dueño"(id) NOT VALID;
 B   ALTER TABLE ONLY public."Perro" DROP CONSTRAINT "FK_DueñoPerro";
       public          postgres    false    214    3183    215            s           2606    16425    Vacuna FK_VacunaDelPerro    FK CONSTRAINT     �   ALTER TABLE ONLY public."Vacuna"
    ADD CONSTRAINT "FK_VacunaDelPerro" FOREIGN KEY ("Perro") REFERENCES public."Perro"(id) NOT VALID;
 F   ALTER TABLE ONLY public."Vacuna" DROP CONSTRAINT "FK_VacunaDelPerro";
       public          postgres    false    3181    214    216               ~   x�M��
�0����)�Bc�V�V(9x�KYX��� >��d��?�a�ɲ�f]č_\��H2[溘O�|��j�U7r�E7 ��Jj�Bܑ��wp�������z.W�+M�������1�         �   x�5̽�0����)� )@$�!���-,�t���`�,F��x���$��ʋ࢜�?�%2��&'h�RcS�k�����ʘ4d4h��ѐgʳƈѮ�'����M�k��U��ޣ�w����=\���=�D��k2�         P   x�3�4202�54�50��O.)-�I�4�2�
�Y�����U;�d�%&e&'r�r� ���:L�L���(:��b���� h��     