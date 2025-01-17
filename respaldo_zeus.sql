PGDMP         	            	    w            zeus    11.1    11.5 S    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            x           1262    57371    zeus    DATABASE     �   CREATE DATABASE zeus WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Venezuela.1252' LC_CTYPE = 'Spanish_Venezuela.1252';
    DROP DATABASE zeus;
             postgres    false            �            1259    75198    decanato    TABLE     �   CREATE TABLE public.decanato (
    codigo integer NOT NULL,
    nombre text NOT NULL,
    siglas character(10) NOT NULL,
    direccion text,
    correo character(50),
    telefono integer,
    estatus character(1) NOT NULL
);
    DROP TABLE public.decanato;
       public         postgres    false            �            1259    75196    decanato_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.decanato_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.decanato_codigo_seq;
       public       postgres    false    199            y           0    0    decanato_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.decanato_codigo_seq OWNED BY public.decanato.codigo;
            public       postgres    false    198            �            1259    75211    departamento    TABLE     �   CREATE TABLE public.departamento (
    codigo integer NOT NULL,
    codigo_decanato integer NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    estatus character(1) NOT NULL
);
     DROP TABLE public.departamento;
       public         postgres    false            �            1259    75209    departamento_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.departamento_codigo_seq;
       public       postgres    false    201            z           0    0    departamento_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.departamento_codigo_seq OWNED BY public.departamento.codigo;
            public       postgres    false    200            �            1259    75247    equipo    TABLE     �   CREATE TABLE public.equipo (
    codigo integer NOT NULL,
    codigo_marca integer NOT NULL,
    nombre character(50) NOT NULL,
    descripcion text,
    estatus character(1) NOT NULL
);
    DROP TABLE public.equipo;
       public         postgres    false            �            1259    75245    equipo_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.equipo_codigo_seq;
       public       postgres    false    208            {           0    0    equipo_codigo_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.equipo_codigo_seq OWNED BY public.equipo.codigo;
            public       postgres    false    207            �            1259    75271    equipo_departamento    TABLE     �   CREATE TABLE public.equipo_departamento (
    codigo integer NOT NULL,
    codigo_equipo integer NOT NULL,
    codigo_departamento integer NOT NULL,
    codigo_estado_equipo integer NOT NULL
);
 '   DROP TABLE public.equipo_departamento;
       public         postgres    false            �            1259    75269    equipo_departamento_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_departamento_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.equipo_departamento_codigo_seq;
       public       postgres    false    212            |           0    0    equipo_departamento_codigo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.equipo_departamento_codigo_seq OWNED BY public.equipo_departamento.codigo;
            public       postgres    false    211            �            1259    75258    estado_equipo    TABLE     �   CREATE TABLE public.estado_equipo (
    codigo integer NOT NULL,
    nombre character(20) NOT NULL,
    descripcion text,
    estatus character(1) NOT NULL
);
 !   DROP TABLE public.estado_equipo;
       public         postgres    false            �            1259    75256    estado_equipo_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_equipo_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.estado_equipo_codigo_seq;
       public       postgres    false    210            }           0    0    estado_equipo_codigo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.estado_equipo_codigo_seq OWNED BY public.estado_equipo.codigo;
            public       postgres    false    209            �            1259    75220    grupo_usuario    TABLE     �   CREATE TABLE public.grupo_usuario (
    nombre_usuario character(10) NOT NULL,
    codigo_tipo_usuario integer NOT NULL,
    fecha_modificacion date NOT NULL
);
 !   DROP TABLE public.grupo_usuario;
       public         postgres    false            �            1259    75237    marca    TABLE     �   CREATE TABLE public.marca (
    codigo integer NOT NULL,
    nombre character(50) NOT NULL,
    estatus character(1) NOT NULL
);
    DROP TABLE public.marca;
       public         postgres    false            �            1259    75235    marca_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.marca_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.marca_codigo_seq;
       public       postgres    false    206            ~           0    0    marca_codigo_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.marca_codigo_seq OWNED BY public.marca.codigo;
            public       postgres    false    205            �            1259    57432    seq_gen_sequence    SEQUENCE     {   CREATE SEQUENCE public.seq_gen_sequence
    START WITH 50
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_gen_sequence;
       public       postgres    false            �            1259    75279    solicitudes    TABLE       CREATE TABLE public.solicitudes (
    codigo integer NOT NULL,
    nombre_usuario character(10) NOT NULL,
    codigo_equipo_departamento integer NOT NULL,
    tipo_solicitud text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_atencion integer,
    estatus character(1) NOT NULL
);
    DROP TABLE public.solicitudes;
       public         postgres    false            �            1259    75277    solicitudes_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitudes_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.solicitudes_codigo_seq;
       public       postgres    false    214                       0    0    solicitudes_codigo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.solicitudes_codigo_seq OWNED BY public.solicitudes.codigo;
            public       postgres    false    213            �            1259    75227    tipo_usuario    TABLE     �   CREATE TABLE public.tipo_usuario (
    codigo integer NOT NULL,
    nombre character(50) NOT NULL,
    estatus character(1) NOT NULL
);
     DROP TABLE public.tipo_usuario;
       public         postgres    false            �            1259    75225    tipo_usuario_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuario_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tipo_usuario_codigo_seq;
       public       postgres    false    204            �           0    0    tipo_usuario_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tipo_usuario_codigo_seq OWNED BY public.tipo_usuario.codigo;
            public       postgres    false    203            �            1259    75184    usuario    TABLE     e  CREATE TABLE public.usuario (
    nombre_usuario character(10) NOT NULL,
    contrasenna character varying(30) NOT NULL,
    codigo_departamento integer NOT NULL,
    cedula character(10) NOT NULL,
    nombre character(50),
    apellido character(50),
    direccion text,
    telefono integer,
    correo character(50),
    estatus character(1) NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false            �
           2604    75201    decanato codigo    DEFAULT     r   ALTER TABLE ONLY public.decanato ALTER COLUMN codigo SET DEFAULT nextval('public.decanato_codigo_seq'::regclass);
 >   ALTER TABLE public.decanato ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    75214    departamento codigo    DEFAULT     z   ALTER TABLE ONLY public.departamento ALTER COLUMN codigo SET DEFAULT nextval('public.departamento_codigo_seq'::regclass);
 B   ALTER TABLE public.departamento ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    75250    equipo codigo    DEFAULT     n   ALTER TABLE ONLY public.equipo ALTER COLUMN codigo SET DEFAULT nextval('public.equipo_codigo_seq'::regclass);
 <   ALTER TABLE public.equipo ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    75274    equipo_departamento codigo    DEFAULT     �   ALTER TABLE ONLY public.equipo_departamento ALTER COLUMN codigo SET DEFAULT nextval('public.equipo_departamento_codigo_seq'::regclass);
 I   ALTER TABLE public.equipo_departamento ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    211    212    212            �
           2604    75261    estado_equipo codigo    DEFAULT     |   ALTER TABLE ONLY public.estado_equipo ALTER COLUMN codigo SET DEFAULT nextval('public.estado_equipo_codigo_seq'::regclass);
 C   ALTER TABLE public.estado_equipo ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    75240    marca codigo    DEFAULT     l   ALTER TABLE ONLY public.marca ALTER COLUMN codigo SET DEFAULT nextval('public.marca_codigo_seq'::regclass);
 ;   ALTER TABLE public.marca ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    75282    solicitudes codigo    DEFAULT     x   ALTER TABLE ONLY public.solicitudes ALTER COLUMN codigo SET DEFAULT nextval('public.solicitudes_codigo_seq'::regclass);
 A   ALTER TABLE public.solicitudes ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    213    214    214            �
           2604    75230    tipo_usuario codigo    DEFAULT     z   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN codigo SET DEFAULT nextval('public.tipo_usuario_codigo_seq'::regclass);
 B   ALTER TABLE public.tipo_usuario ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    203    204    204            c          0    75198    decanato 
   TABLE DATA               `   COPY public.decanato (codigo, nombre, siglas, direccion, correo, telefono, estatus) FROM stdin;
    public       postgres    false    199   1b       e          0    75211    departamento 
   TABLE DATA               ]   COPY public.departamento (codigo, codigo_decanato, nombre, descripcion, estatus) FROM stdin;
    public       postgres    false    201   �b       l          0    75247    equipo 
   TABLE DATA               T   COPY public.equipo (codigo, codigo_marca, nombre, descripcion, estatus) FROM stdin;
    public       postgres    false    208   �c       p          0    75271    equipo_departamento 
   TABLE DATA               o   COPY public.equipo_departamento (codigo, codigo_equipo, codigo_departamento, codigo_estado_equipo) FROM stdin;
    public       postgres    false    212   �c       n          0    75258    estado_equipo 
   TABLE DATA               M   COPY public.estado_equipo (codigo, nombre, descripcion, estatus) FROM stdin;
    public       postgres    false    210   �c       f          0    75220    grupo_usuario 
   TABLE DATA               `   COPY public.grupo_usuario (nombre_usuario, codigo_tipo_usuario, fecha_modificacion) FROM stdin;
    public       postgres    false    202   ^d       j          0    75237    marca 
   TABLE DATA               8   COPY public.marca (codigo, nombre, estatus) FROM stdin;
    public       postgres    false    206   �d       r          0    75279    solicitudes 
   TABLE DATA               �   COPY public.solicitudes (codigo, nombre_usuario, codigo_equipo_departamento, tipo_solicitud, fecha_inicio, fecha_atencion, estatus) FROM stdin;
    public       postgres    false    214   e       h          0    75227    tipo_usuario 
   TABLE DATA               ?   COPY public.tipo_usuario (codigo, nombre, estatus) FROM stdin;
    public       postgres    false    204   e       a          0    75184    usuario 
   TABLE DATA               �   COPY public.usuario (nombre_usuario, contrasenna, codigo_departamento, cedula, nombre, apellido, direccion, telefono, correo, estatus) FROM stdin;
    public       postgres    false    197   re       �           0    0    decanato_codigo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.decanato_codigo_seq', 3, true);
            public       postgres    false    198            �           0    0    departamento_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.departamento_codigo_seq', 9, true);
            public       postgres    false    200            �           0    0    equipo_codigo_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.equipo_codigo_seq', 1, true);
            public       postgres    false    207            �           0    0    equipo_departamento_codigo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.equipo_departamento_codigo_seq', 1, false);
            public       postgres    false    211            �           0    0    estado_equipo_codigo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.estado_equipo_codigo_seq', 4, true);
            public       postgres    false    209            �           0    0    marca_codigo_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.marca_codigo_seq', 4, true);
            public       postgres    false    205            �           0    0    seq_gen_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.seq_gen_sequence', 13150, true);
            public       postgres    false    196            �           0    0    solicitudes_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.solicitudes_codigo_seq', 1, false);
            public       postgres    false    213            �           0    0    tipo_usuario_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipo_usuario_codigo_seq', 3, true);
            public       postgres    false    203            �
           2606    75206    decanato decanato_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.decanato
    ADD CONSTRAINT decanato_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.decanato DROP CONSTRAINT decanato_pkey;
       public         postgres    false    199            �
           2606    75208    decanato decanato_siglas_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.decanato
    ADD CONSTRAINT decanato_siglas_key UNIQUE (siglas);
 F   ALTER TABLE ONLY public.decanato DROP CONSTRAINT decanato_siglas_key;
       public         postgres    false    199            �
           2606    75219    departamento departamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public         postgres    false    201            �
           2606    75276 ,   equipo_departamento equipo_departamento_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.equipo_departamento
    ADD CONSTRAINT equipo_departamento_pkey PRIMARY KEY (codigo);
 V   ALTER TABLE ONLY public.equipo_departamento DROP CONSTRAINT equipo_departamento_pkey;
       public         postgres    false    212            �
           2606    75255    equipo equipo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.equipo DROP CONSTRAINT equipo_pkey;
       public         postgres    false    208            �
           2606    75268 &   estado_equipo estado_equipo_nombre_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.estado_equipo
    ADD CONSTRAINT estado_equipo_nombre_key UNIQUE (nombre);
 P   ALTER TABLE ONLY public.estado_equipo DROP CONSTRAINT estado_equipo_nombre_key;
       public         postgres    false    210            �
           2606    75266     estado_equipo estado_equipo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.estado_equipo
    ADD CONSTRAINT estado_equipo_pkey PRIMARY KEY (codigo);
 J   ALTER TABLE ONLY public.estado_equipo DROP CONSTRAINT estado_equipo_pkey;
       public         postgres    false    210            �
           2606    75224     grupo_usuario grupo_usuario_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.grupo_usuario
    ADD CONSTRAINT grupo_usuario_pkey PRIMARY KEY (nombre_usuario);
 J   ALTER TABLE ONLY public.grupo_usuario DROP CONSTRAINT grupo_usuario_pkey;
       public         postgres    false    202            �
           2606    75244    marca marca_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_nombre_key;
       public         postgres    false    206            �
           2606    75242    marca marca_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public         postgres    false    206            �
           2606    75287    solicitudes solicitudes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT solicitudes_pkey PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT solicitudes_pkey;
       public         postgres    false    214            �
           2606    75234 $   tipo_usuario tipo_usuario_nombre_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_nombre_key UNIQUE (nombre);
 N   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_nombre_key;
       public         postgres    false    204            �
           2606    75232    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public         postgres    false    204            �
           2606    75195    usuario usuario_cedula_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_cedula_key UNIQUE (cedula);
 D   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_cedula_key;
       public         postgres    false    197            �
           2606    75191    usuario usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (nombre_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    197            �
           2606    75288    departamento fkdepartamen440180    FK CONSTRAINT     �   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT fkdepartamen440180 FOREIGN KEY (codigo_decanato) REFERENCES public.decanato(codigo);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT fkdepartamen440180;
       public       postgres    false    199    2756    201            �
           2606    75308    equipo fkequipo453075    FK CONSTRAINT     }   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT fkequipo453075 FOREIGN KEY (codigo_marca) REFERENCES public.marca(codigo);
 ?   ALTER TABLE ONLY public.equipo DROP CONSTRAINT fkequipo453075;
       public       postgres    false    208    2770    206            �
           2606    75318 &   equipo_departamento fkequipo_dep226049    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipo_departamento
    ADD CONSTRAINT fkequipo_dep226049 FOREIGN KEY (codigo_departamento) REFERENCES public.departamento(codigo);
 P   ALTER TABLE ONLY public.equipo_departamento DROP CONSTRAINT fkequipo_dep226049;
       public       postgres    false    201    212    2760            �
           2606    75323 &   equipo_departamento fkequipo_dep464673    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipo_departamento
    ADD CONSTRAINT fkequipo_dep464673 FOREIGN KEY (codigo_estado_equipo) REFERENCES public.estado_equipo(codigo);
 P   ALTER TABLE ONLY public.equipo_departamento DROP CONSTRAINT fkequipo_dep464673;
       public       postgres    false    2776    212    210            �
           2606    75313 &   equipo_departamento fkequipo_dep700681    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipo_departamento
    ADD CONSTRAINT fkequipo_dep700681 FOREIGN KEY (codigo_equipo) REFERENCES public.equipo(codigo);
 P   ALTER TABLE ONLY public.equipo_departamento DROP CONSTRAINT fkequipo_dep700681;
       public       postgres    false    208    2772    212            �
           2606    75303     grupo_usuario fkgrupo_usua841445    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo_usuario
    ADD CONSTRAINT fkgrupo_usua841445 FOREIGN KEY (codigo_tipo_usuario) REFERENCES public.tipo_usuario(codigo);
 J   ALTER TABLE ONLY public.grupo_usuario DROP CONSTRAINT fkgrupo_usua841445;
       public       postgres    false    202    204    2766            �
           2606    75298     grupo_usuario fkgrupo_usua967642    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo_usuario
    ADD CONSTRAINT fkgrupo_usua967642 FOREIGN KEY (nombre_usuario) REFERENCES public.usuario(nombre_usuario);
 J   ALTER TABLE ONLY public.grupo_usuario DROP CONSTRAINT fkgrupo_usua967642;
       public       postgres    false    202    197    2754            �
           2606    75333    solicitudes fksolicitude340307    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT fksolicitude340307 FOREIGN KEY (codigo_equipo_departamento) REFERENCES public.equipo_departamento(codigo);
 H   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT fksolicitude340307;
       public       postgres    false    2778    212    214            �
           2606    75328    solicitudes fksolicitude427655    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT fksolicitude427655 FOREIGN KEY (nombre_usuario) REFERENCES public.usuario(nombre_usuario);
 H   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT fksolicitude427655;
       public       postgres    false    2754    197    214            �
           2606    75293    usuario fkusuario880713    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fkusuario880713 FOREIGN KEY (codigo_departamento) REFERENCES public.departamento(codigo);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fkusuario880713;
       public       postgres    false    201    197    2760            c   �   x���1
�@�z�sAc�#k@���2Ͱ;�º�<��)�X4�"����?~ҰS�z��a����"(���'p���V�p��H���8M�D�k��2J�4�J��2�H�.3jƯVׇ�-9m�	ʱ#g4i�^�a��2�{W�lQ��G��Y�s���#B�/UG�      e   �   x�3�4��,.I�M,�tI-H,*I�M�+�WHIU�I �9
.Ε!��\�@�ye��%��ə�7�T��y�y����W��e�i������d,�@��8���ϔӘ�%3�4+CD����ֈt; �5ZP������~xm"�>$9$�b���� �y!      l   $   x�3�4�pV p����%* 5z�r&r��qqq ��}      p      x������ � �      n   c   x�3��/H-J,�,�W@ N���̂|�g"��K�ፉ)�ꐔB%�
�9�R��3o��T����$To��Z����_T�_7n.�Py� x�7�      f   B   x�K�J,30S NCN#CK]C]��Ĥ���DCN#���	Wqr~QAf~���1�x� ��      j   A   x�3������qT p&rr;������͈3��/�=m&�!���N$��-F��� �!      r      x������ � �      h   D   x�3�tL����,.)JL�/R p&rq:e��+�%&g��%� �Dh3�t�-�I�D�E0m1z\\\ �^�      a   �   x�����0�g�)���84c'$�.N�PQ�Q}~"х1�t��|�d��|W����Boj2,1�W� ���������;�q�,Lv�1�]�`]��#�<��e�"�B�C�X&��Y�ih��=��)�wi���7��?uI�     