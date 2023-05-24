PGDMP     (                     {            nest_project_db    15.2    15.2 s    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public          postgres    false    238            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    237            �            1259    42233    genre    TABLE     �   CREATE TABLE public.genre (
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
       public          postgres    false    240            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    239            �            1259    41115    google-users    TABLE     N  CREATE TABLE public."google-users" (
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
       public         heap    postgres    false            �            1259    42195    movies    TABLE     �  CREATE TABLE public.movies (
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
       public         heap    postgres    false            �            1259    42194    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    236            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    235            �            1259    42117    person    TABLE     �  CREATE TABLE public.person (
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
       public          postgres    false    237    238    238            �           2604    42236    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    41118    google-users id    DEFAULT     v   ALTER TABLE ONLY public."google-users" ALTER COLUMN id SET DEFAULT nextval('public."google-users_id_seq"'::regclass);
 @   ALTER TABLE public."google-users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    25211 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    33001 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    42198 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    42120 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    25246    post_groups id    DEFAULT     p   ALTER TABLE ONLY public.post_groups ALTER COLUMN id SET DEFAULT nextval('public.post_groups_id_seq'::regclass);
 =   ALTER TABLE public.post_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41793    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    32954    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16688    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16699    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16676    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    42224    country 
   TABLE DATA           R   COPY public.country (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   
�       �          0    42233    genre 
   TABLE DATA           P   COPY public.genre (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   U�       �          0    41115    google-users 
   TABLE DATA           q   COPY public."google-users" (id, email, "displayName", banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �       �          0    25208    groups 
   TABLE DATA           G   COPY public.groups (id, keyword, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   +�       �          0    32998    images 
   TABLE DATA           \   COPY public.images (id, url, "tableName", "recordId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   ɍ       �          0    42149    movie_person 
   TABLE DATA           ;   COPY public.movie_person (movie_id, person_id) FROM stdin;
    public          postgres    false    234   �       �          0    42195    movies 
   TABLE DATA           �   COPY public.movies (id, avatars, promo, name, original_name, rating, count_rating, "ageLimit", years, durations, country_id, genre_id, description, "description_EN", director_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   !�       �          0    42117    person 
   TABLE DATA           �   COPY public.person (id, avatar, full_name, "full_name_EN", description, "description_EN", "DOB", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   �@      �          0    25243    post_groups 
   TABLE DATA           >   COPY public.post_groups (id, "groupId", "postId") FROM stdin;
    public          postgres    false    223   "Z      �          0    41790    posts 
   TABLE DATA           {   COPY public.posts (id, "uniqueName", title, content, "userId", "movieId", "imageId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   �Z      �          0    32951    profiles 
   TABLE DATA           w   COPY public.profiles (id, "firstName", "lastName", age, "phoneNumber", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   Q[      �          0    16685    roles 
   TABLE DATA           Q   COPY public.roles (id, value, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ]      �          0    16696 
   user_roles 
   TABLE DATA           <   COPY public.user_roles (id, "roleId", "userId") FROM stdin;
    public          postgres    false    219   �]      �          0    16673    users 
   TABLE DATA           c   COPY public.users (id, email, password, banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   #^      �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 22, true);
          public          postgres    false    237            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 21, true);
          public          postgres    false    239            �           0    0    google-users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."google-users_id_seq"', 2, true);
          public          postgres    false    228            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 9, true);
          public          postgres    false    220            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 20, true);
          public          postgres    false    226            �           0    0    movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_id_seq', 505, true);
          public          postgres    false    235            �           0    0    person_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.person_id_seq', 200, true);
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
       public            postgres    false    238            �           2606    42240    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    240            �           2606    41125 #   google-users google-users_email_key 
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
       public            postgres    false    234    234            �           2606    42202    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    236            �           2606    42124    person person_pkey 
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
       public          postgres    false    234    3555    233            �           2606    42213    movies movies_director_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_director_id_fkey;
       public          postgres    false    233    236    3555            �           2606    25251 $   post_groups post_groups_groupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_fkey";
       public          postgres    false    223    3533    221            �           2606    41810    posts posts_imageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES public.images(id) ON UPDATE CASCADE;
 D   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_imageId_fkey";
       public          postgres    false    3543    231    227            �           2606    41800    posts posts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_userId_fkey";
       public          postgres    false    231    3521    215            �           2606    32961    profiles profiles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_fkey";
       public          postgres    false    3521    225    215            �           2606    16704 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    3523    217    219            �           2606    16709 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    219    3521    215            �   ;  x���MkQ������K�̝�d�]���ࢱqsi�:$���	���W��P!~,���5b[��3��s�DE��B�����x��	�U>̇0͏�F��K�P���pI��V�h%����o��k$�|�8��z�9߭r�B�����>�������^�y�%YE>�]��	u��t+fn(f%
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
+��%PtI7��Q7f�H�G��5{f���H�{pZeh��gM�ǐ�3�R��e,����hP ��@�C��Uh;�t�~Ḻ�S�7�,�27m��d�%���;��M�ﶯ�6$�Q\d�ANܿ���Fm�>�2��r�����Nه�8����/���L�m�h��U� %E!I_��k���J���ª;<�����4�nwm;!Mgv����7��%�쐪g3�ru�����5�&���t��!v)V�����y�\S�Ne�&�Jڕ�O��=�p��{�;~:u��R�����MyXٯI4~��w>�[=h��>H����?�v�ĝǕ"C��z_K�:���n�u�i��N]&!q��2'��4���3���Y	��a�fY ��D���d]Ct�;�i�J����C�QC�U��'���ɺe�����%i�*��%e���gx�����q֗�/)�tI��������y����}�      �      x���r]Ǖ&���)��rU47�3w�ܙ����ŒU%����1r�H�@@} �V��ŲT#Y4eM��,�����A�qc�� x�z�y�Y��}OB8��z�+,<g�e��������l\�y�\�\�뗗�]�<�ye}cm�5��jmu�Y�X��^�W��J�4�e�Kk����Ȳ�I]�.��;׮)�r�����_M>���䓓[Ǉ��w�����,&:�'BNd*3����N��;9����;�G�ۻ'���O7O>��Ǜ�w��i�N�oO�Wv����ª|z����x�x��������|�����|��}�|0=�!|�����ӓ{�K������߁�N��zr��������Wx����S||�]�0����]x�MZ�����xkz�!|�]����}z�}^��x~����Vr�/�~c�x�䣓�u�WNnÏ�x����	�����'�����_�/�ѫn�ܻ_/���c،��Q��s����y�o�����	;����;�r>��ɏ�L��p���-��`������)��8��'ӓ������?�m�<�߿7�N?I��_���!/�\���8�ђ��^����Jy��{��Ʉ���J�D�����j=��~
۴�;{�8yy檷��D_��Ur"4_Z+����Y�||�o	~��^5��M��=��{|�t���M��~�1�ڏ࿻���|�&��H���R��u�-��m|�p)��ݢ���7��y�.?
���-<V<l89��Kx%�z�τE��;�U�o�n�>�_�OpG���:�O������[������ԇ�v��[ݽ&��;��;IBۯ��O��/��+~
����~�/�7�N�=� �n������f�2Z>]�?����)�����%aA���wh!������×��}O��;����T�]�o��m|u�?�Hx�KS:�=��R<y��t���e8�dJ����Q��z@R����u�1.^�'Sz����/�6��c\��㡮�7��[?�����ٙ�=��x�UX3_*��
,=Z��+�Ƃ̊:�]��YcҲ�*u��[�幝/�� 5���XV܏�7�xb.����	sQa�t.�����ņ>�����-	\�Kx��s�a�W�G��O����%Ay&��!5������)�8�Їlt���Uo�F�+�%�om�gG��I&��n^�_8
J�>~�$mRQ|��s\eӣ%u����k�J�+!�"k�����m���7��$xLd=7ь�4L^u+���Fscm��$�l'Bݡ�Tv��N u|�MG�E�{�Xamѵ��0T�(Q?�-G��E3�Gv*ZY�`��b�5ء;r^����]� ^����o�_X���!� {�/�����G�PxJ&���!ihԴ��>!EC�A�]T��8>���S��x�`C� ��A���+$VF�Z�_��������:����'��OZs���1�E��/��yH��!tu����C�\I���n㵸�:}�c����;V����/����= �Ķq�E�0��K>Z��	��+�-d��Z���JcS�e�ֲ�e��lE���H��n�YM��_�X+��Q��>>���_~�}{�٢��v�U `:�	X�[�.	M�t�vz�7��6] >F:X:�;|��/�x����?@I�<��V���n��֟�� ��e�c��h�oÁ�r��|�-�'�~4���� Zko�I���G�9��^�I�I���n�O��w�o8][�`}	���(�������S��-�4���l���~���|ʆ�o���p���Dp�g�����} <�;�"O.����!o�������ۧdN���@�`1D�l�vY���-~����.M{�8���=���C?����:���1�c�2����Ľ�6�l��z��{n�n~py�ٸr��H�^^]{gmy��d�9�8�Un�� kJ��Dc%�<�u-���m�W�(��J! R3��� &��n�ݬ��r�Yc&�x�D �����S=��Pd��-R�x��� �;m��l�;� �� =��cԔ�;���Ǉ�ǿ'\���)_��s�o�~�XE�继P6A����o: !!�̗�a���C�ئP C{��[tՎX} �%��O�������{�0óo�?�~�Wy_��	�Q������ߤw�����Ψ�M�u���>2p�r{������2��zw��%�ۥ�ˣ
��v~�����' �p΁�.�	� ��s�"���W���n��|�L���B��[�JsEg�,��H�(U��W�,�uZ(��$��-PV�x{���h�����50�+͍f�~��Q ��:y�bRL@on�k�!a|�y+wI��e�9�ۓ��[�"|E72h.�n>FpD.;;&����������U�)��א��|ߛ��}����q�I��zy����9�����"$��:Qd� �6}�œ`���>��E�	GA(��O~ߧ(�(���#l����¥]&��?�yJ%���Qt���=J��[����K=.g-�pUө�3��l��+�O?a�;���e�׷Gr���hy2/&���-��|fO9�D�󔟱�c3���y����.�4��nlt��ߝ'Sҩ��U���7��ۇ���~6���g"�{��m���G�����e�&_���[��Itnѧ�7�����R��ܢ�&��C�G{����}
��#�e҈zqͅ���E`A^�qU�.�զi�jQ6ڤ.�-{��A�=�Ϳ�?�'��ö����J;]k��s++ӫ��٘�I�>0a�ii��P�a���a�r���m��O�򇼵�.Hy��$���a�2-w92H���0�.�A�[�>��O@�'�W�{��D�#W���}����m���k66���
��$9���݄LW���i�m�A�ek���O}tz��b1�z6Vp:&�ë!'<8��������ה���<��?���רO8bA����>9�pPc��G����&�.�;(V�'��0Ԃ�A���"$�
�/0��.K�J���ʝ<&��^L�7�%��6"h9���_�]�b�QDmy�p��$���n�=���	����Eht���d�c�����N���r�?��0=t�h�-|{v��(|�~���q����#W��pt�x��	�cQ9��~��x$�d�:�}'8�_э��P��E$E�|&O��a	_���zE��t��MF���_���F8���57�@|�;�R,O�-���d�;_���l������;�i�}O������CΞ�����֭�(vn	ݸ=
lv�~}�����i��Ž��sF_y 1@q&xxx����1�{�Cp�	�� ��d�I�푞����x���&��I�(�K�Q��;p�����b2C����3���ߩ+�L��TB渋R�:CX��ّ��g���e��*f\�)z�d��L�J���yaD�d� ��*�Q�����*%��v���iG�k��O&ߛ���hv�t���2XZ�yS��u�\��RXw=�f��P���Gx1���ʓ���������d>�յ��r�6��T7g��M;�<i����~2Hs�gl��OJvN���ݎ�Doiz��O���+=����Nާ_>�J-�?��s�wF_���Ҋ��=/\�O>/MRu�OǄ\
�n�s������IȎ@J�@�@9��������?�e��׶\=�E�>���(����9@�������~���v��������~W(���Y8�.$�K.�tpsF��ă���vpO��>��p|��?� Tw����!��#���ޙ����}� ��ܚ�;�{����[�0�Yb�y!~�����I(�L�?��$�*2�ȹ��!����y�Q2��C!�S�lܭa��(N���3D^~q��@�5_qfq����D��3S�
��+�MS��6QY��S�IiK��ƙ&kK]ف3s��]�s9�d��h�H0Ð�~
�8i    �q+pH���#��37	��Gc��Y'&Z�~�木h��6x�(pGg�GB�3�}ḥ�����S�
��I�]�.;�����:��=b��E��;߆�ug9�P#���9!�r�+ �bf��R�?#�F�#x�-Nj��5%��E���c]>�Ǉ���U�K����<�e�yR��D �G���dx�C�z��7,�m?^z�;Z��y���t��E`D*�C�Q��EO�eR�%|�m��,����!f��o��h�/���6t�EJ^:����G�SL���TȉOt���� �}t�F� 5�Z�R�[�B�����ȇ��΁���x��c˳Q|ʅ<N�:2y8�M\�������xz	��{%F>�s8�������ǽ��>��Kݥڡ,R�b�4ｄ`ɭ�8?�����8�K�x'D9�� ���G�yk\��>��8�u`�x?P�;�V�K��c�,����|=�1�w�_r@��i $A���X�]�A� ȋ����[-�K��,@��X��$��-D���2� ��=�.��� K�qV9� ���&��}�GA�]��������*��vm��Z4���x�ș�#�P�]}��F�&��x���s�����Dx��]��r�������䘢���R��~��v4�l���ǌ�p��:;��1%?�	om���X��x�MR���;�ä1��}��'>b�⑇�;>�4̥s*��6sz�3~
i�n�����>��A�-���c����H��),�a��"���.��I-�#�*qҀ[��mQ�-�N���1g[z���ez8	��B�W���_w�oO�j���;�k�{YL�<c��&BM��>���2E�M�L�|r�C:�'D~��*b���׭�"^�8�.��.����M�5����q\$�W��o���8A5��e����������P^�'�?�Wdf�c���p	�6�{tU8����ŧ�<�CG��s$�������)��S��8��}ڴK?�� 2����b��S �cW��_�E�z��x����G>�L@� �G�0��sdmǑ�SA�Aƞ� ���^_�o���>��L|�B����Ƿ��B�YfD��[Ԑ��G&X��8�-	���k0m6�b\i�6��B%
D<)]S%)</l�LV����tA���U��k.��OL.T��_F�(��0����&'��(�.M���Jj��	n�'7�Xǧ�ݡ۝|ӕ�"�A����J�]�F�N�-���-&{��~�_�d�pw�������H3�F!�X�nr��Cr�z���j���3N�y�={�o3��<����w���R��O���X�c��� l�^�;�'�q��=����T*}燘&�D�� �}r�Q�לo����=Q��\������ȧ0k�a��E�g���#I��= ��t<�C/~�K_~!���E�J���D90���6��L�*Ϛ����l���j�c�ȬiV�o.�4dK
�Dc
���^�$����g1��1����&�b���>{��ucR� Gt��}���8'�����r�k\o^B k��y� ������
��q��	�|�德{BY�Z�ݩ7�lw��<�A4s�!_��F�6��|�j� ڭ  �{<&iP�tE=�te|◄P�;K�A��
���>�=�pAI!1� �v���>�K��?��k�.�H"���s$�hI.���4ժ���4U�)��IQF��5u� -A���i{��y�]z��OD�[Hdlf���
�y��$���(��07�؀y�)��"�G�dǿB����1	>�-��𤴞���y��-E����S��q:�`;���7�C�{�[���K���[�e�3"1�a��1��A�Ɠ�R�^�O�9�7�Ч�+ �@&m�R!m�Q`�q]\���o(t/k���.�xL�aD��So�渫���Xз���Ee��/��.��S�H����q*��췟�����7��/�n��������k��1����J��I�mK���=�H
#R���IT]4�hJ���M�fEպ��Lz�)^�s�2*�8�S��Q�߉A�	��|�f�h��-��(٪��c��tE�d>V�NL�:.3����l� l�<P(��=��kkk�,;����ؠ�4&^��e1!*9M��ޠ|gk:��3-�9o��t�w�nw����a��Хd�jZ��$c��:����V�wճ�C��H��b8�Ci�y��_�^ѓ9�O�?�*��7�����=ӝ����R��N��(����y*G��:$ULt������pR�?�%�	�ڽ2b�}
nrr�r1�W;���;`��8$:'GA�RU�=�u���ǳ�����X�������ؑ'���xL��
G#����Sx��C�S�nw)a�Kf�>9��y�%��R����}��Yu|��}_��s���?���O�C�L�7��)�QB(#����i�]*A�W
+���~o�ށ�á�Ǿ8����N��+l(�@t��y����O�sb�;����V9�A�һ���d�e�{ 1o�>q�>%��B���{ĥ<#�����j�tu5�C�a��k�0���(*���Y�+F���B�&��6�<�aðP=A�깢i�����3�&�ӭ)�q�O0|����Q�8���f[�=�'���k,2�a��&��jN���`g�X~���8�?���o{���k{w-Tlݝ���e��̐1��=��[���նO��u�4r�(�z�*�PN����T2t�k'
{�t�V.�a0Bb�w��'�|����e���`��e9}q�����(|$��	����ۑ�@"z���G{��@�뷩sH������>?��	G���^>���xN�pN|1J{�O�W�0M�։v��QW�uF�_��rV�J�������aٚ��n4ȩ�����j�>��!rl������#��E�&�T��}�`$��n�!�T�r�#����.��t�;��X����%j�m6*�Q��R{ֹp��^_�H�t*��%/���\s��}L��)䮶ճ�B?��x��)�]��Lv��)�����o*��spAB>�M��~�����I`����s��D��P̬�>�V�<�8!�)����;p G�{�]�&�z�ᴇ>��Om-�C���0q���#H^ �Pu��F��1���K]!�I��d#�<
�nQ��W��nSI/�pZdwz|���7F�LrG��j~_��a~���p{�sC����ȩ�A_��>���3K���ۃ�=<����f"��g&D
l�Z-��u�i���k��e��F9�(e�,r�ԩl�52Z�>��{�_��`�)>`g���>����'pX9�"�<�����;�3�Ѭ�R۸�L_v��l��S�,�|s�ބg/�����w7[�&J�n�R٠�;��qGKj�Tw]�d�Ád��7/��#��<EA>������42�w9��� ��<�>�Szɗ$�m�fS�5;��P�L�L|�j�u�>$�R�zp=YwEo�`����(�w���R�%��N
S��q6I�ϟ���8��������ɞ|�����s�a y���g;n��;(����Dو�Ĺ>�hI.H�d_�Ƶ(Q���D�L$�66�ڦj�u��a��S^��xw����$����g��m��4�ͷ���P5�M��Fu`O�`��qW�
w?�hO���ц��o���F�p|d3E��.�~�����k��_#�'��}q�� s��0�2�L�G���5��[�{�y��I*iL�8
��A4�#��Gx�f])��}o��]{�u�;����Y��#��>u�m`�05�>y��.�(��
;|t�63�)K�L!	�8���Y����S��`|י��ý�"��Z�0��7��z]�.!�ήͽI�AsmrA�f��y�~���Ҧ���1�#Ϫ�l�����Sau���2��Ax�.��]���]`�����    H�T�(~Ŭx����]f��NM���A��J4^�&���Vh�B�pϺ�?���./�����c�v����^�Ʋog$�)c-�c����,�r&.U����h�����Vymu�K��I����$d����[[�����#D�*6��M��f����Y��hfSx=� W�fU3kf�X�^�ex9v�RPع<���!s<��`��k`YR��P����{�v�O��g��DR��6�r���'^v�8J;8~���y��ϐ _z߻[�>���>w�"�+M��= PLN�tW�P4b,V����b?����s�e.�h뿮$aP�so���=�r]&@�Sh���mV>O�ȧ�;����@����Υ���i|h�.yg�x�[[����H/�3�72!���ώ�ԃt�=׺jJ�X�����톐��\V�?�k��5��I�@i�	刮o���l��DMȠ�<�R��1����1��O���B����8�W�=���wBC�m��;��Zr������e�%_��tv�S�� cR����A}AY�}Aȓ�Nn`=�j,��C���x�3�j�f3ޟ4V��RVI��m���J��.��M[����^-��gx�%�d�|�����P��,5�����*g���2��v��GKj����7��eѪ,��(�VM�lY%�tƸ:����_�ڗ�Q/�۬^kf�ⲝ������tV��ل�_��E�,�hI-��i��k��D��ITe���*M�J�\�Ui�jL�~B�I�4/��V9���N^v������v����Ϟ{i��k��Rs�w������=�������q%:l��쁴I)T���	,��Mk��Л���e9�O��B�[1L:����w��{�1p5��}z�s�W�]�7(�5�~�7B_���C���7�tܰA	i����%x�S��GHAG/�q�p]�����]:�l��M8����%�����������vN�QG���z>��L5&[�^����Gb�������?���ɰb�t�r����.r1��Wg�i�"�l"�"MJ�-M��E�����J�������!%y����ӗWn�Ŀ�r�S>3;�_��������}�7_e��o*E�����س����\Ǽ�ך*�X�'�"m�������7¨��ɫk�Y��1}��w��[���:u\6d���x�;' 4�@\�����je����_(�;��;7w}��=��(��̡��b��%�k��B���̠/�I����'���h�]I�.wUfjœ�>��7�u
u7��"E'6��l�$�*��JU��:m�+\�R��Xg��+鲦V(3�e�������0v�.�L����\�@���,Һ��W�>����U�3����/n'������CfQ�zK=:���O}�=���O��sȅ1���f�D�0�����Τc�Q�/��㶿�����Q��#�9�()ǫ�-�-�(�Au�^�u>8�l���(�.�~�f��^,��)0J�(��"O�u?4�DadO-���8��-��U�,�4����&O�)T��N�nR�њ�=�,8�	W|����6e�
Ux��*  �k"��m<�I���B~���Lc���hۤΕ���2q���iS�Ѕ���!��_q�
|�����)����l�=pN�����O�?��?��&�l��+d�ђ\́�Ye�5e�ض�*����4m��u�	5h/��PP�<N
��
��b���~ր�K�a�k�15~�%4�-�s��E*��j8�Ȓ�u������`#W�7�v��K���?�z�&z___�o'G5�Ҿ�>�id��E�j%���.���ZYg@�kPl�KJ%�$/�
�@%�D/0��	�ǡ���_<'!V�����vy�d}��S�z�p��{A�v���ϸ�4��GK�B�8��g���:o	xN�l�&����p���－��E��J�-B���=����=?�v�5.��S���Y����A�U�A�SY'��l%�2nH�� ־7���[]�x֋2,��BȪau{�����\Rn��#�c.B�Ffi[U�0��,�s�E!�,s���8=��u��vc�q�	�Y�~7��ٲ����4^:A����_�)[0�-��(aMu��Ω��5+��� 4��o���܍fR\6�B��`�P}�0R
w�_F7`eZ�%Ye��8����4i�lr!3e�~E
��.~���~T�e6L��|%����H��~��-���2�Ե�6uc(F��`�.MYg�S:\�&�����Jp)���_|�O��Q�ď��;-�ia�S���m�(�`A��P��kP)����r?�o�s��&߹���������ú���j��岐��pɦQ�?Z�.D|3�J	h�\Yۀ�%����Z7�xY�G�~�jO��s��M7���j�]{ͭ����A�zN)�`�k'y���Z��X�MYhYk��5�@F�	��Xᆑ�ψ��9y��j���;n�1��UTC�$��WļC����3b#E�����B�(,�,��ea
!<2y�SI["0.l)�h��Q?����%��䕵jcm���h_Xk΅��ׯ�|���x?��V���Ԃ���/��ʶ� (�`\:ר���J��ֶV��Űx5^'o,�X�Xi��A�Zm�	*i>,<�� ����C�)��0OgUZa�����ŦM�$.��m�UV��#u뻗��w�y�m̖@�N�� ~�#o�aI5ɸŤGKj1��5�M[T�F�U��Q�����me������X��.�����ܟa (�f��* �9���*�.���-��\���e��hP��*��%��1$ieJk��5�1���:���X_q�����Y�DbsRC�/XRA���Fl��z��hI-6��ÿ<�&�y��� �^ V(e�]�B�m��w���ls��o4�p:�	JG+��9p:EH����E.�/D�R��tѨ$O�ؕL�����e�v��#^�cnrj*�`����+vm�W��u���Ԅ�d�Cc@S���@c���>z��/�i}5x��&�T�(v�Ӊm@VM�6U�D!�6�������mf�ʼ#�ف0������E�-���P�'@�8ĮEa˚2{Y2�UST�/u.~0z|'�c
yq����M�!Q<_����:uN80"e��� tj[%`Wjt4��ed�(�[�r� ;����k\SX�d%�*�N��Y�У��bΦ��i�� �tE�XQfI�����+m3&-��].u�|�{ax��~�.<U�F���4�+���Tѣ���!����x�&�|�'�pU��*�����.</=yfp�	f%�,2>��-���,��p�������F����rƂ1���#��Y����-鯫��� ��?x�YD��G��%�t�ά��ip��B�����HN�Gr~]M�/s�z�DL��'N�ђ~ޛ���8E�!c���=�k����4ah��ޚx�!���U�z��Z��x��ma�$1���#!<�G?����޳7c*:�m��ۣ�%�￣H&��:������"��
�i�[?	���"��:JH���bK6q�O�����5녰����a����a�}}��R��.�0Xs\��y+�"���]z�T�;��s�v��D����.ŽNn	Q<O}Mm��<��� ll1q�Å���Y�!2΂�*�P*ļ�^�s��7�;'cZ��C���5�~��s��&���n��sL�^�9�s3�)�y3��p".ϱ����\w3���Lyl)qt�e>���~5Jz=>��*;R�����|޹�9��S��������6�%�U�N�^�&�����a?�������s����u}��xX�Z�8�U�V�F��Ig�:�������Qwm��c,,�E�ђ��x�2��i�2�"��D�m|ң%�|�^��3�W=e$�xF����y�Z�S7#ګ�j7��q�D����Jz�b�sX����Ɯ��L(����*R�%?�{"�[    c���^��M|/l.�U�3�f"v�l��z	�2��ӌW�i\=Oe��XYHx�d�;ʫ4z>�U��\�V=C�h�>�W�ҹ�W�;|E��2"���h�~��A=\�Y�s����fƷ��Kx�3^0�\T
�GK�y�
_~z��q��뉀��h�~�t׬uc�+�=�ε�Y������V�ZY����K,�׏`��h�>ͬ2�v�Q=���s�:�""'<Z��f�Y��-=��jp�\�Y� �Cc���O���RF���F���2K�k�z���И�.tXyL�*��#X��B\Ϻ��c�:�i�+
�`A�#u]�޴����V[R�r��H��:8�7:$��3�?��H,<�5��b���O���;�<����6bA��M�[-r��U����4e�Jk��l>rR��+������שּׂ���GQ����e͍���a0=ZB�u�!��MRa�AY�7,9IEj�+j��#�B�������j��*���Κ�WL����!Wy�w_�M"Dc\�J�K� �2MDV�`wm��>���ڬ�{�c�W���͖�ɻ�_� *�=mf��J�X�Aơ��PbѨ���òm�D9Հ�4��LUuSԥ������w��6�~���m�,�le�z{����Tt�2U}�I�!6�J3#�!��5<Z¢�,V$(Z�Ulg&�׉+��ؼv��W�O@ѷr��XO�Q�Y�0�dC!����*F!m�V�Hl�jx�_0yϵ�2�Ӻ��U5����i�
S]���৾��n��1ym�����0�G�0�%��L�!���⊖����(J���e�(1���L�֕��W�gG�&?c��/�|��x���ߤ|��14���Z�U��X�[x��2r���ʁ'�)�Ԅ͓6ϊ��+�v��#�.L��1�/L�)L�`e�=�C���Y>��`�u�;�ڬ��}���;Ç~��/�E�hb���s>߆]\�p�W%E^��9nQ.��^�\$[��&ue�ƈ<��޴�k~�8��N�<}��G�I����é@Zu���֤�X7�C��!��Ph�ȪV"���s	Hǁzm��
p2 ���W�kjV����|[xX�����ڍ5�i��ܸ9k�i(R^��`Y�TA���+��H!c���(�eҭ��u�Ic�5E���e�L��q
ٔ_��9�;�X��.3�ч������c"��9V�X���!�ƕ��٤--x���I�l�T�nR����Zg@4���I�Xqs>��;����U�(�������4������%��+��!r�2]���G�&"7�*�|8v'�
�ʒZ�y
v����I��}��o�����*���d#ƕ�#���w�-	�dV�ై�&���)�$gr�6U6��2r�{4O~���T,]4�> 5���h!�ˉ�ߌ��#��ƒ���'�}�7K�6q�� �U�����ȇ���|�G]��F:`�Z�xm�|�[�X��|�Yg�}���7t��o�αm
��m�r��D�;%�IJQ�X����Tp���s��O>��C�x��o�}�B�WЃ��Af��dP���	XPT2���b�% ��N$��� �'R�d`0 PH�d3J����x��v:J��_�������)Ʒ�n����Z�Յ�x:��"U�%�&����M�o�j2ݔ�t�N����ʤ���0�3@���*�S��go�1ŭ�1Rw������>摆�'
OI���ؔ�\��T�q�p��Mr��J��T-|a6�c��d"���֧!�9��\���^�b/q����E��lK�����%.W�48���3i�UJӇ|�P]̃r&m�����Q����T�f���Iٿ�ػ���3z�6ģ�������>mDfxd:� e	~f��ImE�5�P!:��o����`a��{mf��j��@��E�ۺ�|k[43J� ��T3���m6*��3I#sk���R���1|:���R�A��YFm�3��W�A��Dg9X�LUIj�O�,ۤ�ʀcؔMZ֙�������~����g&X���3s�SI��,���D����{5����M8�
<��]��lG��HHj�����Nb�H£%�X��N䝕�	"i�
���`"�0𦍑�,Oy�{ah�-ɥ�۴YL���G�3���F~6}e殭1�G�
�A�a�Et�\���⾫b�u�F�A�Wu����	�~�W� ԶJt#�ȴ>���y��48�r���_����U��q�ո�rv玧�e�=9Ş܂��C;�F�u(�P�8� Ŕ)@�T��4)��2?�����|��4B�[�;y}��
������KntyM�+Q�q�|P�*!;�)��?�؟Y��t8[8�F��J�}�lǙ4�	ۖM^#B�w#�O~̓D95N����v�����s��y�����$B;�b��s��|���A�ե�E�禵KT� 4)�h+��Ty���qޭ~�%�L^�(��{D\V�WY#�`և{�u�<�2/�k2�<IAD��(D�\���.@��J�v �?�4�Q�L=?²=v�ͼ�?}�\��W�M_^�X��������=H��Us�M�R㪛5�b��{��l,71 ����.E��FԵ��'?�oN����B�,m��/MwE�ב�Z��9c�������V�	Xk���g$e�ല���̪l��bO�C��Aq-��G��*��̷���>$I��UĜco.�q���V�I[�\�;�il�ה��q'	2�\x���Es���"���U'o5�d���$���|B]�|uT�lzVG�y�Pr�P�hB�mcA��J��'�*q*m��m�W�v�H��>��=}u}�n�ni��]%���<��a�"K����:S���Q,�ހ#^6�F��� �	��X���ko7آI�u��r�5{�mc��-r�-kOvf]���O�s+a�eFJDZ��uE�k��>�a�G8���������g�w�W��k�-�O�������u�s�Wqeqσ{�����6��+	�38 �,
�M��K���\�Zgu}.w�3z��݄���	�}<}���~�+�۸����[�rx��!��Ũ�9���/���X��oV�DZ�3��ҷpW�RZ��� f�	Ly�\'V�>�Cu3��:6ս�2�o57g�ၧY�e�Q�!�5��/g  F �������I���&ۊƀ�@�UU�r�s;ݧn*_ G�7����ޚ�$������2hj����)�v�n0�;{6 ���u&��3�����ޜ� bWT�i+u�d�+ΏU�ԍ2�l��������L^���'Ľ���˃25\X��<�F�?�r�I�`���*�uڶ�f 0��t _�Ia���ATR�.���5F�_���hf�I�7��[����XǢN�L�8'L�����'�I�W�؅��w0w�L�&S�F��@�:�V�tXV��>?$��*�͉����ݸ5��t���x@yܣ�٣_l$w��5��@�'6��9�S�Վ��|vZ��;�''h=	9��'�(�~���j�:�o���_�w��������f@i"AP���g+��c��c�������Lm֨�h��c���7M��5��������a���a#�����w׾����1Y_&P���=c ���gA��i�M��+� �2�5�"�B�
�E��E�'�P$yB4�s�{�1m~��W�7�ӗ���
X��k�
U� ��½��.N%8�y$�/.�,�������r%0�["����
�c�Yk�L��8����6��Kڙ�4k������j�ؘ�5o8c��}6O�������������w�ڤ��X3��?� H�j[�P��Zk~B�6��4iv7��D�h��j"j���L$+��0Q3L\�m����m�:Iu��u�XY�7��m�:�Sc�I�����Y��.��5�H�&����l�飀k�,�7���N�j���;M����?_dؼGzQi�NQe�`oBub1	:�x4#��F �m��\Hp7 ����OL]�DKYԥ�u>��wH=KxZ5�����    �h���g��a�5P"�!ǺN�GKb�����@�.��>y~ؘ´���|��m���R}� �c�[�V㰑xCj��7$G�[c��ŚP�G����{�8U�TmuҶ-� �"d��YV ��p��a̞ɜ����p���*��qe��u�H�MG����1�7Q܉Z,��?P�¥��L$�:1ĕ�j�F�H3�/��E ��/����x(9�Ð'�Z5ӿzgmu��]�ey�����M_y��kk5�L���YzT���6v��z/.��i
 -�E�/�-�͛�MMZ6u.��C>`��g�T��_1��g��1�������yn�;\D<`�=��b� ��\���I�M��� D5ͭl��Na��7-�a�
���Y����Ĥ�HW��hB�E,�u��_��Y�l��+�z��ćn{����2U�� ��S�v��T���?��6s�b�*tI��o��(�y���!�ŕ���t��&+�Eϴ���p� �h�d��l�"����F]�O���CG~~����%�dcm�����˳�����mwc�m�������В�C)�D��R㨬`T�� ���G��L4i�*Q&�)���M�4o+�"7R��#�ۓ�6��vϵ�5�~·ѹ���α���i� �*�in@�:4 �w����.�dʥ>"Hu����p���!�.�G9�"ѝS�@���GK�b��ց�P�cH�X�	׷(�J8�O���}�Z�ݦ���ɏ`����0kH��6L�"�2��XG��9�y��X#+�Lm�����&���$�_��N>���	�?���ƞ���ڃ4��:����	�l��g���m��+
�W,8���&��R���
�*�IƴSi�<kl����؄���r�5�"���>��&L|�m4�͕�7��h� H�9bF�ӫ�H�Y�Y�'	p!���^��S%����!L�vZ��Y�Ws<<>�|�����n��fk�'��&��H���i[1��ի�XA�PP6�9,sh7\r���6�`��Û�����tз����ɮ�^��宭���ۄ4��,�i�XX��;�;��MP�dJ�W*"�`�̈��&N�Qima��nH`=���:�)�5�yíN�^�Ť����b�0�G����ϱ�ňm��j
��nZd��*KL^*��7� �ƥ�\ɷ_���^1^~xro~����r�������k��aF +��h�^Ģ����ђXp@�kN�-�x"P�+]7HQI��B���b�y��>q��H�7�뵕��&��4��~�4̝}�k��]�]���X�E~�n2L:���NU)l�ʢ$��q��j*��+ͨy:�9<�&����Ph����`2p����y�8���e�ҙ�����}�����O�P3����q��K����n�}z�������C�Gk=-���1z�J�g-��:m�ĉZ��*\�Z@��������KS��&����%�~lNCU,���X�޾��|�l��_������Y��A�<婼��F����$�ú�xw[��ȱ?�nA��왮�$mU�f�E8 -_P�GT���qf�p�S�f2?1������u��9 �[�b�-d*%��=��!�-Z�T�0U��:�����J���)\���{/��0;8��d�J����\7��ML}�I �?��f��x^hh���"~�5��p��������4�)�Y�(L���Ɔ��e]ֲj�� ��a�����tӁ�'n�U=l`�U8�,6�%<Z��#�dk����V�0�ԡMۤ�"�F7����a������p������/~��������]�����n%���&S���:w@���`�
�@p���e5&>Q�[% ������V��o�?��g_��R�����d�K�/�]yo�Ͷm�n\"{�?�0w�.,��x��Xp2����ru-Aȭ�7�uX�����r�W��O)D��G�a��P�_u�i;[�1Eѡ��5�ڡ%�L����ջ��Ȁ�Y^�46)r1M�S����-@�V�0��]��Ȱ��:[nV�uJ��ÛU�A��0��+0#������hI,6 �,AO�.�E�'��dE���:��a��o�����m��l��f<�8��՛��>��>�A��xQ3�;�_�2��x���߈��+n(x�Y#*!]R���Mʼ�%`�y)m��!�9���CRl�/��B7}��E�}r_^[]�p�˫�m{e����"n�9ֿ��p�0.O�N �K���~D�I�I��*��������������}�R?DyІu���:�/B�~ʩ�]�C��:6�&<Z�����.M- ���0E��L�˴-�Ҥm>��2h$�Wh%FNH���C�l����g/m!�֍L�t�W�Hd���-0[8�����4uڶ����� S>S�v��}����3��}��(�9@a|���#斝͝|�����x��Xp�@��\^�4��N��l��:��B[i�Rm]��so�c�p{_[^w����M��R3�~(_/ɶ ο�Q�}�Ŧ߬*3il������� <�i���7J��gz>��c��=��L�D� ����G٦od)+���HcN��Ώ`�b��F�J�6�m ��mb�Va�rim�?������ͩ�t��H��\�W���ejv*W��R���=�\�xVỰ.6t�㷧�@X$MN�� ���t�M��t���b��b�'N^��Ը��s��(*�~tb��s��|A=�:5�RVÕ�^R��QC9�7L�`w�J�J�ҹ���E�F�ͅ�7�յ�:Ƣ��b'��R�`�{u�,�B��RYi�c�\�7��Jc4���G�p�:>%�� ���İ�Ļ*��ވ(�%0�|P|�E](&*���`!+�ǣբHtY ��\.Tq���o0���S�$�]����6����Z���
}����[Y�ӑ|���6���bC	��7%�.�l�����A�%e;eJP3yU��*F�B�������敺s�������EL���F
_��`�7.5.E�C���	N�*�Q63F
������,lMv��`���O�|�流�a�t�v����o�m����xw;v�C�iL3?"v�m�P���6^%�-�!g`��ñ[&�\mr��rh�P��^`�+�7~0�M��4�b�"N���{��e��hr$Ѐ��q6|YSC�47�l�a}���s�;�3d�}8���s���<��ׄr�H��yy!��Ԫ�iU& DЮ��Q�%8�mkKۨSd0̼X��S̯��n���׮��\�B(��C��M�PX}d%Q_Ox�Ђ�
���w-vYh΀S%�)H%I�Me g=k��o`<�n)��Ah=��Ǫ����$w����f�.W�cJf0�b�Q(?+6{�����d��
�T*q�oYJ��F&y��^��m�8���������;��<�z� n��̭�?kx�
��̷I'��4����~�hI.8ʠk��V�jtR���7t�A����#�5Z?�t;ڜ#��H��]wOI�a�!y��1�:}������$~�;��x��$���տq7�W) JmJ��N�҄�PL�E=F~�u!^�M�&�s	~�@�Y�� Cd�� J����e�����lY꧖��z��Q���q�I��.�Ҋ� WPk�E����)ͪ,/
W�fX�\A�փ���]��'b��w��{�1KG�>�nLb�LN�"��8�`�W6
߆�m��B��z�p�FkY�J���% ,�M\n�Dۢ��L��l�U?=�nj�anv��*���r+m����Z�]7y�p�M�Y�A���/Җ]ć��#أM��X�8�E6���4�-ɨ��7*��Dì�ݓۓo��7��o^~�2�a:���x76]4��B&�yVz��%�J�[)���v b�4)�@]��ܘaJ��x���<��M����
e�1H-zBs"_�7Z7<�Q@[\�!�G���(�\Յ��d�*�c58��̵rr�doRg�]��Xߵܣ�bv�k���u7[Yn    �֪���L_u8$�=֎�3���ㅎ>1W&>b���\:#2Y�UЦ�8��A�<Ik���Ҁ�4C�D�4�ǧh�F9yi�zsc٭Nߺ��Y_���QVـ���t����~�U/�W7LI�p�M�ʥ��Չ��J�2+4����a�����l��6�oL�Qd��hx��!��e�E|�?Z��M_���V��% �{�cC�hp�4�y����X�!7������{��N�f7��p�s<v�v}���T��04�K@�G�N_]�m�@̷@5Nkl��̈���,�j�Sg5�8�v-6����iR]�mҺ
�����/s�a%��6�� L�t���!�W�(@��+,�B`$��^K^��ܩ	�?!���f�k�)��*��|V�FUEܓ��vr�!�Ŋ���&�y	�qQ�	�QER�Nk�*��a&e����D��]����Q�㎛�g�">�9�X�A���
�D��W�O6��,03N�y[j5j�8<���߁��C3!ږ�I���݀���Ž!�'����@T�i�$Z�"�)�)0���� �?�a�{����P�%!'%��P��-�2XF�g�{0S���''w&����]*1���N7�{��7֦�.#��YG�����߷��ϳg� C�69��'���R9�Y]#-��(tڂ��bg�;�-N�j�S�&'���H�}�Ɂr�ި���9�
�9vB5�NLQJ
��m�"��:l�w�=�����vG�������g����7�k�$ч��IV��0��(ɳ�_�p���ZlpCWX�3[ڢMD�j��̒��?��q�	����S�A`��þZm�x�?`y�B�K0��-�=h�.�B�|���A\�ϔm���5oWE�ip5��jt��b�j~A5��^|�[��NY�}�_�Y��2y�f��{�oߤF�WW�w�9�b�t��Ӂ3*�#댇x~�\pd�7(�+�,*��]5�dӀ#Z �P�i[�C�wW;��=:�?_��:��r����d�0�?0�*�(�s��B�8c��\��V��7�ڷʚ�������;a���[|�=)��-j�A�N1?���!�%�`��3n3_�G8x�љ:k]+�C��I���(�uU� ���0j������7�{tv�s�24/�[(����΋��b%
 v
�Db˦�,�l��N���
po1P�g�f�HPU��[<f�i/!���t}�8/�ɏ`���X��eY&`��D٢H�6�/I�ZVY���૯X��-i��(z�<�@u����q<��c"傣B�RU�s\�,�81��	��LT`�|��>��A_s�K��v;�L�n��5"Z|sS+ӫ7W��Hu���m`Y�g_LL6�35����r��Y,���+�U���jA�K���� ~M�Zg�v8�)o��t�%��ܞ��v��oHP�P�}�6Rg
b_�9��\6%N`İ/����;,ZM��O�è�<&�LzZ�Ē�La6Xd��yy��^��.�,@7/5���NZ)�,�Z��(?�:�|΃A[�U���N��-o�^Zƚ��k�`�ƨ�!�Ñ];d2+�c�G/xd�\x������8	�̰�� �Q�9oS�
0b�ia��F�؏�䃓��Ot0y�YŶ�/�8$�|~���7��lg]��1���b��ε�+rp���X��;,�o�Tv���u6�>���j7C��?�
�3���u���[�5M���u�<V=���|c��|Q~K�P4�� ]�T���,��:���hW@�ِ�<nL�9�����K��E�~��}+*+����K��n^��b٨�M7Zv~�����GKr��
!��g�I����薃�.v�6�Gé!��S:v��`���Y]����f�;�v�����]kU��Q\ݑ�"
<�#����b���I���lR�X�h��.[Y`F�֭I���R,�.͍%��`�mȸ/ٳi��wA�� @��,�}IG�,�����_��k_�<Wm)���Z	*Gf.��������'�oP�L��+�G�$�I�ة�Y~kY���#i&u�k��Kƥu���N�T�Y�U>�K}���	�Wǆw������?rY��>�~���c����~wz0�oRiks��Y�m���\��Q��D�h�ۊ<�6�ji[�]TF��}��;'?�u?�̷�29�o5؊}uc���r��)L�~�ӓzt7�
-ax��\l�B0l c�J,�� �|~	�v"5`�Jl2Vh�|�x�?=�1����=��q����z�
��<�a66���^�<��pSc�+k	h4� �>�
풬�UUQ:3����Ǡ}wUPj����}"xc?ƈ^|��8����+�_�l�oF�@��*矎(j�iYl�q��3m�bC:~�.T.v����	�zQ���)jWq+��� �?S�VV��^�W>R�.�c1
{���D��6�nLʲ0uަu�����
��{Ԡ����Yy�f����U����a�]�^�G��#X�b!��.֙�j�^i��f��p:�.�����2���P��eʱ��;"a8g����w�*���3��C��A���<g$V��ʏ���|��.��)0\�Ep� /�jdօ�N|����<�U���U�Re�QF��N�e{ϱ��p��5
G�UJ%Zh
���$�i+Yi��|ب���Sj6��'�L�6�m��A*,���<8�f\�[c�%�Y��hI.6�+}s {������&O�aN�,�2���a��q�
�Y��n�'�����g&p���_�.�{3��!Jf���N/-���knV��,���Mp4V�]��������"g6�9)F����(��;Ƕ]�U"-�V�.zz�� p��B_4�ufc�ϗ�u�؝�뗦o��k��t��`�ȟMM���,�W��,�!-K�9��U���*4xϲI��ڲh=*�玹6���V�ܲ0��T�^=%#(�+�w��jm�1�-�$ǁSX�H,0j���r<P���zsͭ:>/e�t:�G�@)�_���GKr��}ۂ�+hhU���k|�ͭ�5X��t~�U�G���"[4��z��w
���;��uL$�c�lÅf���`�Lb�U�R M��� �*��S���X7��fk�1ng*'/�M�Z�՛7g'�_}\�kN�a���b�����hI.6����M�djlM��ms��R%%��kMj�f���<2g���P�N��Q�i���M_ZY�/�q"��ɰs<"���~P��r|�*?�e_hL�s�J�usAc���+��y۔R��t;���ۦ3���z��[����D�Fr8�=�h�t���Ɓ3O�����2m)+��,��Y+���@��ma��-*�#qe
�ɛ�v��z�p4N��p3�lUX_��3>���.6B�f��$m���*�cDb@��Z���&�F��);��ļ8�x����4�m�##�0x�w&�V��N;.63�M�e�;P��U��qB�(�A�����ƪ�αO�(��m�ʀNkl�%.�˻m�E^��8kr��-J����� M_|��q���Q�b���U��EՂ��)�%nC�є�hE9!��o�#o�I����VNa�C��烻ݵq�@���#X��UQ���S��Z�8�"K,إov.LV�!y�3��O��&�̖���f@6��:}��Y�}��.6���lӦ*I˚��NL��Dʴ�\�VcuD�=.c��.u�=��X�ʏЋw�R
�m���<pC]lD �C�4��uJ��u�XQ4��Ɲ���P8_7��w0V.��;L���������ɏ`1�@(��N�+;j�bת*�2)���*+�3)!2朝����;<��;uS?�s��@\"�o��4���ly���:5���k3�ause�Ͱ��J=kVI/ey�z<���ު#��{u!���m-B')N�V �R�����\�|ؽ��XF<�����Ja��u�f�yC�\��`�$�c���O��G��%��R��y�)o
�N��]nj��C�/���F�"o�;�f���ְ=�.�nB��|h2=B�U�}��Ѝi)Tmt��> �5�h��    �n- ��)��Z+�9>�|<���O�<��}r�&s��dʏ`IBK�Λ�n�D!a�R;�N�)[ݴ����P>o&O��m?��V��{��en}c���]󵨹��J1<ڳ�sα"h� �𑵠i�")S#�J꺕��m:��)����ש�eBT��Va�3PF�H�w��������AI�ɤ��z��ꍒ�N1�\ @�
N*��
����n[vו���Wl�X/N��_�Ƌ(R&$�-�=�%"2����*B�H�z(K��vk�fK�O��3N	A`�� ~�����	VT�ޭ!Q $���\k�9�$�!�O���Ƚ����%r;���,�"78����6��6��`����*՘a����9Q�����l����w�cS[Y�Y�8x�)�P��w�>����z\��:�9��v�%K�^Q�����^b�;��fLK8��c�(l`���D�'�Y=P�����yH�bjX@<�D���m�����p���D���q�÷K84��ք���SZs��9�{�C~�e����?��S��|�̤���g��w&(��f�'Q`G}���~��۱�5�T��J�N
'�Q�=�8 k��F�y*h�{�$�ʒ��T*r�kq�����=�1kq	e���Or�c�u,�D�G����N$4�O��$���������׫�W�=��y&Kx�(�����x��D�����D���\Dm#�O��ƻ?���L�H���-'#�hVl��c��趟gy��M�2�w=8�$�o5Z>�z
���SA}]lù�w�t?������{�_���5��&�M�z�2�ۍ�>��D[fb�h-��_rH(�uG$s�_]{Y���z��Q�q�B�;ɳ8��,����ɨQ��w��@��e��	���S8�؉f��Ӭ}gXD�W�M�:;��*n�˃7w����[Ǵ
1�^P�bDp�V痧ղFjߣ��M�ڭI���5�
��Dֶ���Ѳ:��;Z�V�����d��Z<���wgއ#�}�q�V����vܳ���Z/�t����d�������l�BVmD�
"�M�|1�"�5d̨�
�t��8����U��{�����>*��e\�4� :�p�3�g  4��F������L�X�R�`<(lE;�.��`Cp�׳,ȵ�������'�7��n�����B9�lT���x��#Xm{��V�[�5TTE�[�� 
=Z�E�h�I�{E�t�(=�����?>ۋ�����jL'�Tө~
���u;o.&�l7���ߩg�3�,G�.����4��&x⹯�X����l.r������0���R74�f��c��H/�ƽ�&��݃���ڈ\v��}G"��'��e]|���2�����?[�>�D.�6���f}��歌��Br>Q��N.e�=�F,n��G���+J� )H�" $o%��c���IN�Y�~�������?�l�f��Q�s���\����Z�u@~��K�nG�����{���`��t��=K.�!Ğ�U����"�r�5C�Ο.�,b�q����!��W2[A��߬D��G>c�rj'��Q��&�?�k�d$�j#\N�4쵀�S�㾯�����݁�[�p.�� �	�l�K�F]B
��Q�������/�F���yf-�i��E��S�d�.o#�l�vv.��@u�>,B+��p���$������8�G��'>�z�6�m���7��iۂ�<�w�_�F��m��N�Ѩr,2��D�b�:�YklP^��T��F��d��t&|���5x/��ݦ��[*7�����jO��g ��Ӥ'IW��yۢ�z�C�j��;1�m��Ō�5���.��a�)�OB����B���Ĥ����딊�K�#�Oa'H�!o�B��2]�CףD�Jw���Ů2B�UW�-b`�@�LDt\x-9$k�T)������DH���ߓ�y����7��VwT�o��"۫�hLϲٕ��H�n���������}?]yT*qAK�ba��	�i�L����d�M_v7n�:,�|�'EQ5w����u-.\�^��^�(L)��鐂w�Zh۟C̃Փ��{�M̳S[��~����|��x�GΆ��LjhY�ƹi�5�G�>��+JOcL�#� ��3#ͻN��J��4��˝�wQ��7�҇9�S��������~0˛7�?��7��j�����ۮ��������V
��R���J��Yը����/pG��a\��`���"�.� :�M����TWu�?������(_��S	Z7.��F���\���R��6pH}S"�D)�x��"b�g��ZRt>+��yw<||g�׋77�u�����dΞ���*�8�ۼ/^�n���9��	g���it����}�9Z�*����8R������[�*>j��ϩH��M��#X�nt�i�zO\k.`[.8���'�F ���,���T������56!�õ�['˫�W�M���4!f���"�뀴}��#X�~�-I)���X�j��]�P�'��dVm8����xy/�)�{��~�����ٷ���7�c�]̈P��NKE��bG�侚�v�������?��<�ѫ�*'��T���{�C�^w�?S�U�<X][�6[l���=v� Ȇ��,�Gg�r}�@z�ɹ<���E��l5��$n.AYg��qHީ
�M�Kl��	�#ݏO=����	��`5����u�ͯf������|��w�&��/XH���}/;���/��5*�b%�a��w����gQ���w?����	��C����γ˗N����o\��rrz�ItR�s�����~%���H`�qF�4h���wu�����Ѿ��s�r���r�X��7���������x=�_Z���mV9����i�V��lu�� m\�G�r�*��e�2�̎zVF��=�Ӂ$���<�q���<G�/�Bi�	�̻
�\z�nc�������h��4#!S�	ڨ� �'A|�=5���ާ*F��>���C��N�t���S��Ԇ�He�ES�wE�$��e��2�)1:zv������W^ye�B��Sy����b�a��Ӣ���Vǵ�3Lyk���C4
%�w-��b1��;����g3k��ѩD�Y����#>j�ϲ±w�XN;�/N�|7��q���>z�.$8h�B�,�* �'	���n.���h��4�����
�O!���41�/Q�獸^cR���GhNT���.\6cj��v�],��n�c�>8�y�e��rrT�Q(vZ�% oU[��"����}�4���u�8�Ck��s`P�h�+�X�^� �D�a%q8WC�m�|�J� wZ��ɖ43��0SP��7}r����?6:�jt�UuԞo+�v/���YL+�{a]2�����nP+%�i�A᦯V��O~���~TH�y���g�Xz`�����eϤ�)gh�\b�;���ƥF��K�'�x��d�%�q��S�Aأ<�v>���O�R��
�^�!e�"5@��>LG%ZW}:�p����$ң�4֡���c
@p1z�%ʵUTC6P�H����`Ew6�v�Ռ	G���&^.��X֎C�#���&�x����ܗ�u��f6�`����h�y%�q:~�mw������D55�g��2[����wy��O�B�j�e�P��?%�t�$G$v��&��2�G��>��y�~ss�f�VQ���>5 ^�ǵ�ɅK�M�)Q}�J�����AV�X�<��Y�:�\�m*47�>�B����~u���*l����o2}�x�$&3V=����tA��<���5]9�4Y�y���DA-ꂢ��
:�:Ui�̌z#����rP��)���t�m^����\��Z�+73��$!��ß������@���'q�~;��[��r���ϧp�mߎkX�\2bW;�1�8��ZP��s����Te֎kl��I�!p��	���7V��k�}ֳ�z}��b�f!���Z��K����5���IuP^b<uȠ�Bu�M��as�
<��t��\}    yG^��9�O.]��]w"���mn�s SAL���8�&/C�R�NPMQŔf�Q�z������޺�;��if����Ǭ��D��r�j�j�� N`�!*b�!��v)EKef|��V�f�`uy�z9b�9�hn���1�2��x-:�b�<z��w?�:���p�:��QDtnV�T��^$s���\	���,���_�<Hr����Q�Ȯ<oE�/v/�U��Rt	ݛ���H�w�KC�p�Bȿ��G_���G?yb��T:���__^��GE�J5��Y��cu���^�������"J��>�t�L�$��EW�I�T:�����gq�x�������P����jrj3M�!l��]���~����(K�eRH��<����m��(�খ]�����q�S?�v}�*{���}\���s�t���%�*��A��L�N`����ayJA��W�3��JM	��h��^U����m�``K�`G���;�(<J�w�y�
���T�N�#"�*D���C��:�/��]<� �<��KYY�>?U<���hk�m�e��O�^E�UǅB��r����Fg4�ӫ=���z��݉! �\�W׮��"c��YU��'m�O�F � ����c�����Vb���UJ����O�<b�;m�a5y� 8�Y6!���%3D6B�m�ݶ��;*��7IІWRg��mj�1(��k����4�χ��3���Y~��q1��ث#�Y�_ʽfJ�Yu3�Sw�%fd�i�-i�����3F���us�9�T3�Q&Wm�?��5��>~�b���a�Z������9�o���r�����! 7�p��<!&h�m�)�-)���P7K �D��AgȠ:���ZS*��TmH����s��%hH%��ğU�(Y����.�1�t7=��D�&��l���w�%(�$	�gU>��/��y��x7UA�0���n�j�m���p�ߋ��ߞ��A�p��� ^�7.y6�6�ID+���?�j7���s��h$P&�Wf� }P�H �d"��6:��T�e>�f���'<��(�4r)(�a7?w��@]��n�����A���̢!X�\w�;4�-�����/�#֤�����Drt�G}�]¾�3\v�.��uwx�9�����6�Ӗ��Iqc����y����X}�7���$#��%���rS��:T�w������LZo���M�(jn+��l��\�	|��I�Gw�������E����\�2�&��ת���sT_)X�Tb-����'�[��k�+�s6�|�\����H�eP�k�D�ܼ�aQB� �b4g�R��j���tf4=���x�Z{��^�-����ѳg��0�y#ig vX@��I����Ş��;�A�}��^��zm�2\i}��\�}��Zkm���#X�^���'Qs��^�\�R+y.U}�-'�AR*7IP��Gs�e&P�-����3�د~^e���˭�7VEF��j�����	hȶ2�L��#x/�h�6�� ��I��!�[�sg�U��C_��?�$�|����?˅��\^�����uma�t��g�.��.`��ږG�ֽ��-��{�E� ֹ>	�oCH�
+����?�<��Ct˕�HE�� {6Zc�1�����ߐ����ᓡ�#���:.=\���f�����W7���0{Z�Κch��vM�E�����p�� �i�r.렱�| |N�T���^[��U���²�����g�a��eX��n2�ӡS�'XX��)�S2�@�.9ɍ�TBחѿ/�|�?}�g�SJ:�DUɴ��v�,Λ|7��I�?r�b��P���y�":�r���j�t��?�.ܭswjd�o��,�~w�\�Ôk5��=����X*sI�4fP�1��nj}ni�����o���c�pz�E�Q;jx#
�$��~�J�����sx�trolOЏ�8�c��4ِT������q[�(���,�`�{ɅI/<Gŋ�d%/:�Gw�Bt �7)Μ�Jr��O��#VU��p��gؽ��Vݖ3�f��eA�vk,�`�{99�;��[�*C��	w�u�&�\�����x�KL�O��/��sɹ�c�sq%���76q����AU=�3#�Qپ���H�,|�<�p�W\)�(�����u�G���I��<������v�zۭK@���\�1�<ϊ��=U�#X�^�I��HuG=^ێ��F�����LINfM�▍�й��ost�|5bk?t2��3I]�<G�$�#X�^e�@XL�F8f�Ak���Hz�#Ϗ�3�6��٬/U&�3T���fc����jyu��W�Z�ּR�Pu�Qcg����#x;;�뇢 �\+���$.���9�y:E<�̩i?��˭����/ı/�Y��,�:;�6����ۋw/���;�2iFf��9v��<������ ��=`J0��щ�'m TԣY��BN��_�	|�z�sX�_ţe�s5EG�8�:�e1��5@�h�'Q��n��c��SJ�C��;�:�b�Nv2h���̆#amKg��ƌg�0/��ٵ����e�1̓��%�i$tg�om����W,�(��x�;����z��{�M��×Gi���xQ���
���\��������$#�����X�h�={������S�����I @bDf�����KÿFY�'?}�i��.��l޲d�onn.�js����J\�,�J	9�r5�}27��4֖�-�`�{�m��P�qn�2������<���ETK�����˹}��W1g�4���ߐ78��P��Uuz.����n�#x{q��"}�B@JJ A�g�
)$9Oٶ�_f��Y7򋼯g��z�^��H-�8-�E�� �*��#�#X�^�N8�G�e�<���l�X'��[iOG�,P����Q��~ZfsƓ���6����u��������Ixk�����q@�J�I�y���!b�dU��	�S�Z���$j1
��d�P+P�����ork'�p�j�Ͷy���֫��5���A��+��2m�,s/7n�e F�@���V�!��e�ۙ��o��~�ڟ�?��i*�Y�R�\7���4�T[֨<���eHIb��� tv��NJCLJ�F+�rģܥ���ǋ�p����E�M�"Ef�}��4�a���:>��3|7����*�"}�t�"�lK�m5��އ���m����.�;��<�3M�<("M���0�X�5w��W3���Q�t���PWhTT.^�nb�c|r�jn{H�Y�*?h��q��*|"�Z�:4�V^�
א�'�x�e���+����g��莸v�D����P����nCI����#X��-0ÄC�Y{X�9uJ�tdR�\�5}����T���b	�/m7�A	��o<�Ϛ�:J*6k���������U�sFY�tH&�2��\?CBp�T_� a~o�Q�~�[V�RE�X�e?e��v�+�k6P)��  �����*����^2ǃHnF0���Q�]�U��>�O�h�0}w0�|Tf������n,�r�a�]���I\���1^�ֲ2܁�V���fSK#g�q���e�#x-�I�%�=�2L(D���L$�l$��􃡓^.���$v�z�Wof��3��-'2g�����%�W�e@_�d��F�fᾂ�� �(�+��q��
%�<p�:��<�jȽ�\3�k͊�MD[m��TKy��)���Z%5_��z�y�֗�_�>�H�L����5V�0w�>��A�g�Q���5�t��K�mW���(�aT�N)!�ug�6�������)����咣G�}����Ȗ�W�q,yN"GҲ�lNI�_k���a�|7m�ɡ���t�DH�O,�G����&5u���?DQn�O
�wP�	���Η[v���/�zs�Wq�̉�����Ԏ��r7�{�=͆�����'U�gir���!R;����9ɗ��D��gM��/�{<�ߌ�B|҃�"V}�Aq�$_��݄��b��yrF����a�'�Ɣ3
۠�SQ���    ���W}�
o�8!*�,[ײFW�F}�=͆	���q�	r���������b�<��!:�|^���UU���^H�r�~0i佳�R���������ϗW�ϱ�z��YFK�S�J/FL�u�:��|����߫�2K��C�L����I�@SϪ��'�J ���ky3~e3���Z�G[4?(���5��$��XP�#һ	�k����AfZ��\oh���Q���	�>ʤ�w��]���X�4�k�>şFRq������Ie�]Ϭ�Xz�Ì�R��Z �KK�
�L���27>�
��	UN+���図	��6.u�
��{�]��wS��FK��puƢ��u���]�9����`tQ�K�E�a�N�a�H��\�${P�@݆+'[����a���ڮ����k߹�E�O�Y��t?Ԍ�q*S����_�^+@JFP��2Qa@J��iRО���g�./b�B�G
�&����u,U��a��Z3i���n;����S�g��<���e-���|%�sb\���_�jf#������zǻ>G\�M�9�k��s�v�X�^�H�O<�Ns,�P$�d%wm���DP��L��p���ol�.߄�������^߸��٥ǐ����'}��+k�Q�a�z7�1� ��f#]��aa �\�w\rh��O}I��(���C�9ֲ�|�u�S�z�Y�R��6��U�}$����{�ײ�z�8�� Sqp�!W�XU���sޑĢ�"j_Ϩ�]�
�!�oj|����/J_��X����3('�h��u���Ȇ��e^�^ʯ�'� ��t襊�p��w�;��F�3LFog��`���8��0�ڏ!P<���ɯ~�; Fr� #�A
β_L+>���Ø�n
��	�"��	�*�� ��,{˸�}���Fσ�bw��vsa�'��M��l+\������K۱�6X4܇"����@ �$���"���ܧ��A����Y���p�y]2꽭�]���w�蟴0��ٓ�4@�Pе��E���ry77՗C��A���uned�ͻ�l~��z=nכ��4ģg��eo0�P]�����2d�գ5�	��6,���%��^�\�����(��8D;l�*�Xgu/����M��
�;<�
���~ri�rzX^9��o�^�ʽ��Ih"�KP���)����n�8O��*����f���H"y����	�w��������<���uV�+&�RNu$V�܇xf��=5Ά�����5�`��PT���bc;���Q�u:�8<OR��WN��-ĉ2-�f�T�;c�^���z�DE"^�y��8��Ev�J3�Ģ8�|���n�2<�N��R�(6a���o�㛛�[%7��Vɬ����B��mە[*��g�P������t�8�I��I�����ɏ�'�{��`��S��<9��|�M�{W�,������|���g���n���A�aNR;�J�oyD��)�u�&ê�����)|ɗV�\R�YNܮZ���fIR[{������k�������hqf����/���st��0WJ~���d�Ű�^�C6~���.�[������깡��ѐ�emM 6h쩧�]��IH�(��&��(�5�Z)(@�a�����b)r����E�V]Ym��m!����D�p��$q��Dm 6� 쨰?��`k{ޅ�e!�e;Kx��
�c���,�ɗ�}:�듃\C��'{g��a�B�ūޱ%Y�-�=	��.1��2��:H�L�a��W�h鰺e�2�YŢ�����5C�#��)6L�說?]БRis�����'��ġ�{�#� �j�$D��y����xtc�_#�1�˘��ʪ�=$R{/n/	E\��H��-D �%�DO8��{A�l�,� l���\N%l���VB�2l�)�Q�~����(y��P���.q��탩�3�2g�����qtY!Y����V�h{����w#sW���"]�Ŝ#�K����*�{TX�/lWE�����h}ӭ�1ܢ��ڿ��s*����W���EL,�hL���,Xߣ���@����ɼz��`�?�e!=����MΆ��9���{��k7��q�H�_'�F��G�A�#2�<�B�Z��_����9B��7���s=�����)Pg_^�O�&r?�����ay<�
���d�S/���^�J�|�"���fs��K g}�3�UE��?9�ۺ��l/�W�2i���� Wr���莄@9�'��թ�p\�Ň�c	����jNo{�0!B~�|�eV���D��QR�gK�?�i�@#&EM2�g�H�&���KEy����G���e��T��q�F����#X�n�#�j���Q��*�d��,Z%��K�=�!�����>u�W��:5���հ�F��2k�-O}�m���.I��返"��{�݌�3����2_�F�cM��w&����:���/_�f��UF��8R�A��薷�$�#X�^6�'!^�rA��c=��l�h^�KI3З{�?,
��Q��Q�A��Y�_.V����k7��`�Dz@�hLhD-;X��ZuZʍZ�����r�������;w��%j�m��#���z�hg����6��[���E歷:|��k.�u����5�䎁��@���4ѓ�w3�U�p�7��@����p���Æ5*'�BEy��Q �$�2y��t
�0&<��H|�����?����C{�s�/F�tT2��ɭ������VA���č�-hR�B�@���)�)l]�"�t5�<����EU�QL�_������uw�
��`�8�532��i�^���t�'#� yc��G�Bl���Vl�If.�깓�X���ׯ��P��R�4,&�Z��Ye)�`q�e@�U"(��d��i JO]�oK<���(�����R�#�&��[���9?��`��]��.j�^��� Jؔ\#Ž��0����K!��8�n�,�f��)��:�h<thވۃա;��({������Lc�5�������SP]B�P�\C�gi�Y�^�j���d�}N�[^Y�O�V���0d����O��XBiHj_f�;&A��ћ�2X(��:حZ����'+X]B)�IzI����x~um�r�n�
[���FeRY}�^�0�YH)�`��U��o�8�����ru�#�B;�%b׀'�E���.�poш����hU:p�Z>�=�~�}v�j�����f[F�5���T���ٴڬ�G�v+&���F2�LA��VcT�+�,�������~��5�ϳ�*c�����k{�Z��vur�;���2�l�A�U���{�"��%�)��$)*�kX$� ��1��Db�������{5#��S�G��Zn��R��8^T��4�yv	���g��;J��â����<�� o��Ş��6����l�qpl����*;�.����S a�sJ�Yܰ��(�p�9�8�H�>r�Ҏ���;l�5{�����N�苃"�=�$��A�w��W�3�Yy����A��*- uG��!	L�Y���W臈�T	�b��}҉��r�5�O��㇋�o�����)2�ә53�b�ݐ�䴍[h�-�IƏŔ<�J�z��Gőٓn�РC�Ͽ<,)�=��dRܯ3���#�q��4��������I�)G��ѳ��q��W�K�m��v��)�_�Z��{�z����w���3��q�L/�u���2p�	�	s���3��s���d����Q�����2���x��w���hu���O�%F�(�B��g'���l.\`���%���|Ч��z���8P�!P�o�B���-������`9Q/�ؕ�39�I��6H����-phG����VY��b���x��)$��$elN��&�3�Q9Xc̅�ϖ�!�I��;���B�oW7b�|���;p�p�8耔1�K幡��d�i��W
���]�S�K.J����VE��{�Ò�Ε՞ߺ���超Ϩ��g�3�1=n��N=o+^�G�νĸ��:�:���+,�F�s ���H&G[�,��
���s0Hپ�G f�A�    ��r?��r��ڮ�7W���xq�m 0���ͦhz��K��8&M�V�����I%w�t<!�B��ѐ���d��T��/J�'�,�[|{��kekK��i/��+�{^�y�;N۸�ܵ�@���K�I� � ��`�B�d@IJ�}d�e������!���/�q�����v�O�d�� �ϐ4�� i���(���VD��A�OKQ�/h�W�NL���2ov7�졅�oT����d�q$�VB���*��Ͱѭe���+����I�|�x��a��� p(X�wFU��r����>�ݤ��24���.&��c�0\�%��^q7��#1�/�STQf����NW1�]��p��j�)��t|L�3^@ã�2o`/�>��Y���%���L����lo{�<�jmO~��<�3��Wc1 �e�(�=�˿����D4sv�23`R�?:�[�Б�6w�L�%ֶ�pyof��H�������m���
}b�Y���O�e6#�? �r�5R#NVG%�d�Vrf*�8	�4���Y�^拦'�s�;[$��<�:%U����23o���r�Y�a�>�l�F,\IF�,n�;�#K��U��`��;��}J�����p�9�����dD��;�F��2�5˰��x�O>+�n���mDA��b�q\�~k����T�U���G�D&\���B*\�;�v�%dC��y@碷Qh��j:�"��>�ϭW�CUC� m*�^�8�&�W[e�<�%��9X�C�O��L���<�4Z�����(����[P��>/8���n�;��6F��7'G8��W���;����⊌��d����b8ns���e��^��Z��������[�����5/��j�&�P�I���|R�<�k˸�x�9�!�!`5dx[G�<�U�2�m�s�ф�痜�E+b�T^��VX�sΆ\���ǅ�TD��>�n��-n�J笠��q���F�6���ҕx|�w�SB7)p�=�O���'`d@̺#���*���~_.7���{�`/�� e�K[J|zݠ�֙����.^=#v�П|��JS�q� �˶���N3���I	S�n���E�38�����v����fk�"���Wù�2�+S^k 6�sR{��Ĵ#�q�n��>��-3n�S��g`�Z4�ng5x#�+����x9V��tk�n\Y���Zv���;fjp��=ޮ��u����8�W � y����:�"����s�����K�m�L�W��:��p2n��Y�W�$�`�*��\�o�1��N������U:u'k�J�, ��Xd��.���fl�R��m��z�K�������W���<z�t6Pz�ԌP�Ie��^�杒���s4	]o���QN��©�'�?���y(��/F��񠔆��O��gy��`�[L�^�`o�ގC9����_�;���Lj�����V*:���o�S!����]Ġ��l�I�l
���),e�m��鎿��J��î6SS=����z����*�����6�?6��u��2܌��+��g!��_>����3=�����c����/�7���2�d2���S�AE��s���c�X���J kڳT/��Sp7S8.j)yL�'��6��vv^��Qsn83r!Κ���uw�K��8v�ꠖYf0����@ol�p_�I�B��U��7���Y�bz�	���iIx�/on"��-����d;��M�hv��3#q�9`k�mt_ƊŎ��#a>X�x�AR'�ܞ8ɦI���I�9�C�e��m�r���x}�:|�c��Tܜ*��i i��p;I*9ҎB�#���ݾ��:A-������+%�F���̝�]����-��N?��������;����`y��6��1A4b���l�v��j��s��a7-�q�c8´@z�9���b]$Q�Z�����e��� =yq5���[n��� �2DV�&� �WR{�H�F*|���V�;��!2�q��D�t=��8�d`{20�����~��V�<jG�/G<O��41���
@�s�5C�f7����:��!���	�BV�"��s	׵u�w���$ke����:��D[H5'ͦ����:�X�^�HVhTA�.4����TbF��I8����-���2���������������*JX����s!D�S�F�):�\B�y��pA�V��cĲ ����D�Z���S�@�x%�4���G ���/��zu�/���«�C�9�U���g�Y���S.�14��#���Sk=l�@�Ip��Z����6h�����W�8"��H=�N�L�uPl-��8�ŕ�Q3tt�!�D}�u��i��~����P{ܡPE.1.����XPՅ�8�9�	�������N>3��I`��!��L�iϔ��몄�U�J��` � �s�D�^?���f��%��a�aJ粽��no#J^���C���Z@Bw�CjP�?�.)�s�J
m��1�͒�Y'{\Y����[��N��ϗ�m�ߜ��qO�S�ru0�q��'w�7��~����R@�4������E��]b60	�}����9[.�7� vG��SGu
l̔���x+�w��N����}�$��:!��7lZ��=�Ps����&����M+O����]����i�#)�jJlai�C2� �f=�+��`�5.���a)����:�q��fu��SAx�;e8��ܵiq�;��}��	I$R$õj��%p�ZH�qN��������f�uX R�F5�JLb�����g�!�>�ڧs�SC�n�}����h���ؔ�a�һ�,�| x�����+���'��Q�a�x6n�9���6/����I���G5d���x�D�]��U>)�����Ab���N��=7�Dbq�g���x���Ka7����ʴ�D�B+[�������>�	�X}��K�H�d�'�Խ�>��4 \/��I�n���ZȜ1;�4�%�X�~!��`��{���.�\�8J��\������B)��.��2�e�xfL=��YM���q��e�td��ܑ��s���6�,����E5c� �J�:
�$ӝ	K��������#|?�nL�F�ӄ�g�!mO�h���p�0���د�蓰	B`�90�-K�Q�%���"OP66�Vi�]��J3�-����qП���$>��T#whg�%	�M�~��$�^�2\\�c  ç�K�WɄs��wct͒�O�����$i��a�����J�x���w�|����˛��
��ѭ���p��w^=98���]pǀ��0�L�Ț+48�6p/h�Ԫ��Z
/�#*0����:J��YsG�QhW������߃�?S��|7�ß�ɲĢ����d{8ݿ�U��h��[����M���(���Gi5'Lol���iX��d�(t�m�����yj��E榏hcl�]�����ɧL��Ni����ۦ���x/UHŝ!�L�+4Iq(��9�ΰ�DQ��A�ȝ����ş�*������+�$8�R,4��&q�:ª	y�dk.�.�2<b���7h����Mq,^�,o�E�2��n�w[1�5Vi����+:�ͷ��-��bm3��V��������b5��O�P��ICQ��������hL�s�,�I�=������,�� ��ɾ��i����Ϲ��qGͱa�H�VήN�diXHd�:jK!��}u7�K�;a�����Xw��ex�´g�33��F�����HZ��5<�)u��Q�􀶵
�V%��Ar�C8n����&7�s4�P��^i�/^��[hF\V��s�y.��m�\��w���8:5:��+�d:o��fZ2���u9�_�m�@y�A9#+��&�_��\A��3�{%:~�i���yX����-�����p�E_�n9C��c?�/r�+���7 N�ۍ��i���j�3y���0p�z�튆(�E���`�X�ۡ��vr�M�u�{gt&5sn*Q��?̼թ��*f�c_묜�a6��6��s7�[��(s��5)1 �  ����9�"���6�T��?�P�e��;@j���w%Ђ�P�cLq����<�4�$�.�S��Ӊ�Z�]��%��6/�`]�U��Jl�`Kޥ�q������,u��c?�ľ���,ԈGm�D��on�����[�艩�g5�Ѭ�Q	��B���'ɡMg�,W	��EEw:L	$���ۜ��[f��Q�����>�n���]\Ym]8YoNPy��«���O�-�Gtᅬ�9�d��I�0�R�¥�������}�����l���t� �I�x��C�����(G�����(n߆U._�\+.V���K���Ak����(�yG%���)窇��w:\xrN��Ny窘9���Yf����D|q%�j��C�3�v��$vAv{�b�2f��U���Lr�����%�4��L�I�a���j؞x��za�`zG�hfVZԘ�S�>�gRr�ݴ��+�Y���ӆ�N$�v�(���zN�63~������g���",ӥ�H�3!�Q����.\�^��LsأNwJ��������>M����ֆ��_��^i�=�c@w�����e�h��n}����mto�l$�7�P�8���33��ڰ���\`��F�U^��B3��_H"��������P}�? sh�H��R�ݜ��m�+y��d��(���^b�{�vz&����qiN:�5ޔ��虯=4~�f&="���e���] �0�
9V1�����k���_^��������Pҿ8���%�'�`\0��p�8NB-Ӧ��C�އ�|4i��ڔH;�Ψ���{��*���Du���(RRo"�d��.P�/:�G�i�c^&V�w~i���y�7����qs�k�߇s��=�/���r�77k@쫜�����Bf~un=N����'v������f&L@l�rQ�+�B)�<�n�+��<45�_�o��*��ItmN��m����wo#xY�����y�*I����5q���}/!>�ڪ�<����%x{�ө@��
!���M��ʫi]�/~�fl��s�D�#ڐ$� v{<����czJ��ڻ���̻?� ��^|�d뎎V��6w/mFPS���.�#�Ŋ��D��w���R
���={����5����'���\���-�` �dy�Z�"}�Edo�X�+�7��X����X�kի.����qC'�Ç�Q�f88� �A�JP#��4�^��̪q�l����Wy��<{o�[�>6q��sQ����G���uwv_p%N{x\�}�Q0��^F��"K�eG〡x�RoH����<�fw�0v\s�4�lQS.˄�M&|)L���Q�����bŨYp]Z�Kù�2�e?)��q4�R��2(ADF.$�'*���<,yn�|�]p�/��b1��.��q�5 �]F�����3��X�z��ǔ��8ob�j[���ì�{!��hsXr�BRr�%���6��n��e���=#w��P��ǐ3�Cz#�AIn� �x�48�2���;@�v�:b���>��.���i���x�������88.e7��8���L|�{�{�ތ��J�oL3�c ���7�SFhf��m返֕��)i������Q��������:YV�&��� Z�]}ȏ`�;J��#���;�{���I�R��(|��|���k�c{"�@� ��}}��^�)W� �?���C��oB��q���5��d�޺��<�� {�
b;*�p*&���<O}���S-,�B�~X��!U����F��q�<��;�4BZ��V��呩��SD�$渔:�*�{��f"�U��<��.3�C���W�'���r�p\�6`���8WO;R>@���j���V��q����,�$H��.u�-��H,����<3 ݽ��W�k3k���N��ɪ2]i���*�d�ƴ��3���<����D
�      �      x��]�rGv}V}E��U�Y��D8�b�Č�<o�.��AR��-/6� A���_�����ꮪ�Uy���&��r��I��?��'�~���~��o�����?��������?��_���>��O����g�������O�������j�:Z��ޮN����׫w��&|�|}{u�z�����=������x��w��>|�|ϵ������bu���:X�Y߃oY�7_�r�Z���:|�;�|��e�.���'��뫋�����0|S���q�=YK�~mޗz!ć�~X�=���nb���"j�c�|�E��Y��DN����%����z�(c�.�L{��;����x������P�ʗ@Jo��q	��3��Kqf�,L-8�[O-
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