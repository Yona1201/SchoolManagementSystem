PGDMP                      |            we    16.3    16.3 h    y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            {           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            |           1262    17626    we    DATABASE     y   CREATE DATABASE we WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE we;
                postgres    false            �            1259    17751    absensi    TABLE     �  CREATE TABLE public.absensi (
    id bigint NOT NULL,
    pertemuan_id bigint NOT NULL,
    user_id bigint NOT NULL,
    status character varying(255) NOT NULL,
    keterangan character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT absensi_status_check CHECK (((status)::text = ANY ((ARRAY['hadir'::character varying, 'izin'::character varying, 'sakit'::character varying, 'alpa'::character varying])::text[])))
);
    DROP TABLE public.absensi;
       public         heap    postgres    false            �            1259    17750    absensi_id_seq    SEQUENCE     w   CREATE SEQUENCE public.absensi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.absensi_id_seq;
       public          postgres    false    235            }           0    0    absensi_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.absensi_id_seq OWNED BY public.absensi.id;
          public          postgres    false    234            �            1259    17664    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false            �            1259    17671    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false            �            1259    17696    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    17695    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    227            ~           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    226            �            1259    17688    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false            �            1259    17679    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    17678    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    224                       0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    223            �            1259    17708    kelas    TABLE     �  CREATE TABLE public.kelas (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    nama character varying(255) NOT NULL,
    deskripsi character varying(255) NOT NULL,
    hari character varying(255) NOT NULL,
    mulai time(0) without time zone NOT NULL,
    selesai time(0) without time zone NOT NULL,
    thumbnail character varying(255) DEFAULT 'default.png'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.kelas;
       public         heap    postgres    false            �            1259    17707    kelas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.kelas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.kelas_id_seq;
       public          postgres    false    229            �           0    0    kelas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.kelas_id_seq OWNED BY public.kelas.id;
          public          postgres    false    228            �            1259    17771    kelas_siswa    TABLE     �   CREATE TABLE public.kelas_siswa (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    kelas_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.kelas_siswa;
       public         heap    postgres    false            �            1259    17770    kelas_siswa_id_seq    SEQUENCE     {   CREATE SEQUENCE public.kelas_siswa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kelas_siswa_id_seq;
       public          postgres    false    237            �           0    0    kelas_siswa_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kelas_siswa_id_seq OWNED BY public.kelas_siswa.id;
          public          postgres    false    236            �            1259    17737    materi    TABLE       CREATE TABLE public.materi (
    id bigint NOT NULL,
    pertemuan_id bigint NOT NULL,
    judul character varying(255) NOT NULL,
    path character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.materi;
       public         heap    postgres    false            �            1259    17736    materi_id_seq    SEQUENCE     v   CREATE SEQUENCE public.materi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.materi_id_seq;
       public          postgres    false    233            �           0    0    materi_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.materi_id_seq OWNED BY public.materi.id;
          public          postgres    false    232            �            1259    17628 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    17627    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    17648    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    17723 	   pertemuan    TABLE       CREATE TABLE public.pertemuan (
    id bigint NOT NULL,
    kelas_id bigint NOT NULL,
    judul character varying(255) NOT NULL,
    deskripsi character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pertemuan;
       public         heap    postgres    false            �            1259    17722    pertemuan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pertemuan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pertemuan_id_seq;
       public          postgres    false    231            �           0    0    pertemuan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pertemuan_id_seq OWNED BY public.pertemuan.id;
          public          postgres    false    230            �            1259    17655    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    17788    siswa_parent    TABLE     �   CREATE TABLE public.siswa_parent (
    id bigint NOT NULL,
    siswa_id bigint NOT NULL,
    parent_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.siswa_parent;
       public         heap    postgres    false            �            1259    17787    siswa_parent_id_seq    SEQUENCE     |   CREATE SEQUENCE public.siswa_parent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.siswa_parent_id_seq;
       public          postgres    false    239            �           0    0    siswa_parent_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.siswa_parent_id_seq OWNED BY public.siswa_parent.id;
          public          postgres    false    238            �            1259    17635    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    nama character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    jenis_kelamin character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    role integer NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT users_jenis_kelamin_check CHECK (((jenis_kelamin)::text = ANY ((ARRAY['l'::character varying, 'p'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17634    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            �           2604    17754 
   absensi id    DEFAULT     h   ALTER TABLE ONLY public.absensi ALTER COLUMN id SET DEFAULT nextval('public.absensi_id_seq'::regclass);
 9   ALTER TABLE public.absensi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17699    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17682    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    17711    kelas id    DEFAULT     d   ALTER TABLE ONLY public.kelas ALTER COLUMN id SET DEFAULT nextval('public.kelas_id_seq'::regclass);
 7   ALTER TABLE public.kelas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17774    kelas_siswa id    DEFAULT     p   ALTER TABLE ONLY public.kelas_siswa ALTER COLUMN id SET DEFAULT nextval('public.kelas_siswa_id_seq'::regclass);
 =   ALTER TABLE public.kelas_siswa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    17740 	   materi id    DEFAULT     f   ALTER TABLE ONLY public.materi ALTER COLUMN id SET DEFAULT nextval('public.materi_id_seq'::regclass);
 8   ALTER TABLE public.materi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    17631    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17726    pertemuan id    DEFAULT     l   ALTER TABLE ONLY public.pertemuan ALTER COLUMN id SET DEFAULT nextval('public.pertemuan_id_seq'::regclass);
 ;   ALTER TABLE public.pertemuan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    17791    siswa_parent id    DEFAULT     r   ALTER TABLE ONLY public.siswa_parent ALTER COLUMN id SET DEFAULT nextval('public.siswa_parent_id_seq'::regclass);
 >   ALTER TABLE public.siswa_parent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17638    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            r          0    17751    absensi 
   TABLE DATA           h   COPY public.absensi (id, pertemuan_id, user_id, status, keterangan, created_at, updated_at) FROM stdin;
    public          postgres    false    235   }|       d          0    17664    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    221   �|       e          0    17671    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    222   �|       j          0    17696    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    227   }       h          0    17688    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    225   /}       g          0    17679    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    224   L}       l          0    17708    kelas 
   TABLE DATA           v   COPY public.kelas (id, user_id, nama, deskripsi, hari, mulai, selesai, thumbnail, created_at, updated_at) FROM stdin;
    public          postgres    false    229   i}       t          0    17771    kelas_siswa 
   TABLE DATA           T   COPY public.kelas_siswa (id, user_id, kelas_id, created_at, updated_at) FROM stdin;
    public          postgres    false    237   =~       p          0    17737    materi 
   TABLE DATA           W   COPY public.materi (id, pertemuan_id, judul, path, created_at, updated_at) FROM stdin;
    public          postgres    false    233   �~       _          0    17628 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   �~       b          0    17648    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    219   �       n          0    17723 	   pertemuan 
   TABLE DATA           [   COPY public.pertemuan (id, kelas_id, judul, deskripsi, created_at, updated_at) FROM stdin;
    public          postgres    false    231   �       c          0    17655    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    220   S�       v          0    17788    siswa_parent 
   TABLE DATA           W   COPY public.siswa_parent (id, siswa_id, parent_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ʁ       a          0    17635    users 
   TABLE DATA           �   COPY public.users (id, nama, email, email_verified_at, jenis_kelamin, phone, role, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �       �           0    0    absensi_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.absensi_id_seq', 2, true);
          public          postgres    false    234            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    226            �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    223            �           0    0    kelas_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.kelas_id_seq', 4, true);
          public          postgres    false    228            �           0    0    kelas_siswa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kelas_siswa_id_seq', 3, true);
          public          postgres    false    236            �           0    0    materi_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.materi_id_seq', 2, true);
          public          postgres    false    232            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    215            �           0    0    pertemuan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pertemuan_id_seq', 4, true);
          public          postgres    false    230            �           0    0    siswa_parent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.siswa_parent_id_seq', 2, true);
          public          postgres    false    238            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    217            �           2606    17759    absensi absensi_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.absensi DROP CONSTRAINT absensi_pkey;
       public            postgres    false    235            �           2606    17677    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    222            �           2606    17670    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    221            �           2606    17704    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    227            �           2606    17706 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    227            �           2606    17694    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    225            �           2606    17686    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    224            �           2606    17716    kelas kelas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.kelas DROP CONSTRAINT kelas_pkey;
       public            postgres    false    229            �           2606    17776    kelas_siswa kelas_siswa_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.kelas_siswa
    ADD CONSTRAINT kelas_siswa_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.kelas_siswa DROP CONSTRAINT kelas_siswa_pkey;
       public            postgres    false    237            �           2606    17744    materi materi_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.materi
    ADD CONSTRAINT materi_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.materi DROP CONSTRAINT materi_pkey;
       public            postgres    false    233            �           2606    17633    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            �           2606    17654 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219            �           2606    17730    pertemuan pertemuan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pertemuan
    ADD CONSTRAINT pertemuan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pertemuan DROP CONSTRAINT pertemuan_pkey;
       public            postgres    false    231            �           2606    17661    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    220            �           2606    17793    siswa_parent siswa_parent_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.siswa_parent
    ADD CONSTRAINT siswa_parent_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.siswa_parent DROP CONSTRAINT siswa_parent_pkey;
       public            postgres    false    239            �           2606    17645    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            �           2606    17647    users users_phone_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_unique UNIQUE (phone);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_unique;
       public            postgres    false    218            �           2606    17643    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           1259    17687    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    224            �           1259    17663    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    220            �           1259    17662    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    220            �           2606    17760 $   absensi absensi_pertemuan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_pertemuan_id_foreign FOREIGN KEY (pertemuan_id) REFERENCES public.pertemuan(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.absensi DROP CONSTRAINT absensi_pertemuan_id_foreign;
       public          postgres    false    235    231    4797            �           2606    17765    absensi absensi_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.absensi DROP CONSTRAINT absensi_user_id_foreign;
       public          postgres    false    4774    218    235            �           2606    17782 (   kelas_siswa kelas_siswa_kelas_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelas_siswa
    ADD CONSTRAINT kelas_siswa_kelas_id_foreign FOREIGN KEY (kelas_id) REFERENCES public.kelas(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.kelas_siswa DROP CONSTRAINT kelas_siswa_kelas_id_foreign;
       public          postgres    false    237    229    4795            �           2606    17777 '   kelas_siswa kelas_siswa_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelas_siswa
    ADD CONSTRAINT kelas_siswa_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.kelas_siswa DROP CONSTRAINT kelas_siswa_user_id_foreign;
       public          postgres    false    4774    218    237            �           2606    17717    kelas kelas_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.kelas DROP CONSTRAINT kelas_user_id_foreign;
       public          postgres    false    4774    218    229            �           2606    17745 "   materi materi_pertemuan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.materi
    ADD CONSTRAINT materi_pertemuan_id_foreign FOREIGN KEY (pertemuan_id) REFERENCES public.pertemuan(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.materi DROP CONSTRAINT materi_pertemuan_id_foreign;
       public          postgres    false    233    231    4797            �           2606    17731 $   pertemuan pertemuan_kelas_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pertemuan
    ADD CONSTRAINT pertemuan_kelas_id_foreign FOREIGN KEY (kelas_id) REFERENCES public.kelas(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.pertemuan DROP CONSTRAINT pertemuan_kelas_id_foreign;
       public          postgres    false    229    231    4795            �           2606    17799 +   siswa_parent siswa_parent_parent_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.siswa_parent
    ADD CONSTRAINT siswa_parent_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.users(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.siswa_parent DROP CONSTRAINT siswa_parent_parent_id_foreign;
       public          postgres    false    218    4774    239            �           2606    17794 *   siswa_parent siswa_parent_siswa_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.siswa_parent
    ADD CONSTRAINT siswa_parent_siswa_id_foreign FOREIGN KEY (siswa_id) REFERENCES public.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.siswa_parent DROP CONSTRAINT siswa_parent_siswa_id_foreign;
       public          postgres    false    4774    218    239            r   K   x�3�4�4��HL�,���4202�50�52T04�22�24�&�e�i�V���Y���T���������W� H��      d      x������ � �      e      x������ � �      j      x������ � �      h      x������ � �      g      x������ � �      l   �   x����
�0���S�(�m�O��˖DZc1���w[ӛ��0�f�
U�-g���-�Y��=��Bz���!Ť��#G�q�"|8�ԏ�!]�7f�!X9$���i�
CH>��q�+�A����؝��O]*E�6h&ϏW�Z\������!��U�#�*y�.���~>�����֫d�$*y���Z?&���      t   G   x�mʱ�@������^���:ޙ��.$Bg.ߋn�5�R�Àfu�d�ͯ���؝>�>��	�      p   G   x�3�4��M,I-�T(N,)�LIMK,�)�+HI�4202�50�52P04�24�24�&�e�0#�4�,#b���� �!]      _   �   x�e�]
�0�gs�����.�e��ڪ�$��7�Fk]�}�FV  ���L�q�"&j��P'(쨻��	���v/4�ej��'7���b&v'�1L!3���BSf���6��l���v��6�?��"��T�0	c_��?@Fo�W�3�R�׋�??f�      b      x������ � �      n   �   x���;� �N����"Βf�QL$2���Q��t���>+Vϰo� ��Ǌ
K$,��$�+�&��B��Ǝ��;k����t�i+�`�Zm�Ty����v��Q���E�w��P���,���D��xv��2}���olbV      c   g  x�=�Mo�@E��+f�&�·%����(���JE��Ŷi��w����9ۿ�Wᑮ.�|��<����-���too���R����.l)�h��aoЅ�a#qQ���Ԯ���?W�zY�d��z�v	s�e�' �>F�G0JOE���? xw�I�)���}�;��Tj��Jr1U���l\�`u����-5ÃS���!��+�'��`N�G3��z~������c[�vA~M#�)l<�,+�i���/��n�(k
�s�L�*�3�&i�����3��oٯ���(��M�N�y
cS���v��J��^"�P{��l�݂M\Fd%���n_�"�@2PQ���t����      v   =   x�3�4�4�4202�50�52T04�22�21�&�e�i�i��1U0��2��20�&����� B@      a   �  x��ӱ��@���`�fF`4:EP�M 9E��T��<I�'�風��@��m�ćc�Ӭx�m�xÄ��ҩ��SG}���cn���@����~���]���5�m6e!`Ǣ�h˵c*�ߖ3�M:�B�?9�r5�� 6_գ!�����<xsa���Э(P�N(�UֻJ�`� ��݆0��'%��K]t�c)���pʟ�x��W�O\����"9�"W��6X�@��m��Φ�d}�����uȮ�&�.�Z���<`zKn;]/�=���V�����G���E�R��g���27�W<� G1q�֘�k���D��{��%j�����-��H������<]��8���GV���<e��N�D>��ؔ��F�^����A.w_'j�k��W�h���V�
Y��y.�S���d�_Nt%�vޢ�c�I=��1����t�����T�,�h�	qU=Z,~�;���&ˁ������ڽ�R��k��^�dF��3���a�B1�[Ɍ׃܎F�=�_�����g�ƅ�G��e	O׊�-�EfI&}��C^�"�z���VN{��##�m=f�!��6��������Ī�(���oտ����ŭ�b�'���5u����k��}�a��2u�	kiBV�p��W��/���?>�s�     