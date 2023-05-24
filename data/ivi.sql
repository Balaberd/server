PGDMP     /    0                {            nest_project_db    15.2    15.2 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16671    nest_project_db    DATABASE     {   CREATE DATABASE nest_project_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE nest_project_db;
                postgres    false            �            1259    42224    country    TABLE     �   CREATE TABLE public.country (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "value_EN" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    42223    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    236            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    235            �            1259    42233    genre    TABLE     �   CREATE TABLE public.genre (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "value_EN" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    42232    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    238            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    237            �            1259    41115    google-users    TABLE     N  CREATE TABLE public."google-users" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    "displayName" character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."google-users";
       public         heap    postgres    false            �            1259    41114    google-users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."google-users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."google-users_id_seq";
       public          postgres    false    229            �           0    0    google-users_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."google-users_id_seq" OWNED BY public."google-users".id;
          public          postgres    false    228            �            1259    25208    groups    TABLE     �   CREATE TABLE public.groups (
    id integer NOT NULL,
    keyword character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    25207    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    221            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    220            �            1259    32998    images    TABLE       CREATE TABLE public.images (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    "tableName" character varying(255),
    "recordId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    32997    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    227            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            �            1259    42149    movie_person    TABLE     d   CREATE TABLE public.movie_person (
    movie_id integer NOT NULL,
    person_id integer NOT NULL
);
     DROP TABLE public.movie_person;
       public         heap    postgres    false            �            1259    42266    movies    TABLE     �  CREATE TABLE public.movies (
    id integer NOT NULL,
    avatars character varying(255) NOT NULL,
    promo character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    original_name character varying(255) NOT NULL,
    rating double precision NOT NULL,
    count_rating integer NOT NULL,
    "ageLimit" double precision NOT NULL,
    years character varying(255) NOT NULL,
    durations character varying(255) NOT NULL,
    country_id integer NOT NULL,
    genre_id integer NOT NULL,
    description text NOT NULL,
    "description_EN" text,
    director_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    42265    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    240            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    239            �            1259    42117    person    TABLE     �  CREATE TABLE public.person (
    id integer NOT NULL,
    avatar character varying(255) NOT NULL,
    full_name character varying(255) NOT NULL,
    "full_name_EN" character varying(255),
    description text NOT NULL,
    "description_EN" text,
    "DOB" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    42116    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    233            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    232            �            1259    25243    post_groups    TABLE     j   CREATE TABLE public.post_groups (
    id integer NOT NULL,
    "groupId" integer,
    "postId" integer
);
    DROP TABLE public.post_groups;
       public         heap    postgres    false            �            1259    25242    post_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.post_groups_id_seq;
       public          postgres    false    223            �           0    0    post_groups_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.post_groups_id_seq OWNED BY public.post_groups.id;
          public          postgres    false    222            �            1259    41790    posts    TABLE     k  CREATE TABLE public.posts (
    id integer NOT NULL,
    "uniqueName" character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content character varying(255) NOT NULL,
    "userId" integer,
    "movieId" integer,
    "imageId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    41789    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    231            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    230            �            1259    32951    profiles    TABLE     m  CREATE TABLE public.profiles (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    age integer NOT NULL,
    "phoneNumber" character varying(255) NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    32950    profiles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    225            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    224            �            1259    16685    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16684    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    217            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    216            �            1259    16696 
   user_roles    TABLE     h   CREATE TABLE public.user_roles (
    id integer NOT NULL,
    "roleId" integer,
    "userId" integer
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16695    user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_roles_id_seq;
       public          postgres    false    219            �           0    0    user_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
          public          postgres    false    218            �            1259    16673    users    TABLE     @  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16672    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    42227 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    42236    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    41118    google-users id    DEFAULT     v   ALTER TABLE ONLY public."google-users" ALTER COLUMN id SET DEFAULT nextval('public."google-users_id_seq"'::regclass);
 @   ALTER TABLE public."google-users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    25211 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    33001 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    42269 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    42120 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    25246    post_groups id    DEFAULT     p   ALTER TABLE ONLY public.post_groups ALTER COLUMN id SET DEFAULT nextval('public.post_groups_id_seq'::regclass);
 =   ALTER TABLE public.post_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    41793    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    32954    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16688    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16699    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16676    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    42224    country 
   TABLE DATA           R   COPY public.country (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   $�       �          0    42233    genre 
   TABLE DATA           P   COPY public.genre (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   o�       �          0    41115    google-users 
   TABLE DATA           q   COPY public."google-users" (id, email, "displayName", banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   ��       �          0    25208    groups 
   TABLE DATA           G   COPY public.groups (id, keyword, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   E�       �          0    32998    images 
   TABLE DATA           \   COPY public.images (id, url, "tableName", "recordId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �       �          0    42149    movie_person 
   TABLE DATA           ;   COPY public.movie_person (movie_id, person_id) FROM stdin;
    public          postgres    false    234    �       �          0    42266    movies 
   TABLE DATA           �   COPY public.movies (id, avatars, promo, name, original_name, rating, count_rating, "ageLimit", years, durations, country_id, genre_id, description, "description_EN", director_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   ;�       �          0    42117    person 
   TABLE DATA           �   COPY public.person (id, avatar, full_name, "full_name_EN", description, "description_EN", "DOB", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �D      �          0    25243    post_groups 
   TABLE DATA           >   COPY public.post_groups (id, "groupId", "postId") FROM stdin;
    public          postgres    false    223   ^      �          0    41790    posts 
   TABLE DATA           {   COPY public.posts (id, "uniqueName", title, content, "userId", "movieId", "imageId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   �^      �          0    32951    profiles 
   TABLE DATA           w   COPY public.profiles (id, "firstName", "lastName", age, "phoneNumber", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   1_      �          0    16685    roles 
   TABLE DATA           Q   COPY public.roles (id, value, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �`      �          0    16696 
   user_roles 
   TABLE DATA           <   COPY public.user_roles (id, "roleId", "userId") FROM stdin;
    public          postgres    false    219   ua      �          0    16673    users 
   TABLE DATA           c   COPY public.users (id, email, password, banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   b      �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 22, true);
          public          postgres    false    235            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 21, true);
          public          postgres    false    237            �           0    0    google-users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."google-users_id_seq"', 2, true);
          public          postgres    false    228            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 9, true);
          public          postgres    false    220            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 20, true);
          public          postgres    false    226            �           0    0    movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_id_seq', 505, true);
          public          postgres    false    239            �           0    0    person_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.person_id_seq', 200, true);
          public          postgres    false    232            �           0    0    post_groups_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.post_groups_id_seq', 49, true);
          public          postgres    false    222            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 3, true);
          public          postgres    false    230            �           0    0    profiles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profiles_id_seq', 19, true);
          public          postgres    false    224            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 6, true);
          public          postgres    false    216            �           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 33, true);
          public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 32, true);
          public          postgres    false    214            �           2606    42231    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    236            �           2606    42240    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    238            �           2606    41125 #   google-users google-users_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_email_key" UNIQUE (email);
 Q   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_email_key";
       public            postgres    false    229            �           2606    41123    google-users google-users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_pkey";
       public            postgres    false    229            �           2606    25215    groups groups_keyword_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_keyword_key UNIQUE (keyword);
 C   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_keyword_key;
       public            postgres    false    221            �           2606    25213    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    221            �           2606    33005    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227            �           2606    33007    images images_url_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_url_key UNIQUE (url);
 ?   ALTER TABLE ONLY public.images DROP CONSTRAINT images_url_key;
       public            postgres    false    227            �           2606    42153    movie_person movie_person_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movie_id, person_id);
 H   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_pkey;
       public            postgres    false    234    234            �           2606    42273    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    240            �           2606    42124    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    233            �           2606    25250 *   post_groups post_groups_groupId_postId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_postId_key" UNIQUE ("groupId", "postId");
 V   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_postId_key";
       public            postgres    false    223    223            �           2606    25248    post_groups post_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT post_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT post_groups_pkey;
       public            postgres    false    223            �           2606    41797    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    231            �           2606    41799    posts posts_uniqueName_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_uniqueName_key" UNIQUE ("uniqueName");
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_uniqueName_key";
       public            postgres    false    231            �           2606    32958    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    225            �           2606    32960    profiles profiles_userId_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_key" UNIQUE ("userId");
 H   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_key";
       public            postgres    false    225            �           2606    16692    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            �           2606    16694    roles roles_value_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_value_key UNIQUE (value);
 ?   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_value_key;
       public            postgres    false    217            �           2606    16701    user_roles user_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    219            �           2606    16703 '   user_roles user_roles_roleId_userId_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_userId_key" UNIQUE ("roleId", "userId");
 S   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_userId_key";
       public            postgres    false    219    219            �           2606    16683    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    16681    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    42159 (   movie_person movie_person_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_person_id_fkey;
       public          postgres    false    234    233    3555            �           2606    42274    movies movies_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_country_id_fkey;
       public          postgres    false    3559    240    236            �           2606    42284    movies movies_director_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_director_id_fkey;
       public          postgres    false    233    3555    240            �           2606    42279    movies movies_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_genre_id_fkey;
       public          postgres    false    3561    240    238            �           2606    25251 $   post_groups post_groups_groupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_fkey";
       public          postgres    false    3533    221    223            �           2606    41810    posts posts_imageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES public.images(id) ON UPDATE CASCADE;
 D   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_imageId_fkey";
       public          postgres    false    231    227    3543            �           2606    41800    posts posts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_userId_fkey";
       public          postgres    false    215    231    3521            �           2606    32961    profiles profiles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_fkey";
       public          postgres    false    3521    215    225            �           2606    16704 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    219    3523    217            �           2606    16709 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    3521    215    219            �   ;  x���MkQ������K�̝�d�]���ࢱqsi�:$���	���W��P!~,���5b[��3��s�DE��B�����x��	�U>̇0͏�F��K�P���pI��V�h%����o��k$�|�8��z�9߭r�B�����>�������^�y�%YE>�]��	u��t+fn(f%
x	[��
�"yJe^���u欚$�I�p�/�$+vx�7��56ʏ����$��c�g0ΏxC5�*�Q��]�q��:m�C~�$�H�+�`����MG�̖~�$ɚ���A>�o�ѯ�J��=�Iz��/�'P��@�hf!����	x��`�8�S��P�X�⺝F��=c�<:$4&��0u������~/3����*<�BT�.Ƕ>�ﹸ�M��u�,J�}��8�݋͖A�s���M��0G���N�v�i-ʪ��X��=�u�����ؐ$=��	�f2�ac7nƜqn�E����5_��O�Sr��	r�Sj�-�כ`
3�x0vh�C��ՙ~���f2����ΩY�m'��b4e�7���Ic�}TC��"I>Y�R��p�      �     x�}�Mn�@�לSt_$��Ȳs�n��R��`4I�]��"mzՍŶ�+pn��@7�a�0���{䄀/��cs�JQ�gAr�Oatɋ$9���� =!�pK��@��A��2��	����w��]�_��LiSU+�r�C�$$��ޮ�����ƾT+�jSdL��:I$���-nTf
�E�C���L$ҞX/��ߐUe>�c*"�$�Ҹ����W쎃r���9ILiU�����n���4���O�Kb��[�}Z{f���2�L�	��a���¿n��␉_��VWn𔧦���dG���R������|:^!]̆�v{H�c�ymr�lN�Ϟ�O��>��.�kf�%G��#�\s]\4�_m*=��$�q����t�����{����+s��z�>Y��DH��8�Ԋ{l��Ir ѥ<�?�(<��Һ�@)�#$N]
�����C
jɔ�I�!��ۑ����\ߠ,��Q\	��D�}�w�]C}Ui3��	D:R����ܥ������j�ės!�T��2      �   �   x�3�,N-KN���O�I�K44�tH�M���K���0���/콰A�[/l��$�^�uagg���������������������������9).#�s3Kcs4�����$w*\�a����`z;���Ns+c=SKS,v"Iq��qqq ��S�      �   �   x�}̻
A��z��˄\�ɳ�X������8#B��|�p�/AH4�F��͙�M��)��k��,��J��y����H��P}R�U�JP^Z��sE�i�m�y����I�XF�&���u%�sq1�d_�[�;#\K�      �      x������ � �      �   +  x�=�K�� D��br�������#uK��M�����'�۟��;T�����U1�O�_o�zze�w?�JU;�N���>�b�7�~R�P�������v�� ���3(���ϧ�;a�z�����̠������稱�C�S��L��򹇲�w4*S�w�?��H�^E��b�eu��r�ڠ�c\}s���n5vA_��@c��� ��T�3��/��@�r��<z���S_�k�>��R��&�[��q�TcY-'�Y�����g�L� ��)����A)�cU���2EǱ'������R�_2@v,����ٔ{�K��)���R�P,.� 
]�1a�]�z�»��T�k�	2w��YP8��@T��Vc�.�{*�֭�o��ޭ��I�T�I�F��;j�LT�ʭIpɋt��i^@��?
�Aٛ~��R��q��G��k���lV��v�Q�'E�6UIO�Ƿyfp��	T0���\�Ax^}���4��"�ޟGqy	�����R�覫jH4��R!��+%�st*��5(ef��h����Ч�#��;^���_�]��Y�Ҏ�a�C�кۂ��(E-��У[��&��W�qi�=(�i�XUM_�'� K�D-��0�(���d��3�=����\2���H$�Altt[QMوP~��J ���jH��PNtNd{<;��b��Uk�[={�F�S�Ʊ�8�T�"���7цx	�[���L< -�_Ar�-�Qd~��4!L�	���Y^8ZWgo ��S��\P�n Dq��[V�H�빆}���y�|/�e��ΐX�xA
�p�r����n�:�F�~!�Z�f�oʐe�5jK����7o�Jp#�� VEҪ�Br1���שa@[/���BL��U$���=�)���)��D	W�Qu��XU�����d-�)�0Q*gRb�@ɮ� c�Lܠ�N͟��HB����� �}L�%
�A\%y&�g(,��_ފR�`�@c$:��R蕆�%R�#�@��Q����^A���VD	8	�>��l�G̑f�B(�f���0�(�9�X��-k�#�h��lFG��ߌE�������Z����7R�o$�,h�8� J����L�R���@�Iߠc��<�����2F	��g��yؑ �?,�in��$CN���W���Y�x3�v�{�����,jjG��(��*/�����t�$�vkj [ސtә y�.�'_ƈ�S	7�"MI�5�@�1��,L���~�4c8�
��yN�y��IM~K�ɔecV: ɳ%ܹE��r7JƇ�{X		oYHA+:�wJR��=0�(w7<�Q�	���w��
��[
:�.�Y^�J��jP 㫛A��&���3P)�8��ȚHH�%��	�j���`��pBB �Qpf[d>Qp!�yu�|��g�+��L�dy݁�rVu��u�1��ix�d9I��4p�\:bP1ܨ���nݟ�,巘|[9-L��*��U�ZM�)�H9V@�{��U��s�#ɖ��!g�El&�ƭ���Y<T����B˛�:��3o���"Õ~c��n�Nk"d`dݮ�o�]�vD&W
����U<X����� Y�7��؁�c�H\��i`է�&���P�9m���N��3h���6�5`ڤ�H�y�N%E�Bɺ��ꗕC�<��2m��q���$&N빡�}6P�E�J�i(\�X�Mww��B�d�˨SzsA�H9�!'��j:3W��̣����6�//Z��uYD��m���9:��K�	z4	�	y7��Mt�&!Mr���{��s���s����@E�D����9u{QWI��t�
v���D2`}��۠�y�t��e�@�笥W��J7!�N}z�欰2yJ<u�8���ɨ�9��GL�=�5"�@Ε���W�I��N�@��@�m:�0r�f����F։�U	���%����h}�B��0��Y��۾A�;?�Vr��*A�D��.2�HҐ�N��f�%�sƵ��L��(x�+1T� �֒��hҴ������ӷZ�}��:�+њ��|�݉�-.��&�k�*��2ܡ�p�XOm~1'\L�o��ZN� ��< �4��GTAj�gw
�9As��=ߤP�iLT�~��+�ȥW7rN�B��V�s�B\Hω�;��� �˕V�W�)��ϒs�������u��DA�1KCӷMӷ-�ڧ��$�?����E�#�ɭ`��l����~�ӗ�H��`h��YT��N��+v���@�#��L��n�y_��B�-�V���C���t_�V�gj�EwRe�6����8&�I�9Q�FM�s��4}��#P��E��a"M����=��
+��%PtI7��Q7f�H�G��5{f���H�{pZeh��gM�ǐ�3�R��e,����hP ��@�C��Uh;�t�~Ḻ�S�7�,�27m��d�%���;��M�ﶯ�6$�Q\d�ANܿ���Fm�>�2��r�����Nه�8����/���L�m�h��U� %E!I_��k���J���ª;<�����4�nwm;!Mgv����7��%�쐪g3�ru�����5�&���t��!v)V�����y�\S�Ne�&�Jڕ�O��=�p��{�;~:u��R�����MyXٯI4~��w>�[=h��>H����?�v�ĝǕ"C��z_K�:���n�u�i��N]&!q��2'��4���3���Y	��a�fY ��D���d]Ct�;�i�J����C�QC�U��'���ɺe�����%i�*��%e���gx�����q֗�/)�tI��������y����}�      �      x���rWv&���)��*;�I��ܹ/��pH��J�T�eWL���y#a�8j T��/��<R�EIc��M�r��	Gu� @� F���W��+̺��l���+D��Af��Z�Z�[k��{�m���������պ����f���f#ygyu��ly��d����\RY*d*.	��<�e"����21Z��U��u�gM}I��l�N6�ݸ^�_������-_\�qi}c��+.U�Սfuc�R{I]j�+*a�B��*-<����e���]��w�^�P?*2y�O���j��ѯ�?=�ytpt�h�}��梘�\M�$K�|"29=zr�{t0=9�����G�����S�������&��m�xw��S��)|e�h~VӣG�G�G��G�������㏏��|�!|�����p���O������%�Aw�=�/<�6�{0=�9�����'ӣ����+�	<�7x_ _lo���߁wݤ��L�������������M�y8ӣ]���!��F�_�)}c�h�����u�+Ƿ��C���[�������O6�G��/�ѫn߽ ������&����7;��o����;�s�w�#�����w���oO�ك+[�w��㧰ƇG���?��Џ�q��qZ.N���M�(h�H`�EvY�˩��k��R}ʥ�l��!������6M!ˤt�Jd��ĸ�Mt����DZ>�h��h4��K5��0M.d-TU*)�4��h��Vs��g����0��L�W�\�N�6Q����	+��&9� X��?�Ȼ�+w�[Vj���G[|�7�`� x��v�/=�]��w?�Ż�N
nɭ�	;�1mZ���gd_<l��p���Ѷ����_������n�L�3��]�-���8����F�<S����+����Y؁qҟO��>�?�[���?�x`����}��sCG����$	�~�0�t�+|Y������ӣ'x�_�7�N�=n�A�ٺf���˟|�şL���?�7�S�!� �$��}�#�-����%��6�&��;��ɔD��o����88��:���{�z(�<��Z��~3:�?�J��]�I
��"�d�C�W�ٔ.��&�Ͱ��`����P�T����ϧ(MP��Lq��k<���@��ϼQQq@���Eā0�k/i+��i��V��lu
��P�lTӔM���/�@UZ��.
פ��"oLZ֙L]����Ea�ʃ_���w*V;�6O�b.�IV�NTh݉
3�Lꓕ,3K�7o�'^.���myw�����߇e���!��?�;�	Q^�`�!1���>����E��G�4�0"<�(�����x~@t���2�3�'b�~�0(T[� R�$:H���]d�/-��蛶��4�&��D"�mP<E"�>-��3@��s���ڼ���{�V�-쪴4E[�s���K:׸Zl"���<yխ�7��������⢝�ČGdi�#259��m�-�5c��v��ﵡ"Ai�sZN9���p;�A����M�t��vh�݁�=�:j���WW���M���8	���භx����v��D��6J��O�oH���@��)	I�dwP]���fO���{අ	��'�l�]wX�� �׺��l��x���:�}�/�? ���OƯ<B��@�t�����|AD��ۄ<o��;�}�x��`��-��N�;<�C�pؿ#�Hz�]|���}��׷��p�e�O�͢��.-�k�_�t��O�J�K��Rԉ���Rf	��
��2w�^���/U S�d��[���T幩U�fe;��aMK{�m�m�SD���K�=������{�{�Dw���ί� �>� ����	q�)D	� w��۴Qy���mr�u�>��4����f��Q���v2?&+�OH���M�@�`。�e��&B8�V?�z Ǫ��2�F&�G����a/,H������w�?ó�'���h0>�ʄmOL>v0�=Vgp?�	��F��U5�허�Y�LY���� .��M`�A,����pb������w=�=���8����b{� �̒����;k�]�V7;�O@`���´����ȸ����7��ʝv��E��#򡈋����V*Y�K%`�R�5( &REb�Z$Ui۲�JQ��%��H�f2�NL^_ݘݨ��r�Y(����p�D��o;�)&���6�d�"��;��I�p��$���j�:�-��h�ߧ�Q�uE�~+,^���,܄Oy3���I8�˻|��B�����IO舐��� ���y�&g?x�o�F;d���0�>����w���kO<�?����(:Ƈ�<8��}~����[�l�����8��n:�G��kw�l@�m��Y�w�l��]�<
�;�o�������s��z�Ɓ%Ѕ���eGq�x��U{����(�-�米ŗ��Bg����%��L�M�(QJ0��J\e�Dթ�VVN`w�@X=d���J�����ך�k��W���*��bbR�>8p��D�8��6Y�0��B.��]{�Xv�����֩G���H��3�37�F9$+�֝m�������e`�i/P����1� �x�@�j���&{N��8��_{�z���7��ˏD�E�:�~?��p�6=�����p�>��F�	;��W�!�O~ߧx���}��q�vb
�v��?�)!ĭ���ezH�荁ݑ�E?�O�?���3��P6�Xk�R(�v{��.��t�?�w�������F��>Lv=����&�z^���#�y�s��snu���}��g�gn7�l�D����S�$V�������x���_����
��&�[���2`{|�Y��db��&Jw::7��{ds�+w_�MҖ]�[�"ۄ�vh�h��}�O^*|!�b,��|��̣��/-�=��i�+Y��d�I�KeR
e�L�)�lY�M�ˮ������'d�e��4��7�W���(��0��el�GL.�T�L�C�-���', �m�;�4כ�mu��TI��`�������t��l���1�C:����M�����D7���zpZ၏¼�
�y���}:8�wX��M;��߄������N8u���~���{�=���g��zQ֝�Gc�aR�}̣B|A�2y�Q���"�]s?F�������	[Ӏ����y͟x��Ä��Dp��54廙_>C�<wñu�i;�hQ;�/-��4�ֹ�꒱��M^%US���*��8R�i�V��O�o�Ќ<��Oh��'ŀ����	�)��
�	��0���F�y|iI��x���J��<�J�D�U�8[VI�9c\�[aC�Kp�2�$	^z�Y�ڬ�O�EX�\�� ��u?<������B�FGW��7��J�Ui���l��&�D��2��E֖��8�GP������ow0���v:k�?p++�+ 7`M�ሯ@?cڏٲ�3�� /��7�f�}���&	�eB ��9���O���XQ�{tDn?T���}�)�m~VHxf�^ؐI4rp�ko����m���rl(l�+lS�����w� [�3�z�·I2���������'���(ۚ�z`Oz�wx4�����{D*������{�%�49��]�g�� �1��Iz8�O.NX�1��#u��������T�U�W��<"�3�C� <Х��#�ce�����ʦ׫a�`��ܤ4��@��~����� ���z ��%��~�/�ѓ��..�?F�u�;���T�nǇ��co�yv9r�7ewo.R�&��X{�v��x���*y���m���oۛ�(��G�yFg�`w��Bo,ׯh����":I�^���d�������-u��A�>���>�md���Ɛ�P����'��S��v;à��/O=�d��Vb�=�1;�>�V��5�z��^��N�wn�q{�&��"���d~|4:$OC��6������~V:xă�ރ��ݢ�0WǶ�S���h	v�Ɛl�}    Hfɸ=F��ђ��$��� Ay\�e�p�O�H�E�D����X�30۸'��3!����.�â-��t��{���EK6(�h�/-��p�lZڈ<ɍ�++�Q�����+)@�:�s6�G��~� =�`�m\C���[��&9'�W�_��4�?&F��=` Y����~Ȑ�3�O���d{������w{u���\ͦW��������άnCv��~:�J�=���'	;�#u�O܎?�^�>�g~`hS`^�~3��0Jp�}��K?T��t+�ˡ��3z�ֳ�*�|����pݹ�_�Hz��c1!�M~�/�T���3'�#��4&��@2�p)pPo��^@�<%�e+��H	������R�a�<��_���c8�w��E#��')��ޥy�B0�(B�����]�s��98���3���@.�V[����$T�#M�;��c27�������� j����{!�E�G�?�[S?c�/���{��#sF���'�?�r������D��H!�Q�W����CH����a�$F�qE�N�p���à1� �C>͝!����TD$g�J�KK"]� M%3��������s�O�&�-M�5�4y[��,�{�����|��wр M{3EN,� :*�v��c��Hn���MB��P�0�ƇĈ��p9�d�x�n�=�R�Z��!�>�>�!����'�$<я'��m��L�ۡ��~g���T�J��A�3e.Ď/x�+�>�b����Ñw��t���aئt`o�+=�H�O���YvЃ��`��y��,�h�8g���rtu��6��oF8!�}�~��>ȒE�,2��%mxq�f�CjR�>O�@�C[�#l�ԥNS�R��Cx$а&ߝ]o�/��V��R[��XG �GN19��	�:��#Y�s�{�����E�� A���#�{O)dv��v��?�?[���c�d�0��ѐ�ɤ!"�u6�7 ���Kx�02mx�ÚN����*Hj>�uυ��G��o�
��#��y�%�I�5q�!���Y�|:��c�]����m~>�[�`���&��u��x>�w���*zv�Go��?��y^R�`n2�$�����٣��� ﯏xe<�H���B���_��V	璼*5~#��")��j���L~�ʖ�K��	���=�Zx��KT��,�9�[w�S�|�r�+��/vрq,2�Q#���6CYva��-�1�V�C�s|V����!���.Q\9B\c���{��k�'?��t�v��dO��{��1����8�0྇�D��2�&ܴ}��������6�^x�a/,&ah�����>�~�=f��^�!g�I<V�S�=�@���<U��nZQ�G:�$c(��$#���� ��Ve沤�F�L\f�(M�V��I��������@�G�bz,	����W���_s��L�j����˳U����,	�4���I�"�&~Ƒ?=�1��c"yc/����x��{�$u�T�����+[s�7h���3Q5�Hޛ5�ď���̈́X��Q�ŭi窡 ���|J��L�G�y�p�6����U���ӻ�;&���{h�V>��"(�w!d-xF�f�޳ű}o�Ф]�)��x	ǿM�O�?\��f��������{��Ǆ����?�7yYڱ�턫u�M�"[�s�4�	���� �!�=�G1r�wa���g��}�PY�}q얠�Ϗ��x��/-����ln�Kƕ�	a���2�p�5U��um�4y����o>:���Z5|z�E=����XhB���RF��ܧ���S��7���S=��ya�J&�T�#�'8�[L��$�2/�7�nu���i���^�f*qX|j��rx�6�^o2��?�>�Y�a�0��p�,G�c�P�<�1�4�pd��Lj�]vӐ�m��N�{:��f�{�6�o:�㥰��@=�x2�׳d:����@�aa��	%'�w2����_H@�5@ySx���%�.����3�!sR3��?��}��c#��=^��$	���dq���?<�P{~p|!RB�VX��U��H)i�&q���e���9]�A98�pؤO�tk�?"�F�h$��(�tr���D�+�ҒX�F+�PF痌����<��VZ	��&q�imf�LvH������wk��g��ٻˎ��\��1��"&c;���� �ck:�	,��K}��a�s�x=r�#�S1H��Q	Ϥ0�FcWs	�zo��@m�G�����Gk�@����^�S���Ǭ�;Z��G�����z5�3��cg��|��$1��f _�c�R �X��ئ���D^�M���p;Lj����ɺ�d7�W���|샅;[vg�L~2��Hxl�ݡt��zN����x�ٜ��Cx|Z����x�r���CdAQo|s2�ȴߝ��)���!��#ڷ:�6�%�4�^>��ϳ�/@�7�C���}p��	��޻Lv�G��q��2;`�T�Y��ɐcĳ������ԏF��~n��ɼ�v�#�u�m����ۧE�"��<�xL����Lƞ
r�;Yn�Qw���9>��3�I��o��Oa��(f�5zGJ�cr��a��_!���~�%O9u�7}�Ϸ��B��E��z/J�#7�]�E�?Y��r!JXpP:ݴ���bM
k��(ԩ�hG9��f�y�|�S�p�QJ4Z8d|w�7���Q��?�טˑ�����1#v&���#x��$�C�������孠[�p��=����l�LG�iw���ݷ��q�߇�iדk��ʶw�1O$�f�I��m����$a�ˇ$�v.x���G����g)n��9��o�8z�v��3�0>��#�}1�ɶ%�O�-);�V�0L���Ly:��/�=�Ȣ�
a�:������S���j���6?�Qqr�,�ňy�O��T3M�։r�M�QUb�Q�kUV��T
3<<��PM�ݹ5y�]o������j�>����� �M�E�mxæ\g�Sз��}�W��y��>�» ��������r��NO�����w�a@�2چw�%p���/�����^��������G0��[w�K�}2A�%/���x�yg�p�;�v����D�2=1!Tz� ��#�`t��݀�E6m���S2�)5�N�%�#����};�s��=��{�Yg���Q��Q��S?�Vw=��[����z���ٽ���&%��1�����W�-k��s���!�8�!!xa�Cˡw��M�`.���4��eǌ�yd�m���W�	ߦDLV�4�n�x}��h	��[�s�}�7�,H�����i�_�0��:�|�`	�S���XN���;�G�{����d����yL�?W -�Z
�Z7y]�*i�����HJ]��N�VZ�B����s�q�~ṛ��~�'l�\�;(����	t����	E��F�x���5�Ѭ�X� ����\��[�<Ek��k�M���ޙ~�qk+T>C�އ��!�@��,���#�#©w�w��M�<���z�
�����������;����d�8�?����$�]𩤼����!�8��8[�n� %O��O���Gr�(�c�=Yv�
w�`��hx��ĺݡ�8���)��>�Ι�H�>�-�?c�ݱO���=���I�|���;���A������t�6P�J�.���8�.-e2VXŗ�q-���Vu"U.k��mS��u��a���������V�߃���76����Y�"����|�x�N�yO}9����i�m88�2a���*�G�;^��|��>'�}"� �^�����������L���ԓ�Or�����Lh#U�1yW͎RL`g�v�����$��a�����<r	��ڠ����7=����t��S/+X��f��$�wyg/�1>����@~������{�G!v��!yD.�gH���R�Y"����-f�"g��L�0�&�6�þa��(~L�Z8d��t
�Y�Z����� �6���������ɫ��vO�'�Oi8'�&�� �=�;w����k���~���;!<����O~    /���e(D�ތc=݀XL�c��јlӹ���`��Ľ��8������"����	�3<��d�),ǳv�}캋wx<�G���/����&fHţ�ti)[�&��2��X�2q�D�t]'Fe2)Z�٪��j�!��DL�%5t;ġw}�#>��?�;��O޶�w�������66��)�!�+���Yk־�>���V�L=���lJ3C2�0:}�����f���E�m�m^���2�(��UR&�6�V�"�2��H��?���y�j�� �筅-|P��K-� ��2l���'&Z�;����Pi�>�8��G���e����aw�a�ב+廣�F���3���V8p�n�|8b��ã]o������.ў�gp�B_k�;OO���낷E��'>ae�K���^�j:A��4J��R#u?8]|A�.)��/>����v��g{.E���5�O�*���z���GחJ�~��z��OH�	�O�k��-�OL�`�'j�+�_s@v��z�ۓz�z'�1�f��3���R`��A�=Z�/��*�{�ۯ�N�����7#�0��S����C���B�����UɲW���b�O:rʴ�.iKty�8�dI�R0-[�)�@,���N蠗�_�~�$�"c?����B*��4����Q��H)D*�UQ m]Q�E�ԅ�/U�8����CI+Sځ#�wG�dL�->���O(�m���0��kΌ��_�#=��d�(����&tiI.VVI����RQ`S�&&�m"�i`��K�6:+[��~���=(G��7���j=��I`����0	V6������KK�b,S?,���̚2iei0���i�)�2M]��v��x�s���mvKH5k���
�N/���,mc���93j��E�\O
��a� ��9��3h?%>2��A�������,}���K�C��A����Ȭ��HG��>��ݓ�}��(H��U���	{Q�5+���	L8��N Վ����ꑤ���)�ܴ�s�\�<��'���H}�Ӯ��r<(��Ǟ�3�D{��{nQ��q�BL��e�� �x�f:�*iW�H�|��'��vÓ{F�9bCV��
6omr�>_	�,�#�M�Tҥ�l1��2i�J���RUX�d��u"Z'�P^��>�;4͆?�Y��^R<��DH��:k���+��&��R���ϻ��8��"��fk��:�u�{��?x��N��;Ȏ����3������1�#ǾH�5���ź?fW��`��8�	�Ğ��מg8��+��0Ae�d�U�� n@K��]ek�o�{��Ʒ&��Nf�����!�v����T�����ulC��bE�����iZ�6�
��ib�պjta�T�A��=�6?9:죡>a�'�"���r�$�s�B��ǁ*�r'�����������l�����������B��.4�w[��o�ĵ�J&
e�N�a��S�G����1O^���5���n\v=���M"���һ_�����>���CÐR�G���g�r`;>	��w�����%�y�ˇ|�'������P%'���qW���I��NZ�w��\B��R�����M1BR �t�x���M{aA֪g�V���<�
{��"1֙D�u��*sy��'�Ŷ���_���?}�Q��J_�П�#e�R��_�^(t3c����-��C&&�
�-o�x~�G`���<�~ �"/��7�F�,�P�_@�]K�����+�0O����0H�����q:o��O�����{gT���M���haҟ)��D��T����ΫF)�,�8�����ȿ�����E:(]�����k�ED�8��W�w�+v���:�,3�d�76m��-�B�*�I�t�V8ܣ����p}×g�w(��{C֌��?W��$�<���P��G�p�u�&u!%f���-��M�˄�N�Ât���+�>�N�Z��!/������a$҆���?��k�d����1璊{��7Z����ʕk�6�m)�����4m�Pu�9�|�ː���lr�����/b�,!_�f"�C���س�1.�I����+��R'U�t"3�'e-�D�>�e�����7^s�г�C0�r��m^__���sV�iю�
���i��ѥ�|�X����fu. ���sI)�*)ʪ�MZe�j��/3{�1��G!��c_�='�X������*V��y�7 l73�����F�?Hw"ӥ��\��r-�.�$�^�*)��Ir��-�ƵD�;�b����_)�Fg�{b���?�����:����V�6or��5�qY*8�iV'Y[�*SҸ!�w���������\�|�V��qu+���>������i�ti)_��>�J�婆#[U0,��,)
�j�E��nXy�yO&٬ήO o��I،b�y@�BǝHti)_̼�b�dY+�<�Z��%�.e���y_��i����N�wV��z3�ͤ��װ�T��Y�<�:�I�KK��0t�Uy�W�l�6Mڢ,�Bd�4r��v�X����yilp�M����M�t�(NݨqA0"_+�A6�k�`��4���K��1�\4e��L�(u�+Dנ{U>+ZTX�2q�bX�,X�5M�1��.U�pQaA}f,cL����"��_<��b�����?:�|��ʻ�W�+�0�&��l�Bh69�)���P�'�\VP��� D�k>� ����y���C@�!��9�G2�@M�ví��n�c���V܏ާ�*MГ�o&I�,�L�hh��.-�s�$۔Ze���[#�PT��N4� ���!�/�i�9��������nmc��(��� ��I��Ez{�x3?��$BDahei�*����ubL���DH�m)̨��a�<�W%����۳jc����^m���\TQ�.o������.]Z�� 9���˶�A�K�a\�Ȥ��J��R��C��0z��7��/o�4��X�Y�LX�b(�<ԉ�Y˕�<���[n�Z�6Q"%a�&�u+�Ҫ�Í�%�Yd�<�9����1:[N^qյ����v���nL_q�T$7�G�AJ�A�q5a�,�)Pp�z���l1V��ȝ�nO3ԥ��9�u��4��Eݤm��w���)��C���aIj-&��x�f�T!�ؐ/-����TTJ72)R��]�%F)����֮�l;��jr�Р����ɷ�
N�l���5���Ԥ�ɢ�|5vU-/���m!�:�/-��q����*+g��k�լTb�Ưۦ*��Y3P��Hl�׵�2�t���)Xk��b�n1$"�{��R����5&���5imAit��M	纮tVԲ����\)T�谼��V�V�C��&�T��b|����s5*uN�������lm�$-��'�22Zd�l���O�?[^�J��R(o�����4�x���ʑ��YZ���+�<�rӴ���6�P97S��|����l��;��I���L�+��f�Sd�Q]̗��o�{�֦׾bL�b�ݼQ�˗���iW&��M�H��CIQ)_Z*^���s{^t���נ�4�Yt�L�l�L�q�Ś'"��xc��������bw��������#{7;ei�P��
�u˸�k���_����Jy$_�ɳ�<epQG^;�d�Ғz�k+bB��GE ��������/����hչLs��ـ�cb4�%�Ғz���iSt�)3"3��P"����m�B�2����zu&�;2��r�Y9�ۯMk0�6���P����{�J��,tT�S��ۙӈMD/�q���^�����.8�y��JF3&�y.�$��M�_����YN����?ҁ���!��>ͬ��}j���<&��^/�����Ȯ��Δa��y%�t�$cU�x{Y�����\�=*:�l@�p�ǴB�1�M���+����	b��̅X�����%I�g�{D��-h��E�����Y�3j����`�F�.n?p�"��/u�G8�_]`6BU+򸓍.-��~��"N������Ҟa�/:�2�X�3�KPq�"��tiɼ��Kʌ��!�2�Z9�2���Ғ��    ɽ��˰�y$�g��%�"0/3����Q/�TD*ǜa��(�R)5�x	��o�"��qĜ6�Q/M��+��d��_Z2/$�2�r.�T+�H��3��E"^*��/m��@���ey�M/u!�d�ü�"",�xG��d^P�v�Rw.�<�gO	?r�Ѽ���"-&s���(Fx���7K��y�|Q��uJ��c���^f�yڀ�����E�S�R�|iɾ���87�^���7����~�jl��2 j�g"@�rOq�!Eb_�JSJ�@�V���x:%�����KK�E�6�ϭ5�{7\��X��9]Z��d�)-@���;?j�qpG���b�!�(���n�*����U��%���i�V�:N6}H�����[�ٍ啕���`Ac{�l�B�D�?^�/-��P�w[X�J��J�D�2'͜��[1�����!>����f=w7����}^�2B|iɾ8�u�8�®�o_;f�g��!b�x������-veDO�س�m�#?^n�/-a��Ů<�p�a�]�KED�F���إ���Qn���:�j�Z�H_D�-�'O�i��[��{�+'��Ea�gV�c����������<'��Yo�G�\>B�)6n��*�H
+AZk��4��ͬQYe����S,��^&�n\��l����o�$/�$1i�0�Ő��B��	�$z�`yØ�T��8]�������E''�̪G����Yk���F�?.��4:�ʄh���[	�h�:\��ȫ�m\ۇ^^���}����j���֖��{ݯ�Hlѓ���2/�b�x��C]�mD�L��f@}�2�S� R) ����F�%��@���/\�E����>޷@�4k+���wg+�)�T��*��~������?P�d�k�I	�!k�J���3��u�ʺ2��]:�R�L�e���S.�t�%M��g�w�J=������k\�%�bX���ʥJ�
V���7Y�&�0�Q�ɭ���������W/��Ü����S��\�聍�ʸ�f1�C	�JQr�K�%�Ag*��u���K������&��׏�~>��Ko�����p�?P��[�ߴEX�,��x�a���.�ʁ'������'m����Ӻ+x�Ȣ������i 8�����'�(����-@��y|�YY��p���Ë�BAV�z��1��ꈗ��K0a�V-l��U�.*�0g�(�`"*��` �j�6�& ���Vqw}�5*�G�7��O�$}ĭl�Ȳ���s�ЩZ���.\r��}��d�)���y�f�)l�"��@�6�S����T5�IM�27�y��o2 ãnI���U�1���ꍍk��.Pacny�CW��f|�X_�bR���lQIc��4���aQee�L[�q����\�٫���L	^fb:h ��Q۳�Uį���N3�[��l@�+�(�I[Z�2K�%��-�%�i�I}֧pk�51�~�I}I������-��V�7/��w�-V	=eY�7'(|�����&�{`Q�>���S�u���Z	ZU�I-�"�Zf��H�u�����O�1Y�{,�|�霌�h!8؅)0�/SEE4i���L%9S����!�l�ޓ�ۣ�����B��E�m�bE��ŏ�+Lƃ6���*k�UH9�FYڴ�k���\�i��V�b�K<{��W�k���;&𠚍g��������+ךuf�+�{R,b4�7�-R����4�K0o�r��m+Q�$30y23&)EUb�gSS�
v���\?������O������d�Ҁ�,ʩ��+F�p��<�h�G�jK�U�d$S"P�Y��� H�	�5�,Q>��l���K���*�J˫ߚ���n��kpɿ=��:��1H���<k��P� t���aZ+�\5e�9)dY	Z�͒
�Q%��v�9V����-/6��N�ǃY�g�&U>��l��i��`�1��e��ҒX��{p�d��C�S��tR��`Z���l��\�������[_1�́3�t�����[ȅ%M���-1��u�\�
� Q��XdE��3�����N���_�殗���4�Z����Fb�E�"P������������b����O�	&�����K�)ꤶ�R
�G��H��K��=zH������|��J��=u	��Erg�0�E����MM�Ә���f#��I����9[�a:���Lç�&TJѻ��q�������	�1��+�t^�r�e��Kde��V���I�:�
7�j���V�!g'tX��-7��>�Ի�wߜ�{�`���_S^؟ހ���n���x�+��9n�H�׳�ιp�p6KA�'�0a�%���F�1�+�f�^h�y�ۑr��6M3���ю{{�-���_�~{�]�1��ѥ��a�m��ؐ��o|iI,V�8H����ʲ ́�)l[%���di=d}�6���ޡ� �&���2}m�A��i<Sn�(7�c�c����tuYU��-1tX�)S@����iR��8���,�B}�;ԓ�Sj��;y}��
�������e���F��D����@�1>o��_Z��1K��deV%���*k��4�	ۖMQ�B_v=��ʭi98N����v���;T�1��Hf�g#>�<-�x����eX�F�֛R.�u���l�V�M)����ޭ����O^]\�ڍ���\�L��3#5�?G��}�}�n��.h���ļ_�E�V��5���T;8��	��Ё��~�Q{.�v�y��p�R�\/�^���������$��	��a����	,���O��pZrI�h� {Jk��R$�lD]K�gC��4��ɕ�NV/B`,M����9�?�͹8�0�E��4%{실��NI6\��U>�tS�'����I��
-�8����E��LE�J���>ln ��MM��l�.V$���tp+ˤ��L��� �i���kJ0F��3t���}'j1�ԧ[|��:y�q5@��>@p�D�r��яȗ~˫�J:
S�,VO9�#��©�2l�Z��ɴMt%ڼ�*�ʑd�e0��O�q����r�t�t�q�� m v����x�8��$���@�2O���S`1���)����nX�)MI�,�?���`}&-M���5�",�8%��b���AN����6��[	V2� �J֭�������:6bs�����\�0ۼ��2�Ao�?��k�QCk�s���U�+��%q���&+a?��6؈�`<㒴���L��>�	�]�-����e,a¹E�L_}�-���m\[y�]G�;������1�e�m/Omi��e����bn6?_�i��d���oa��ef��W��"0�Ü����GԵ��hTwOv��l�X[<�
���l<>Gl�-���,Sv��g�8�%y�[��V42��ږ�p��Bu��2�����ݣ�������p
?M��/�0�.��v�wo��7�`�}�A��; t��젳ٸ8��H�1�/x��b������L�L��@
�T`�XQUI�H#ʶN�b x~Af�O���䕵X߄XWY��us9ohc]���%�b��P-�uʶ`��pf����muUpZR����5�䢯�Fsԯ��K���V�o�cF'�T%{Z���r��j�����D��ع�e�`�t�4M.��,Z0��t���0��L~Dh�U���_���i�m��⛑:�g�����V�NaW�FO���4�:�2k�B�e=�}d�	~B�S�	�n?�dr�Y�������ܻ�����v��\�R@Ǝj���KE簑�����9,]����Lt�@�6��Zp�s�4�:���'�7�ۈT0�M��gӷg?�l	
ܘ�!0\5*0��G�U�
_ZV����*� �W� q�
�E��@k���3F��#S�Lnq�4&��`����<}�ml��BX�ڬP���z�9{�؍\D��g��E�y�m�R`t�Dria���
���m����!5�D�mP��`����ƽ�.��]M+C8�p�&��d'�"!��`�    �Z[�&M�I�9XF`�I �m+Uk	#��a�OH�&!�wu�}�Q��A d#���Sz�< N����j��~�MY')L�sU&6���m۲.���q��>y9�M*n���p�����t�;+���r�ӿXm~�nSm4��Og���I6�v��`��;2�8.�1b�~ }]��� �D��'��lhSץ(T1,��7H?K�_2NĽ�[�?����넙l���7��d��x���$�R��y[�-���)L@��� ˍnkY�����#�>h���%��dzR����o�7�#1	����b� �jJ�^mUҶ�� �"�6��\ �`��C�=�9?b���.�ɕU�j��{�S̐��ʁ�
v�G�X(5P�¤(�<3H.�UbЉ��-��E��؆9`?-B٭������Cq9n�;��ժ��Ż�թ�������ŋ�����g��s�C;�)�G�*^2�/-�Ś�����рYRL`�\\[4I���l�"�k3���zf�	RMǿ�Y3YR��Ά;�+���xI��$k
�犢0.��#�z�j�PpJ��f��(�V��e;Qa�?9풾�0!�������l����\5�Ri�%��A�-6~а��B�u��2-���}�y��̿��h�ښ{�U�MB�|�P�;c,�ΆZ�P2?0�L��������M^*��i��a�Q6�m	FV�6:h����\���y�C�}~�����%�dc6}�����tu6}�]_~ǽsc��2�(|R�gC��;�#�U��_Z�u�Jw��E�&�e"�X�4� u۬Յ���0��z{�vw&ǻ��-(�o�xҧ&۞eH��PC����IeRP��s(  ������1�Q��r�]o�85��D0)�y$}���P��kɈ�hZ�A��^ �b�&�_��J8�N�#�}�X��ݢ����O`����0j�����12��p."�&^W�/� ��k�
@Dz6�4�Rb��L���A �����͂�Ɂ�Рl��ڃ�3�~�GkuwM�(Ḻ��`�Ε���T25X�B�9���w*�.���.3���k�8��\��QDzc��'����w�F��X�~��~��
���(W.4A9m��O��7�ڀ�P5�/�񂙝2q΀�`�)��I�u�N�a"ǃ���w�\�~v}��6�!�<x�Оt,�'_U�
6|iI,֭��d��Ɯ8��cN�p�A�mQ�*S��;ܺ���~@K}T���l���-wuխ��!�)=�S���w����,]�I�KY\�� ��2'�v��,����P�$ܐ�z�1��Qzu�m��k��u�:�rV������7�>7}���<F/�×`����B�T���nZ䦋*OLQJd�7`�ƥٙp� �廢������x�k�r�������ZC�<+�6G�V衑�aɹ'e�v A�9ٶp���^��AL�\h�*[�a���K�]!�X���_�V.�e�<j������gy+��`� ? �jt`��&Ǩ�LЩ��T��6m��A��wI.��*�PQu\4�!I�R���sw���[X��+�d`R�i�:q6[�dR���z��`��=�>C�B�p����c/�ݨ0�w5����r��롋W�������,X�?�ғ6��V���F'N�((��l�����^�E/L����G�8��9��{cV�s{9�����r}���kk�
����[f2A�G��*��!��<y��e�,ΪZ��}��:I[��<� 
��+�}���RBy2� N�J-�4�^c������H�A��V1�]�i@�ǔR�A��1r.Z�T�6U�ںP���L���)�;G{�Cw��F���K�W�]����M�|b�I� ��e���x�p֋��s�VM1G�05�-@�d�OϊDbTܤ5�0MV�e�U�0Di9�z���n8��D�7���r��.A#ٗ�8�,X�?�@�Z��k�� �EڴMjLOjT�M�͵M��1M��9���@�Wז/O_�~{v�[�ӷ�
�v�e_���9�.�">�,����U���ư'��V
�tY��U���}���c�+T�SJ½Oq�=�|��ķ+�O�ӶM��|��S ����w}�c�)^&�fZ�)�?�E��:�cn�j�����V��Vҁ�^��Fq J�?��]���U�6m�fקH�!24���w�ف5NA�3���X�Q@����TU��aLӺ��`��&h5�*F|�����v�Wז��z��;�ߊS�G}6l\T��H;Mͳ�_�)@�'ʬAU���YN��u<W�uY*��v����w����I��p&Wn,WH���q`3K��ybP���;�aqD�ˠ-X�_�C���Q��%��x0mR�@�*��ֹCZ�: �vp�,����;�/���lu}ín,���b�`�i1N�.:rS,�{�)X�yP��+Һ� ���aA"�$ʤV�(L�M���U�@K(�G4���N�o�<(�:}ky��e��C��qѿ"�<�\��zj��S[���Gw�vij��;*b�f
?K۲,M��F(�*b`�:bd��I��@���iwq��-�޺�ɕ*��IVb�vZ�j��663M��퉒���ΔW�<��>G���J�Q@o��ᮗ뤻J���xŸOfq:j���|�[��5`�e&QX�]�M�X�DOf��m�T�/���ɮFؾ�-��f�ju��T'ElR;*��zGjn�ep�j�T�yfl������ ��A�8��7JY�g�>����Td���m&o� �}�wu��R�g��,�EA|Y��B�K0/���J�p��m;� +�Ē��@n����a!~�L�����4�J#�t�^�$�7��$V6�^Q�X�k�x`6N�����{.WH�P�N�LOY7�-�J�*�U�Nv+�<���V��4}�q76��)���O$��U���}��1!�!�|��Zݔװg����jR�7X'����tn;}�Qb�`}�k���|��Ί���bęųb1�3��\E�Ҭ�i]`]t7 �Jc��PH�p?>#;�	���W�iAxK�_w��9]!҈�3^�N��w��TT��0ɠ)+"���B'��Z��B�3����=��g@��@s�G���j�e@��͚��q���Ȝ>�x�/���p��˙��`Ǩ�M*]cE�6O�
�ʔYVde�J���O��O�JJ6�^ð¥�Ƞ�!ĝ��ނ�	�}ܸԸU��{8qRI#mnL&T3y����_�Sla��{\�'~t|��}�bW���{[M~w�A<2;�S�5II�T��{m)whv,ص 4۪l>^%`8�"砕���[&�]m
��P-��FB���W��e��Y��qY�фf�v������ٟ�L�M�\P�6�/k*���Țb�������'���� �~�10ˋy)�:�Ll�qX��`��@H�ekӪL ��vE�#�K*0��֖��'ha��t��_[��X��ͮ��ÔUӕ�F:°��?���k�r��l[�O(�|�b��Vb8Y¡�V)�����#`F��u���&%�>��O��n��0���dPE�g����7����b�U�:�q�W\��APTUVɢ!�f��,3��&K����M��p|�6>8�?<o9��w�yr�ƻ�8�ƍ5��ݺ�
1I�ݤ�a�r�U������KKق���m��F%u�VC����:�0[�o)��琺;�b�FH5I�b
�"y�$2.<}��n��$��;��x�q[���տrחW�J�J�$թ�x��ʇ8.&�ϝ��F1<Y�b��T7yQd`)
�� Q�
�0D�H*��n�f�a���i5��~�G�?^��/��΅�t��T
~�"�Iـ��U^h�tk�	��$�=X�������~2)&�y�Y{������h���a�/:� ���kZ��Ԯ=�$���Z^�Ҧp��
��&�0y���u�Ӗ͙�ꗡ8u������3���p��n�M^^��j,�ɓd�%�J.}Ϗ"�����ѹ�M�d�[���5k �    �-��JT�%���a�����w�7�o^��E�Ì^&��~�ļ��<�X�Uࣄwi
���&��0l�&�Iӵ�*�F�����b���Q�I����[�06��]d���y}�g����E��\�ʼ���5���P�!���GE����.�ٛT_o���G�[�0������'�rͭ�,7��s�j��6��;�O"��6��5o�N�G���xa>��r.,��$[A�*Ö�X�IZ��^�d���Crt?�O��|JΦmT���gך��nu��5����|81Mǌ��#�a����R�`d��r)�oub�Z&u�k����@5���?��b��Ǣӗ�O��dvbC�Rxa�Fq���(��0ȅ�_p��jUV��X�뛘F���2�0����2C{/)�����Tzv��}@�?�uG���{J�p>�cB�?|谧�������|����O�1��D��B-z�_������E
��Z9�1M��MZW���X�e!!l��-j7pS�#��	H	��At �~é]>0��W�&�\[�o���y�Y�T`�y�@���CuI�����\�ް�:�kU�`�H��҉.�R��*ϋa8e���/J�N5��Υ��Q���=�T�F!_�1-��Љ��+Q%`����/�	(�ʢ-�Up��?��o�����!����������{�H�Q��E�(	���� 2���l��a3����U	i5)0v�Ro�����2�?�\��2��?=�=yխn8,T�����u��? �1����T8P�mfL�6����b��xmC�S�.T�y�|�$�a�d��V׈DeM��J[�/��*�,RpG�L`Z!�p��S#T��|	fkAg �TW7������b��ԉ�eFr�F*
1
��\y#ڣ��:��hS�z��ݬ����b�;z������)��Z�㞒yW{��>��J����6m�0�2OJ?�Y��-������v���}��6�.6'����RTm/��*`�b�z5c!�w�2��b-±{3k+��樚��	K����Q:5z`r~E)�(e|!\�N��}�_�v��2y�F�����ݠ��WV����;��ʃ�ӑ���'�1D��iXcz�R�Rf�2��Uc�6��Xa�4Nٺ��������Р���������;t�U+ͮPB���v.��1BfXRڔ]+W4X�ʛ��U6�'�%����طx{���ӗZ�w�L=�E��0�C�>�ď�xy�6u���3u޺V$%ze���]��0JUu
XzL��8����|��wAv7��}���V�Q�l�Kd�K�`��� �G+'[6%h:g�Ȧ��T��V �@v�ޢc�wM:@X�5��cjZ�t�A�x����KK�b}� ^-KU�ez�H��:)��uV�i��}��3�tF�i8����zFn��1� � v]�KU�EZ��)�$�81���1��r@��@}���>u�ʹ�v����X�kĹ��FV�Wn������RWޝm`��'bL���\y��w���mܴ�l�,�|�'"W�ps,���/���]H 6�k�-�a[rd�Q�i�~p|k���U�l,E_�mh�X֌98m�[���u_���6dD�/��*� p��&�,:�O���k�y@`&1mC}&j�=�"�m� �q�n�/�D���"U�.�<h
�(ا�N�,���k������;�EN�|��<�oy]��2&�^Es�y��Ȇw�f������?��p�V��s6�-sL�Հ8J�_p���:�l�B�Tw}�3x|�s��L�lV���+��L�l�r�v��^�"ܵqxm^/�w��h�;]�垀f���aF}� �K%D��q��)9(�_�B� Ҟ����N4�Yw?���\S7@�:4�W�����:V��c?�W���-�kAȬ�R젵�\e a�C.�N՗�Cc�#L�Fk����C�+S1^YG�5z�u�uwɠ�0	EԐ��
0�l��l��
��Qg�I1����D��6mƆ�C"�g��AG�e�:�~y�F���]�#N5(W����Ft��s���;z��T/�f��e�����&U���,��4��k՚�(ځl�-���P+Y"qaV_����=ߞ�n�!u�.C�QW�)�m���/������m)��pZ	�;�.�P�e�ʡVx��9QuG^�c�g�5H��g�F�6_��,F��n�4�TQ(آ��3�`4U��L�̪bș��u�c���5nO}i������i>�����_��i��`���`��$�W9��,VG�h],�b)UY"]�R�mE�(��uf�����-9��iK������2ߢL$R��`u�Ս�K+�{�V�lwA�1c!=�g�ӨI����/�0������y�/��d��^��C��l�W���㟢���	�1}�m���s�J��De��t�M����)HYW���\��vp+�K�&�*mD���Q�+���VA��:v E��|~t��^�β��ӗ�V�_�l�yF2��m�В����4j��%��s�i+[V`e'
�;���I��u�j)j�kW�+��� G+���b�7�v}:�`�����/�D#�J�nL�R��hӺ����>`�.�=�Yuevc�}<��2B�E���wѧq�@��Gɱ�{*���U^�J+�7+���~1�4� c�f� ���jR�SB����-��>}�~oV����겮�VA��Y}�l���D�.r'As�f�����YXk�YX�a�۟s�D�:�9�ף,׎)֡Ө�ϗ`D��*�l$6o��L*T1��J�$�i��R�,�a��/O���#n�2�Ҁ��~�������	�"ȗHB�YFy.�V��e���M�����`1���~��q3\�)��&�����'���H_�-��3��J�	��vO//���3�V�c�j��03V�^���������+�})1���w��N�n�w.�V�T�m�����}��Lz݀ٙ�����,p�nO^�0}kV�6H|I�{�C�]%#3��y���+�����hܪE�Uit�$���� a�2G��#�R�!�^���w�_��)�����ɰ`7/��T�pT�1=ǁYX�,�0ۨ�c�q�Y_��͙[u�d����XL����:j��%�B8�E�J[0qu�j$�����ª�T���O�j���W�g�:6PU��|GO���r��N��ǳ�8�,[�AA�WNE%@��b�<))�&c.
Yj�{V���Z71�fk\Fng�M^�~���ʫ76n�5^�un�U��f��1��#�H�2v?�s!�F4��R�`�r�v[ j�dR
��֤V7�@Œ9��Gy봪��~��y���2<x���(�x��`�th�����볌�\ݫ��7�ѫ[�^�_�,ڦ���R����nZr�wQu��o���k��L<m��X'j4t��d� "��͠�Z�m�d������A��%eފ�n�<�E���CyE�qtV��ys��U�^9�ו��fjF�#C�k���E�*l�����E#�I�)�U��Ā���J]cM1l�BTv�U��Aq�q���)ɧ[�JF�a0�oO�ҭ4k�=�X�X��?7{	�@���V�������=��vE�(;�q�-d�����m�ʀHk5V��W�3�m�E���T�����Qaۘ�����D"3g�b@�[Ky��VW-낂Pyb`C$�MY�V�î��������q-��n��]QЂ/������H�4-�[0�^�g@�4�i[�*u��Qu�X�K	���Ii�$�/D?>ښ|{m�=�pƾ�]��{�=��E!
F�6	��mӦ2I˚��JL��$�Ҷr�nu[�%����i̻T��I�cE9 i"D��s��e��� ��6 |�RJd]'V���C�M6j���&�.BB�v���H����H�q�K����X��.��ⰵ��غ%W �H���l�����~@��'\���'�X0�|�ac� #�2^T�/�������R*�sLg�]�E����3�    ���b�
�b?c���Lؾͽ[�	;�Ow�����:�~��\][^m��N����l>�n�,�5,&�R�5�$���a����@���j?Kd��J���Sڻm�q\ׂ�ů(�X/Nu�=�o��"mB�!x�c�~��� ʬ���7!�I$umʒ(�}4t�,���=�	A`�>? �B�@�B���	���DH�DdF�Zs����4v�BӢY7� %�}�n7���x�oGX���\�{�Gd,н�R��!��bPJ�M&E���B�X)���y��m�t�k�8�`����꒍$�
��-	[�I3�$�Zd�����4��A�B�g��i��Ϥ�ԧ�ٕK,o��hP�x�eD���pUiOB#��n S,��Ļ�.��q8��G٨v�ۤe�Q\��6n~k:(=$��8��Ip�-���k-�.����7?O����]��Oz�������-���'����Z?��ے��&%���y��8���9�P�?�#ɴ�4�մ�Tv�v�ƶ���������x������I�je!.���;���`]"$+��y��1�4�K�
!�FXʑ0L4`�9S�����1,����ɿ���|���*Yx���m"��^*�/^do۠����3���]t�t�Ɨ�5��7�N;�H�M�{�$���I	>,�\�z��ɕ�V8��ȩ(�'z�%�,��L�pZuC.QX�����ى���r�6Պqy�G�ρ�Ld����i�O��q�#X�A��Y��`�3d��'�.⸠�J��/[�y/[���>�GI-�^�+��07����ĳKr��?�w'֒0�z����d_�S�
�%^���]o��-�6�8�`��#�d��N�2Aq�����[I]���R!mC�FaZ/h�\Иgz0��+�57�Ј�p}Z���<*��JE�ԏ7�Ka��n�z{��8&GR�yFC���ˬ� ��Y
4:��m,@��Þg<(Z�tRݣ��}>����"�2IG���2�W�E�:|�>�s/VmG=�4z��j�n�(C|C	$B�,.��;ٿ K�����Ifd�R6\�rri�O+nx�Y�<b_0���[�c���A>�Ycl+�E����W;�\7����2;�,�a/7O�
�����'Y���Ԋi�ӌ���b8��z�Mk�[�FӀz����|r(�W������y���q�C�5Q��0d�6��7��h�ь��Y��5*]D��NB�S��u�v{;K����`���ܙ�DE��I��NoM�p`�/^�7N��x��Qخ�}v��W��v� ����`N:x���1͘h�K��^A�'|iH�Q�@����p��qȨ�������y?�3�y\�4�݉��(m�!���~�ȭ6-��*@򔣘i4�4@���{�Y9��a�u|/�W���?]�y}ucmO��F�z~(�5����H֖XE4���V}��w���С�aP�5�򮓭ֵRM�<�z������������':ٮ1f���v�VW�.���&%�k��qz�*���J̠;��kse��O~��U�/�����~ e� �����Nҥ>�J ��9���'0��@�$d��$��B״Ah�w�(�O�4��g2���	������iT=���ձ߬��߼��vu��˸��7n/\�A�i[� ��-䇀���	���s+X[d�˓@mbH�����7CwN:�DTy���E�8���eu��2ܛi0�vXP]�b�ƽ����������щ~�ݝ#P*�,��:�&�ْV��E���C��~�>t4xù����0�[QLS�iX�4��]-C� @L�{�S@���v����u�xğ>��s�s��st�%5���~�߈:S�����`oR���zw�wrP��Qc�L3�?��GH+��pska'SϷ��rΫ{��$.�Q����&io��_dܽh���ϟ�y?Y��>s� ��&M}=���
�x�%k���x�PB��k���<1�u�Kꋃ���z��q '�od� 5 2{��2m��N˗�L�>�R��mv��\�(�E�:oU۵Q��iߢ�|��,��{�����)7�?����H�Բ�@�������[M���2PH,��=� u�0�@��i<PR9Hq�uib��kY)[�:dγ�E.��z�V�@�y�![ny��k�Y��9rAK^X��g���f^�ȼ�{�߃���4)l=q�.��˨w�Y���2�uG�ӗv'f�Z�Y�	N���m?��y�'Gq=K$�a��G����,����l�,_�7n�:���l!y?�Ez2QB�Y���v�8�[�q)��;��i`�3{�ڢ���%�ٱ���m�L:�'��{k<e�I� �������:��K�	�n�p$��6-Ӏ0�D�s��-�QF��8��Km�wQ��7���G)�����������7���?���7�`��jkO�h���ݮ�(C����N�a.�P�
a��������t9角ar	�L�����1L�����pѹ�5����`�'Y?���x>v�a'�i*]fV/Ű\�9��@� �����=��DA@�s4jV�G�q��C� 퍇��,�f��f�?��=N&��ʇ}C*�*V�-�\[��r0|5+�huqL�M��X�:����������>���!]۞��� �GHJ&��a�/^�<Z�8mg�k=�i�c7�[��#�bvZ�(����R��t�'#����77��}���6o�-�^_m7�,� ��'
 tl�՘�^h`��0϶`�1HI[Fxo��7OD!���ЙvRh8����xq/�i�{��~����[�ط�ŝ^�!/�^���m�_�L~� OP��e��	�Y
^�Чn*+��X���{�# ^w�?W��U�<Z][�6[�{İ=��p���U�'ѡW#����ʹ7.-� �j�@��'�1'���Dz@%�%6@�A��!�';���n �9Z��k�=q<+f�ĸjW9��0x�a��C���-�G|�z�dc�N4Hr��)�SX�Ȃ7����;Ϣ�_�(�!��#p�������g�/�mo-_��.�5�=S7�
L���A+Y�CV�!�\ׄ��U�e�x*|��L֮��9J��O�%>H�$�	��O�Zw����������z���z;,���Rc�6��G3�f�z/��	yƄ�9)�=�ԍH&�F�k�U�����u��'����$��xTKG������JH�{�tA�y�	�Y$U��i�E�8��D��#�ιXD��
w�I.����iΓ�q4	��)�,+(�.�$���6��L�?%&A'�.�qcu�$��+�,�������Z�^�n#�����T�����m^6ؗA��x[��|0�񭶪��*7e�f��������:�ȳAF~"E2�+�ױaz���g�S�m��!㕐6<F���M$�D�3�^�~7U�_&<��y�ǘR	�g����g��	�门h�FX�1/A�哄3!\�mE��/.�x�u�����9r�����:%�vː�E�QRs& v��w���e�O����������i��@��y��
���;�g��(�,"+ȼ5:.!(|�T�����������y�|�E���H����&�J�&M�����Аg��<��q�]Ǎ��Q�!�%j`���
.Q��u&�&]�g�u^�e����-�^��y��q�^49���O��ዞI��;�hX
M�k���/A0����,����#b��qr��^�(�W��J�v�l"������_[k8�G�փ�^Y��Em���b􀋄)#����H����.;����oP�y���X��V\�/���#����jQ����/�m����9d��S3z_�J��`<G��w�1�-Nr�l�� ���Y�(^�~��3l�/�N�Qk�Q/��:��)a!��:�V`׽lQ}�� ��|��?��i�~ks�f�Vf]:��L��ŠC]KY/\�<S�Q�EvQI��q��y
Y	�Mt�Gbc��hc�K6�)���h�	a�^��^�Չ�+�Yv�    #{�I�){-)�)���JKU^����4e�a�X�e,�hd�Ģ#2H81(��^ҫ��4�Ζ�*ꍄX�'��^k(��^�V|�Ч�U|.|s�w�Nf´Q�<�f��k��Aٓ����0�~������'�w)�H�������aK!���Jz�6�����#X���)ט�e�h��%�6�F�p�#���7�g�C�z}�J��8Z�S�(���p'���.��ì� ���	��8�G�VCl��k�ܥ�Я!�8`^�Q��n����3^j'�_�l*Q/3�GϰyV�$�	9m���DTj%�M�ڮ���9��
^������pe��,=pg��}ml[ԋ��蠾����-�8DDTS�ٚ&�`������r��S�-/^χ�8Gڛrk=��ɱ<�V`�%�y���*���ΰp�hA�F2�[�9�͢<���ߣ/�=y����lo�;��^_^�'��V�D�����R!��؅�l��}�tBq�iHBd��7��:�6��[�+���x���Z`��x�������(S���dh����-���*r��)s?�Rv�����s�O'�6mT��3]
/���B�$���[ۮ[ey=C{�bz�������^bei�r���p}:*ۆc<t�7ayRB �p,�Xr��5�0%�B]���!�?qC���g������P���I���!\5³(��E����̰*w����W��y{z������8�[�<����s��v�^�҃�S�˶A6�K�]���)�P�I�Z��Tl�?����dP���j��v=~W�G���ɧ)��V�ᢎ�E�ʇ�͇ǋ~F`^f�����N2X?�0��Ч�>˝Q~`�3�Y�߲8����r���2	
pg�h�+���H�6�Jk�h�rʈr���'M��{�<_�����r���4[�_���$���w��<E����f*�3pVk%:���8��\c-DSEIh�Ԟ�bK�o�ė�����^o���Y�+���{�-�3W����d��5���e+z@J&�>Z� ���ʜ�Δ��i��}N��V6p5{��&Dt��Ҕ��"o���G�L�K$�=�>+P����Y�mrd��n����ҧ��>������m�ti�]���)8�ë)*d���a:�w�|g��߅u&]���l����]�������čK��K|�節���˜�ϓ��:+)�B��=|e*5R����E�֗<3?�n����(�O�ڞgY˩�'Y��ʲ�,˜,�Ӧ�:���Ć$zI�e`�T�:K������4�{i�j͓����ϗHN��ϒW�W�i�&�,^�n�O7G��Ɏr�v)7�-����x�w�,���֔q��"`)Y ��$ E�A7�|'"�L`��(����܄���ˎQ8���eX�,����@��{˚�А��z]��PD�В��R�z��!ۣe�J�Um���N��tT�5�Hx����Y[n]ll���hH�m�)ayg�/�� ڡJ�9���C��h!�|g���-f�:�ez�� ;:����D}��5N�h �G�J����D��XP��|g�+��	ݫ����q`�/R�p;��6=k�W����,�q�a����V���r�:��VtLH�X@�~��R� �����eb�����B����^�Eث��KM�7VGYK��1��=l��P�v]�ƹWNJ��:�b�'NM�yMǬ�F6��"�s���e���w�,UL�ju|���7B�ד�la3Vd9���
ܖu�&3n��f?J=*�q��1���D<�E����ւŗ��͟�����1z���^��aj������0�!+d��m��u�0��.'�Urb��`�~us��%	�
�*�lAU\ᔬ2��L!�~M�1	�D���%�l�#�M2a�S�[6e5��������V�x��%�P��h� �)���^e�����y������*Xg1UR���&Z���lB��,����?{�g�_�jL�tz�[�P�&�v��4~���й&X�i��Wu���%����f�|.٩i56��D�vRr��x.�a���D��[m]@p��Z�m���7m`���\��٩�����DC����H�w��֓�IF5������\��=Co���OQ�3�}���_U]2C�\�������;�j]�d>o�:�hQ����abd�d�� %���Ƃ��{�%q��=�Rz���m��W�����H���:ߙ3��Q-�pKi�M��v^��-��^����$v�O�b��w���vWB8]��&�wɜ@�JIJ�}���k��{tг:�)p�3�LJ)͖���m��<�+��G	-"W���v��]����:W�fV��P.�����6r����Ҷ�lL��M����J�ډvi6��9�T��99Y��O�U ���Y_��H�ѽ��wl��}M�����u�av�B�Ѯ	m�:d��n�h^�%<�d���p�Ô��|�7W�\-�n�ݪ������I�]ǻ��/~;3)�}�v�\ABB�o,���c�Z�;�a������!��<d�d/��N�޹��h�~{�;���v����_�8�Ik��=�YU�(�ϝ�!Y��z̷;��vQi@���/����9��_�?>������2[��dy98ش����-XQ��\��y��C��b��A��Y�:�`O4Rh�rZO�aiK
g���dgh7/� �$f��s����e��Kt|3X>&�i��R�O�����?� ���"Z��R�� ]x�8��v_8y�IS8i� ������-ތ�[w+xP�n��(��ƮX����Jet5O�~$�[l����D��X�<jQV���O~���<S�٣��eI���\���ly5�啰�I���B�ٔ�K��j
��������щ3ޣT
e޸���3kF$�:Dx�z�5-�|l�uL�?K5�LP��7�y.v�U�,��N��]�[U�[�	��&�9�`�q̞�Ur �Sc�����[�/����$��e�ֽ��s�]��C2��d��: �4�k(Z����>��	'�� ���~���I�pI`�F�H��1-M���e��~�����1����ǩ����|in.��6��4 q���l�v��V��97������"6�*����r�4"�(�h�F�B!'hL�q��3�W�]�&��q�.��hX�.��[����^e?DJFf|��0�Ek$\]OhuNhgJ��%`�c >��G*X����P��g&����/�Hi^�K��j���?�E.���|M�|m���0�`���`��`�ѐ�7B�V�HM0��B<J�����~���7�mm�ˆA=��w¼�`]b]3y_��J "]gU��jۢ�2
xE&��Ʃ���/�]&���ipe[y�Ջz3�~�`�k�l�n��Fۛ[��=�k*�޵йk1Ob~M��L�7�P��Z�w�o�{_j8'��ǋW���lξ���� �}������W=�չS�Z��Zj9��,q]O�tN��Ϗ�7O5��g[��
������B��
0�o;���j,j$�j����}8F1�� �� ��I�f�~�tit=��9͚�0?|[f��E��n���X��O��[��o�O�1�ד�&?I��pӊI�=5X����=�$�y���]J�:�!��I�
eC�V9A-�<�	���GI���}�~�G�滽��<���'8p}uc��c������p����u��u�m���4J>�vk��w��]ϲtβ�Ώb]�9G7O�q	���3��DZNK"B�Oϗ�ib9�����7J�?'
G�do�ހ5����l��샲,��J*���yP��
H
ߪNȲ�;���s�s�#����k˝�Aj�`� }\5�}�a*���ˠ&�A�i��t%�
��/A��k�D�KȰdT v"�qV�*����
��u� ����i�郲'}K	����0��� o��^�SR���_��K���:�q�?�do�^!X�d�<6�L`�Δ b�0�,�~�M���qV�D�"$!�kHB<|a?��    �3�.+ݨ��|�}�I����O��M�ג�oO�d�7�#�
={�/�z���z�?` �����o`^B6h�� UH����h,���hl�L�*�v��� ���M�xiu���V8��YZٷ-��39̃/���gu���>O�~�u��E�|]��>x�M�)+!�:<%I�^O¿�x}�u+�V�<�Du�+YdҊ�{d.ZӼ" ]�R����4��3�}��r�P)�ò�kmQ��]�*��v�;�$�p�ɻ�+ۯ/�|y�˫G(����eగr*�?����K�U���畴F��N�r�X�D*H:IDÜ��x;Z��=y�ɸ�TQ��ț�kې���z=X0�+U��R��:��u��d�,�9�f�H�f��N�&Pɘ%T99�}�����ջ^��Qn��F����=�V!`~+�K�J�d�lG�SXwV�������K �C���D���2u>J���3SJ)�ؿԍ�b;0x��V�Wm�^��x\�x�j�A;&���]�5�cX�ke�M�����Pf������Hz���*f׽�j\9�B�]n�����v�O����-jb�$��d"D�
�_��T�!��-�� Y&HF��|�ʵq����Ļ�ϋ("S��?���U��tRA	$X4e>-�)���uɏ`��Ë4i"}Yqd;Q�MZ�X�m�b�_Ӑf"$g���D�ǻ>WIţ�J���6en*I�e^�A�H�,�,�F1����$�se��l�ʔ�S̤�p ��\?^�	�����켾qs��K8w6-�M�K"@Ԭ/5|�i�Y��7[�tA���5�2�s�t��֗����~ߧ�C)��X����
��]��]����*���e���0�j!W�p�![!XO0��s޴�.xP�V�խ��+'����>zk��_���ϰ�{�ߧ񊔼e��!��=ί��ZJˏ�����Vi���mF�.R��:+�fNsr����$��C���&{�_�	��=;�5�8�OS?�-�΋7dQ�Pg�4k/������+�E��HD��$,eFt�ȧ�<���k��Q���`24�c��P�M�WZu��VW�#X���Z_]Qpr�(�B�$��DOeKt� �}�� ;4�zW��!9��L�q��V����j�$?���̇|�;���5��X�q��6D�R���oj�/�
��$�����H��w���|q�zخ7�-�0:
'�.�K�Yؤ�z�v��y�V~ɘ}�)�{�n�(��8m���px9U���P��2xؒ��[�ΨNTk-z��;�<w|�d:	Y0�������=~I����#X�A9\�Zђ�8A]s'�َ5q�e,z#�P��̘�'P ��\������u�/lΎO���D޷�Io.+��P��-WXe�u��Q�a���6@qנ�*=i8��4��%�T(�x���׷Z��eA.f���L����r�ɞE��:�	�r/ۀ�m�*նE�"H�)�-�0�_|�,�ng�<@�N���U)6~e��o�ӛ��[99����]�v����Ф�FHF#�$�5�K�;�T����=���5Q��ߤiɏ�'��^o�r��:;��|���;�>.�*���d�r��%�9O:~����
bC�L	����A�*���ET�U�!�>�K�u��7j�����᦭�w5�#���a��
��ptDC:l8���k�v�3a-��g>L����:��`5쟓���������V��zU��\��@Xm;_�R�g6�@dO%T#�I� ���%�M?�>i��a�۸�ɿY�"�������6�^�8�U��_PC\�-H�3��X<ll��\�Fh!McZ�)-=��T�%;\�e�C�օ���(WP�q�Y[����h%øĪgv"�E�k�5���(��th���.]�i��UW�9����DcV��{�gT����I����ˏ�s �A��Hm!]v)q���N�� X�������|�b8���֭����ϴ����`��@m�^����,dk���tpl�"@/�fxĉ����N��Γ9Κ��s��mQ	=dk�:�!����&��RCZ	�@�o%��. f:�K��ĺL9b&��h^EbHRC��7[�������������H�T51)����=>����d����QV9��v+Zߴ��3g.��	��#E֮���A�!�@�֍B
3�]�b =qFI�k��
���a2��C�L6ab"�&��~kR��$C�y���VH��ؑ�p�q�2}�P�!�9*��"���՝��S���4��v�Fˊo����/\#�'?:� �n9<�G����b'"g�j�	\J�,q��fs�MTV��*7�xA׾^��G���X_Q�� �R<�Ё�����{��?Q5-U݅��{>L����/�P�y�င��랒������h7=�E$2�I��P��"*�;Ҹ��i�$:j��r��O�����li��Ԟ� %w�=R�0��Z}���H��D��C�J��j�R6R���*�#ػ��Օ_M�v�SF��-U��a�K��9���P�x��*��m��:8��)����f��2ݤT�c���wF����z����._�d�814�{a�2�ddhV>�k?ȍ1�H��,PC�tt�ޛ��sx#q� S��GY(E#2$|0��=�N�}���֫��kk�� j;���ے�
w�.˔l� $��W��e�x��(���@�|�ܵ�o/Q��ds��|�����G�����U�{�e�1g�W����b��h��OP��B�i�x^��ǹ������{�����䚖�J�O&j(j� �d?�X�L��Dt��i$,.`�~�u��/�� L)򝡥�(e�_*�p�ͳ[����,FvE�Is"T�1���#X�A���9�*��E����~��	O�,)�v?�_��X^	��=^�Ć�87�يZM��-�tңg�<���GP��X���[� �I0{=\���t��I����׳p|M�1�v
SGVaezC�z�����%A���K�mD�k S#�M���:��e�i�����%�G i�U�L�=���M���������sW�sי��}�L!սk�$��a�Q!��4�^����)��9Ml<�i�ۣձ=�bR,K�|2":
jִ�5���4��3U�{�:(��&�!��� �3ē��.T��bl2�=;!�W�볓�&���*vT:2�X�U�*k��z4�z3��{2F�|I��2i���FU�5hJ� =N�zJQ�$3M������k˗�v���D�b�����~]�H�=:O}���!�JH�8!M��/�Ml�f
%���=��e���rQ����rn�:Q�綧�϶�._��q7�h��l�ĳx�[����?Pх���+*�� :A[��x`�C���|{�YR�������"i[�D�{�,��wg���mWgG����ŸR��Q���Y�Y9�]ǅ�ڒ ���`�h�v�µ�#-o��@�'ز��ؤz=���r�E��\�U�X�-
�;��o)�Wy��`d�2dkK�uG!���Di���-�'�i�����V1뼭r�Ә�1U͢{�XVO�XN�f���{­�͎:D$p%YcHC�g�1Y[�T|���pfw�^@��x��i��K��Ԁ��4i׌�qe/~#3���$0jxt��N�{ BS�eӶZ��E�i�.���i�W�p��- �76 �69�;�n21yF����s=��i���PMI��ml�Nb+R2�Dvmw��hi!K?�_�sN�"�$��D�z�uS��t x���_>K��H9yv��=���Bi���Z�c��R�u`��
�x9��p�I���H��J5.2�7�Fx&!=���{��qB�xn���V�t���i�a�>���F������[X�,� ��U�4�]�.��I6��z�a�*�IR�{��z��Q�g�*�=��u��+�������Mw���Ղ��=� �k*u�0�8���.(��v�k���}��HJ���b�9���c�E�T�    �|���&?���L�-��N���vu#t�����#��,d�aS�	�g{����Yƈ�������lP���|c��M�A�d`�(��[��t*���־���GIE��Dv��x*E�K�� u.b��ĆB��
��� ��B  ��)��,j����Ы۾��"&*B� ��Wr?A�|��ڮ�7W���.xqk�m 8����&�Z2:m���{��V 
�#i���La�a<��l��	`R� �m=� S\��}���xo��S��ͭ�$ɖ��2�@����u�ҹ�s�,6��U��g���
�&�K��2� �kXݣ,�0�ĿL7�=�{?�AQ!уo:?G��;���7�n@�L��[E�z!��q;[�m��V[;O��%�y��CnwcP�JY�|
p���®�R�֙r�����&.�x6ޠ��,^Xoκ�s�k{����	=Q�����y�Z����4�I�]����-Mq�����sJ�]�@�zr��r��&RY�"�!a���l
������֯!KZ(�v���}����z���R�a��]P�5*[�W������5���	�(�=��%�t��}a i�8i�=����A�i��=��Q`T�?9M{C�a��)O�����ċ9hNR{)�d�!���aS��6��=U���V,F�ǟ��� 6J�F,�<~��KH��H�8[��,��˔K��6�7B���r1k������]Ks�1Y��K����BF�]�	�Ӯ�ݤܙ���o�L�}��z+�X�k���!^���X^&�aO7���R��:ɫ��(�C�*���2�7��Go��>��n���m�@��x�iX�~k0ʓ}Q6����>����]��n#\y�q4";���jh�	\�����}�m|n��{����L���a+��uI���Ӱ��ƍ�,�`��M#=�q��`L�b$>��A�e�"��O �=������ޜ��x�_C�n�W7�ײ�0��ϲc�{v�or�wD�׫[<W��i��h%m�Xp�+�D�%N4N
2���e�?�7�)�h{fp� �~69����W���Y9ż��y���������S�jp��JX�l�q����!�k�k�$[�JY ?m��%���m�+�~����1M��\�F��b`�px�U��cҟ�Y��(���e.6��^}]xY5m��KѮ���������2�W'���ӥ�y���]�#v������g�7OQ$�9�IEd��.�E
-E�S�D�u��1�4~�w���`�!�k�M''�,C���i�g\'���X�A��wJA��+��!!�aLٖA�km([1�O��w��s8��f��I�^�`!~5�m8]E�7��WV���R���j�z�E˱��j/�y���T��P�ZX?��00��[ȐqoB�1��SZ�_o��]�^��n�����f6���~-��WG,<#��d��t�H�c6\F���=�4Poa�L�w0�q�i�6Ig=L��������mn���[��n�d8�Ž'�K������Y�Z�t�{
����������gS�t���� �?�Ӱ��<�<-�a�Y��������7��Zђ���z?$W��:"�����^z�B2�* �4�A��5ћ2�_$�����u�g372�ȷcB/kV���u��sX��q�����8��&�NĖx;��_�Ds1�I��/��/�\S;t�{���}�����1�;z+��bO�5�UG<#�����J�o�^F��-ZZ�1#����!n�t��S���O/m���侂˃�ddĢ��@���K��LC՘���[���+�(:Æ�4����$s�<����tW^��˛���{c�~�9��`�|1��I����� +� Q�"C����a�Y�B��N���<q�M����EYf�q���f��J��������u��y$S6�ʿ���zjQo����)�?��H� ��8a��Ġ�|{���U�:8���_��t�����4X��?yg�]-��ئ�x��h��JhJ����YY_=�φ�|�$���1� aR �m��Ha`�6���R���(�%����<yqգ�\[v���(U2 �s�W2P,t��;4�j��g��<��T���u>P�0��x�ztd�8�a�.��.��~�8W�Cj���@�JӃ(.9ט�6�+�M�6O�8�@��oTD�P��� [L���[����	��3�_\Y��P�
�:���|1:M�^�������,� �$�
��xz�GQ41�ya�UZ���J�{�~�G�S��Q�FIr��veSy�,lw�ź ��y��I�>0j����p~K�W��dZF��j��"Q�G����B��%h�4���&� =�~ה|~�:�WW]�g��<�XJ`�k��W�י#�u.�9�i�jK8��8�Ⱦe:j�år����֋����7W�4$./���b�V���A����V>����$�8�&j=G�2����Ηvw�\�ꌋ+gk�k��p�����
5Nk]w<?�&�Ou�p<X`��+M9Ř�Q�q��"&��<?�#��\�U���.��Y}Ir�@��D�4-��kUu��zРd� J9d�p�Z�y�j�#g�V�[k�l!�w?��$���ǕԨ?-���m�8.�|��6��Y���M���s9D�ZC��?��z�����4�C�ԍr���� �j�H��2�TtE�ߦ\!�t�D��QȺۊ�]YP�"��Bׅ��#X�L#�|2���B#P2
��o0��a��*��N�㚳��q��EKr2�/�"�����,jV�3�}D/GwM�M,%:�,����%2خ̅a��-�� ��VG7N03��Nq�L?�[���̧���O���3%��^�wm�@�~��!�Ѥ���@�[kE9 �/O��;l�[�9��q5%��|�!V�.���%;���P������-�UEK�4=��ԏ����e�uH����?�\Q_9^>�=�N��+��KR�P����T��|�Δ��Oqm(�G������@^���.JΊ����RB���l �P�w��b�E���@SY͏`=��eS�L+ _��-G{���b?�riy��kbI����н�v��T \/���ɎD>/�]�I~~�����#X�a!�	Z�6+���UM����������B���Δ�2�%�x"K=��y���i�%�z��hUܹ����i��K�G��y���� ��m�
��T�=�!q v�.�����O��������y"�o;�K�t5�*ˬ��&g���w.���1�1�tD+��jw�1�9[�&z�=�40����n�W����#�{H��ŵ+ڪ�.ٖ=��	��𤍮��WpH�m"�UPnm����W�8������0E�S}������*^���'<yw���4���x|rk��=^Y��Wώ��v���) �<FC�؇Tex�7D厨K��G��f%V����MKP��\����jK<�B�̅�_b��)�ɐOg7�	��\�%�_�g������[�d@Ҿ|�لX��e�%�e^�A�+e��$� fM�
¢9vYu�<w�?_&b� 5�����iJ[w�rb"�EG�Q]q���=����C�%t���T�D������3a5�t���9�ԹKM�T�I��Nv z�`1:¿�H�S*��ǆ�Q�-�kz����D�x�Q�z�4k��蹈֒
�q厣B����<����wk!�5�Wq嗯�� J6L�O7�nx�2sg��j�,��R������{��8����LY!I��?����8�yR�@������I��B��d��40Qj�����맍8����$���Y�
��!MW\����Y��Jk!#��̸WC]�<h6<W�W�.���2>�ٖ���u�G�6R8��Jz]�����źNZ<�ߒ���{--.������������D�@�4�̺� Y  ��M��k��;
�=3�3peS%��-we)����l��@��^5#i���_��T<���{96~��ciJ���������x��Yi�[vIC&�c/�/R��W��5 Jvۍ�eE�`q(Pv��
#�ԥ��#x�3�,�y�_���a;Y�ܦ�6޹�FG�Dkfo*���?J�ձ�LRf_`c뼜�~.��և�s7�[��$��
Z�Т��+���75O���
	�D��G`&�Mq���+�U!�0�k�^pˑk�<�I��:"E� ~J�UaM]���Rn3���*l�"`K���p�Ã��M���B7�¾���$ڈgSm�D�omܦ�����v�)� ���9�\f���Ѣigh���Aiw��u��#�/�۔��[&��q���D�>�^���]\Ym�?[o�P����«���ή-��sᅬ��+4�J�!��C6
v��)��.wgz������9���lL���N7�En�����j��\gu�A�"�����Iؾ�\����=;��C�ۛ�~{%$.�Ѓ�xdLv��O��o KBf�Z�����"p�S6w�I��{�a[\	�8��ՄY��0C��Ԥ�gqk�U���+�͔��*�-��.�$bH�h)�Ʒ���GE|99�]�S�����g?c���X�M�K��­piL�e�6O�����(G���kx�������c�)=���tg}�*�8,B� �h|O&r6c������������}eL`���i�'3�OL����s�a��L$�w�-�e_��ח�o�}�$%%I��4	�*���&S'�}�>�.gz���D��t�+��8��Db����\w�y_|��=4�$�}.�n��߶M�<A��9F������Mw:�[k,���Ҭm4zc$�Ӽ��4��U����T⏖I��vf��+�Y�6+Q�nl����7ny����6�f�OsR5��iv�̵�|���)�?���>���^ጴ���!'�
�:"7��̚�9Ž�%%L��4g��\��{N|>�3%�����\PFl�ؖ��m�r�R'"-�;�2���4����_ǡ���ӈ����O�h�wmuʛ�5 �U�C��쒳2�MI��Q�4�^�L����K�f�$�D����߱�˥T4�����s����c������֞��эMB����0��#�cߚ�/�0Sr/d�`�!4*#�T��N@����>W����=x{��)�����pj)/_�Z����i�PCs�f�����u�1+y�z�D!�;��i�
�)�{h���SO��0�k$,r{�g[{r��Ϸ��if��B�Gq���Q[u�A�k�����b�� �}|�.�u�L���GW�Z\���U��'�$��z�"��E�o�X�˜&1h�����gQ����w�G8��oG3��$(��H$�<�U[Jr	�Se_�h�>���>�VV�����[����\����c�y��	<�z�ބM� �*	�C�WJк��ꒅ��,��$�W�d�tLlB�,�-$�S��
�6/��%ĳ*!>ק^^u(���FV�`c���1k��V*�~���a:"<h��`4!h?�Q�h���Od�;y�s����;�_J��^ǐ�/��Q�r|�u�B�嶴�R8���P�3�:�a�V%���z#��ds�s�L"rP���LM�� �Gh%����g�<g��	@���5�k�f0��VQ�#-�.y$�G,"�+���ϰ�z,�%P��O���._덅c�����_�J����V �%��M� �FX� dt,��o��j�J?��dt���������A�������r:K�F#�6����U`.����=�HŖ���|���Q�Z�l|�]$�+��C")@�0Y�}sk�^�W���W�O(�wb5�t�.g������"8gl@]�Z��jxk"8�2D���4G}����R�T�̪~���!M����F�L��f�>U�(��r�e���N፷����ccl������Z�}�n��g�Lp�j��[\]�u�k�>��Y�N{;����ȣ�l������#X�AvN��6I��q� ��q��3 gBk��凉H���d��b�8�\�w&)[��i310�M�Iy�k�_���3���cp�M      �      x��]�rGv}V}E��U�Y��D8�b�Č�<o�.��AR��-/6� A���_�����ꮪ�Uy���&��r��I��?��'�~���~��o�����?��������?��_���>��O����g�������O�������j�:Z��ޮN����׫w��&|�|}{u�z�����=������x��w��>|�|ϵ������bu���:X�Y߃oY�7_�r�Z���:|�;�|��e�.���'��뫋�����0|S���q�=YK�~mޗz!ć�~X�=���nb���"j�c�|�E��Y��DN����%����z�(c�.�L{��;����x������P�ʗ@Jo��q	��3��Kqf�,L-8�[O-
,�n��j�.AC���%C�f,�Fȸa�����2\�}?_�~��ȣ0��;-��6HBX�6�Pe8GA+ߞ�竗a�QS���N�N�,���CQ�(����AZ���G'E���������	�e��S��IQ��S[�^������t�;2q֭�I`��֒��*ǐB�Z��<Y	�	
��|����M���l�R����Ĭ�M���s̚PҐ�r3�lbS��m��&Jj�8T5�kge��]��0i���u�އ	���V�i�����wĥ�I��*Q3l�h�R"'��J>�~,q7R���S���*!ʥpF&��E0_��� �	6�?���t}��,�w��B���� U��z��¹8߿�<N��c�?�	F�M����[+-諏C�` P��4��������>L�-�k����f������1(�)jey�~&�X��QX`��ϙ�6Z�-�d@����}�(��Wy�[�۴�ġJ0��S��^�����UdF�f��	�W��P��Ѳ;��>�4 ����5����Kg�!z-$*���	��P%XCKa[0�}�V��4¼A3~矝p_�{jV�!�1���V�n^��A�㱾l���X�B$m�d�`"�I8������!�ۻ!CW��jI�8�$U(-���3��F�s�F�v�!�ƔiБf���퐴%ġJ2��p  u+�� ~��[��:���C>��%mp��Lc]',�ѐ�q������>"pԮΊ��7NB3�˴������v�wuRqMٽ��6f%L��M U��T���%������p{%�$F�?�������|�JK���P%�H��Ѧ!b6�N�e\�B�=+�+����c��9��¾7��p�4l�1���9>@����Gk�z�x����C;BS)�BA�G����`8��/�c�DG�b"�7w��F�!|�9y8q�sɥ(�_Ѓȩ�3P	
����U��~lS�)��5^��"j�%B��=��kh(��v�Aѐ�*�A9�x@�Q��8�k��G�z��Ɛ�39q(�T*V�I�dֿ�u7�)|����j]٣�%��G#�X�:��۰�������%ज�7�u�Z�X}t���n
�\N���ɲ-"��h��C�b@�x�ʿ����9�[�9�x�>����$pۥuﬔd�.��.>C�z'�oڌZV1 ��q8T) ѺnL��i�t`P6�>k��)�K�O�A�n�">��ܪ;�Ќ����b"��?��V���e�(�9��L	�j��{Y�I��U��LT-����l�ܗAC3��8�h��bޜ3�Ja�D�1l�>̑���܏WZ"^�h�C�f���a&��,��՛ �(�K�f�9�h��"����U��/�T��e���C�0G`aq.�sZ��X�X�P�9��\���l��?���9��'&V��z
�*Ͱ��(']3H�=��!i@WG���Z��P�9UF�|v�"e�BT���.pD�[
'ڨPM��Κxg9�Z��d^����6//�ޘ"�@��x�8�%UMY��m$�t����N�*�f�a�rm�wv��b�Nݷ�HQ	u��S �8`7L�3u�e����Q�r�(�U֚�0����c�-��w�^�>��@p^&�)А��5�w���S��W�)B��� �Pe&^	�t1���k'S�W8b]�=ܴ���+;�6�O�e�a�
�>,��p����
L��O'��?���Pef����F+����`�a6.����ÁB���dY/B\%��:�<֏N$��p�2�������
%��p�/�-7�2q�2Um�0�
���xA6b]������k�C���N2�%�,�V��j6�r��X��5}W��`a�aj�B��(��+��1�a�z]�&d$�b���������8�Rvs�Z��*��s?��Ά}�Pm��`}~A9���e�R�J�32af׈@h���3�B�Py G�.�p��_K4���'��_�C����p�G �����r�oYL������ Dɦ��N��71�*�_��%B��}���K^W"/:R�C�e�[;��B��^oq#���;l���]��e��"���l��4��h��z��@Wi���!�,'dak/�L�<�Îo����ì���;���!Q�#�F�V�#Z#D����t�nR�!��&����X�L��_U��h�*˩u��J|��BއNV]U���nU��4��B�L����=�l(r��r�l-��|>�	#@a�����Ѩ�*Ǳ�B(�]��%�����tɨjaRq^*���^�����η�q�D>��%�*q�r�0C��jU�v[ΰ'>�����C�
 sN0KvJ��c��F�d3c��,&0�܍��>(H8�������`?�j6!���*^��N�j-CG��P� $�R�C�>,@�<Y�8��G�w��-i?���C��4�*oD稏J��&1�`N���x�#�'̱�'M��\��v�o>�u��a<%mp�r�2N�]��ݟ�����x������t`�*�A:΀3j��Q�#��cǴ�P�P΋�AG^�2�M~�f�F��5��9	"��49B��4�á�s�.��%��L��lU�����!����r
(���ɏᆤr����Y'�
���������!u�Y�}W{ǯ��;�7�V���x��P�9���z�~N>0wv��RI��8TyN��uf�&#��⑁��"�k��N�Q4���j��ֲ|J�r�� �o�4����3�@ �M
�=A���Թ��6���l��Js@m�h8�Z�/�]��5!v+(�0����}�V_��N�\f�UUڮ��Y6�&���\��YCkc�N^������a�	J-����X*;�*-3kh��CU�	xx�&��Eܺ�`d�RG#cC1���p�D��{�֫���.�]��޺2M7/�����m�E*�[g��`�óE�ciR�8T5��Le�Q��8�	ڃ����2��� �R�X������rBCW��7:P�CU�0�N��w�U�A��[,���]��h�BeMm�3�$ �6�B�Q'�wXy^N@x����JQ�}/U�xB�u��ҫ�{Ry��-�?������X�1�\A-�0gK�uA9�\ʎ��x߄j���Y�Y�9�̒STY{'Rc�[Ds���$u$�bQd�"q>�B�k��e����Z�I[��jV?��M�Jez؞�
�iרgٞ����!�S�������bc��I��d�]y
y�Z2mNB `�����3�H�;���y��(����1�@bVQ��v\gڋ�l/�',���)T];�h�^ʀR��D� PS�LMF�̗�(�5�b�(oL�M(Y<.��S`��6�<E~�8�,�a�"W�д�q�,�K+�oF����Md��f���"Cә�!��U!��9��ɔ���+,�25	���A�6[q��TވA[Pݞ(�/�&ͥjZ.U'��B�z��Me@��yF�ڗy)YՌJ'2�,aw(����J��1���p�-x�i�69�g!ʶ����B3��Ā�0�F5]=����+؍W9r��*ۢ������;2a��9�(��h����V�|o�$��H�]ش��M�T��|k��݁���.lɌY%M(:�E�A� �, 	  �5VX�i�DEbKi �-҅Ve<YMҒ���̖��M*�}�0�5������w�l[����8�	�JSS����CGz�\�Fku�\���LtM7�7�jJ��e�0=Yp9�JzOg � ��7�~������\����M����4֧
̑>��׹Ws&)�K�DM��@)l��#��܈s�C��nQ�\"��B+�n]ǡ�(x�_����=*���Xhh��8r��h�N՜�#�ԇ ����V �mmQy���2�̖U�蛺1d9���l�[�5},�7#hc�yC��J'Y��#j�ҫ��!�hG��!��^6�2c+|��*�Ӝ�;�Kk����m(ی=��r��3�p �fed���(�w�NQ�7A/l�s���}�Ef�s'�t��&P�h�5�p ��`OD
l~ن��&bT�W��K�+�Up$CEN�N��:G�t5�ro�@E@�@B�k�Һ� �XWh�P���L�L�;j>��Uۓ�Q�L0ah��8��0Lxc�i
9�8ߣ��(\8�X����a�{�K� [��ˑ����ݹݣ,�K�{�!�C��˟Z�B�� yf`^!�v��;�{�Ë�P�av�JH�0I����X3�I�E�(+B'4"1�`QCZ��j�2�W�4���ċrY��?^�5������xm7e�����9�38�^�q��:p���T�:R*���i(X���e��2���L@Gj((�L;t�UU�&e�e�C�0�|�۲�:��>�.U�4�Z7*]�$�!I�"Jh޶uA\O<� L�F��Д�q�c�x�]��X�8��܅�����hj��8̓1�i3 ��*N�̽`XX@?��`���>����*+�o���+�[,�,�]OPh䕸g�9g
�yн���Z	E=���ǆ���c��+��о(د'T_�},ZI@���_�˔���r���8W0cNaC#L��]y��G��I0ߔ�_L#URԔ�ѧ��C0)�0.�Anӯ��	]�	W�|}Ma�p���_	���o�&���5V��D����H�,!�`9��OC*����H��H9��`�,ZFm��T�=l�������{Y�8�X�0_ٻ�%K��p��L��[�xЎǰ��2#m]0g��.�غ`�A����@�~���x�8>ai���I&�P%8����v5V���sܟ%� �"xW�+���;�,]�m��Ò×�C��A!3tO���錔�)��Z����/��B`��|�T ǽ
d��¥T���9רWE
�1E�<�6��"s(��ٺ�1Y�����c��~!�A�#�ge�x�V�F�T�֋܄g\t�
�1'
2ۊL?#�)��]��2�\��ޕ[w�׋��*3���U$1j$l���d]�a��:�`b́C�Z�u���lxa~��p��l��	6���r�����q�g���5T��2/�`��$��6�����	7��q,{)���m��m�4Bn�n[��MFFASej%������αY�>�ؘLt��>��M�p/�VQ�5�v"I����L�'0f������9f��=W��__�5�T�NX�h~9��2<#������#�-z-d��=���8r��T�,:����mc�����������\q��n�]2ܿ`<�]��?�"���A
�<���`/�j�Q���=��j~1��|�7z�y� ch�D�G_�m��y��	_-wF�;j������,,��Zkk�`o���/S�v̘��|%�t\aX�Z�ԯ4�-�5��׎HUn���k7/'���T��m�/��U��ϖ���K�=P~�)"��E�Ol
}�A:�@E���'���s(�B�K����Z��P��!�n�:�N��Cv� v+\qyk�\�2r� ��/X,q	�C���`��d�	Oa7#_%��)�\ )�-�|�n�k�2�HQ�YC
���_P�[�u!t⤡|�$���Z�O��7�P%8��ξ��B�3��;�ߚ�i3$�)
Dd�g,��!���e��R�8خ:m~�K�u�g��'w�j�Um�u���W˩��BJ���r�\Ҫ����Tz��Q�OU�TG@]/:H_�A �"Qn�����e�H,+��p����wo�G�~��U�W�y��	h�d=d��D�Go��~ܮR�*��D�b#�ۉq�&��b��밁�=�[�Z�+�CX\�6M���9ց��qGQU�����C0y�c&��Wdx�"��^`��2u�_�r <�Y�$�d0�%���ė��E�:I!�݊�|�J����Q���UU�Om�}      �   �   x���� C�3*&c$aC����)�?���c����9�	gw.���=�>�;��<�L6�^�Z�n�6cO�	�2s~ZAUh�o�7T��������|=-��r����6\O����	׳�z�|=g�����'���@'0      �   ~   x�}�1�0Eg��U��N�Cp�.�J3�+q}�NPA�=�'�O`�͋�����?�h�t�,c�#�r�L���	Bvg���wy��{�z�z�?�5���~�| ؎����*��T��o�S@�7r�8�      �   �  x���Mn�0���)�L̛៸3�/dۍQ�M��\����C��@{	�F)N,�N
 )=��ÑZ��������Of1�}���C����ag؛ܲxPJ�$�Ĳ Y悶\bF��,�l֛�Y�3xFU�P� n�
���$���d��1N'�����%�'��*g�z�A�þ�$7D�X	х�g�#�B�Ə�����+���d�G�j�?y�6K�>3H3-'^*�J�fy��z�2��/�t���%� ���&'m���%g�����C�Q�X$��ͭ|)���.�#��n�}7�Mw���ۚ���yHV�B.��H����[}����հ���	>�}hk�G��L��$�<��/<X���1c�"Y�ܥ�k�\�h� ��������h:�8���c��+ɾw����A      �   z   x�3�tt����0�{.츰����.6\�p��¾��FFƺƺF&
V&&V�z�f��x���8C�]�8/̿����=��M`3���hZMͭLM�,��1ME������ vh<�      �   ~   x���1C���b�!嵗�_G�\H���O�GϠz�������\�����N��BJA(DW�^�yM&H��F��?vq0�8��+m<�}e����<q</�����R��╨xe��̏!      �   �  x���ˮ�����k�g'�BA�\(^Q$=QAE����~��wr&'��;�~�F����ۘ�O��}��
2{Q�����힋R�%�5�� ��g�?#�a�:�����$1��g7���ϋ����O��pX��$3?e��N�:��ғ���A��1?�Y��:8���g�%�9n��Oh�	�Oj�h�0��P41;)��]�	5��>\�k^sA��l��^�G�^�I��Ǘ$VdN�=|;��Nsn�1gS����y��J�x��|O��f{)�G��әZ:��|DE� �ӧ��
+ܝG�N�]��io�5�|ӓ�m\(a�PQ�[�a�td���
�����ϙ������>�����?��������2&uH9���� �9 �7��/�]��×�ޠP'|� ����"�җ�n�9����a/�a@P�aS_6��HQ2	���JD;NI�4A>�IDWT	 �y�A�+ $��G�?�T�"G ��� ��	я������t#��g����X}o��1;�����8?)gY��@��0���as��)1mS�xv�5O��1�#��_�!|%y�X��%�8�B���&i�z®;�f����~�_d���;��lp�:���)J��t.��s�O\w	�:)r�w.�9�]�����E_[�[4'��JS�ɑ����d*�o[�F�#]ҷ�o���$��)8����W���#)����u����9mŦ���i^P��q���ȋ�:��5	4
��s�!T�j�b��O /�B�e�e�}����FT3`o�me�MӾ�}��㦚Ak��RM��؎ǫ�$_<��|��mD��C�TI,����N\�t��묹�2�C���>��6��>���9���0����=Om嬗�нu���~Bz�X���u\AE����{�D�Gc��O��u�l+���	F��l1Qcn�����TIE��=�9
��&�PA%�EҌ���=lgП�VC�=��x�%4��@�;k1E����
����Jb���q�~�(�I�p0&������b�cox0��K��0�=�:�zWbvNB%��
�8��W�"S�J��Y����mj��k�,�M}K�FӍ��:$X):�h�6�
'�J��
	��D��H���;R�)�ț�:3��8�mqd޺�
��a6�ĺ?���Lk�6�r1��d��,fT:�	���%�X�XsF����E��t�HP�_�疵���S�N�Pn�w!;�4Y��@�J�����X�H��^$S�����b�~�<���*�8_��}��謲|`��'vc�;+���]Z�Q�G<*����(����ᢌё֗��I�A81;R�t�Z��'�Y��R���C'5rUsA�-\���!�mUG*a�$Q�aL�F��r/�&�h�)��#/(A����h�@�=��a�=�x�x>ϕ��\6v������)<9L�
�Ub�Tz��֒�0����wͥe5��<�\';V��b�|���Z��Z���h�JqA�v"��1���*�0�7�c23�,Kf�Y;���0��ի�'
/Ms�2;�E��q2ufW�[е���瀯��a��Ȫ�X��X�%��0�����H8_��Z�k�4�&7A�}k��{I�\�]���Hf󆦼��-��x��2̳�bĀ��t�m���2�qMߠ��"f�c��l����BM��\�k��43����:�����S�(��^E8��IW%��r,��AD؎     