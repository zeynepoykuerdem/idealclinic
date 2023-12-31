toc.dat                                                                                             0000600 0004000 0002000 00000042263 14524613042 0014447 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       '    	        
    {            blog    16.0    16.0 <    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         5           1262    17448    blog    DATABASE     x   CREATE DATABASE blog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE blog;
                postgres    false         �            1259    17509 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false         �            1259    17508    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    227         6           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    226         �            1259    17475    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false         �            1259    17474    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221         7           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220         �            1259    17450 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false         �            1259    17449    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216         8           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215         �            1259    17467    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false         �            1259    17487    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false         �            1259    17486    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    223         9           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    222         �            1259    17499    posts    TABLE     �  CREATE TABLE public.posts (
    id bigint NOT NULL,
    post_basligi character varying(255) NOT NULL,
    metin text NOT NULL,
    "yayinlanmış" boolean DEFAULT false NOT NULL,
    "yayınlanma_tarihi" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    post_foto character varying(255),
    yazar character varying(255)
);
    DROP TABLE public.posts;
       public         heap    postgres    false         �            1259    17498    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    225         :           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    224         �            1259    17516    tags    TABLE     �   CREATE TABLE public.tags (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tags;
       public         heap    postgres    false         �            1259    17515    tags_id_seq    SEQUENCE     t   CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    229         ;           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    228         �            1259    17457    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    17456    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218         <           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217         y           2604    17512    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227         t           2604    17478    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221         r           2604    17453    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216         v           2604    17490    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223         w           2604    17502    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225         z           2604    17519    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229         s           2604    17460    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218         -          0    17509 
   categories 
   TABLE DATA           @   COPY public.categories (id, created_at, updated_at) FROM stdin;
    public          postgres    false    227       4909.dat '          0    17475    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221       4903.dat "          0    17450 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216       4898.dat %          0    17467    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    219       4901.dat )          0    17487    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223       4905.dat +          0    17499    posts 
   TABLE DATA           �   COPY public.posts (id, post_basligi, metin, "yayinlanmış", "yayınlanma_tarihi", created_at, updated_at, post_foto, yazar) FROM stdin;
    public          postgres    false    225       4907.dat /          0    17516    tags 
   TABLE DATA           :   COPY public.tags (id, created_at, updated_at) FROM stdin;
    public          postgres    false    229       4911.dat $          0    17457    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218       4900.dat =           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    226         >           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220         ?           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);
          public          postgres    false    215         @           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    222         A           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 2, true);
          public          postgres    false    224         B           0    0    tags_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tags_id_seq', 1, false);
          public          postgres    false    228         C           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    217         �           2606    17514    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    227         �           2606    17483    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221         �           2606    17485 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221         |           2606    17455    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216         �           2606    17473 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219         �           2606    17494 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    223         �           2606    17497 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    223         �           2606    17507    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    225         �           2606    17521    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    229         ~           2606    17466    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218         �           2606    17464    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218         �           1259    17495 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    223    223                                                                                                                                                                                                                                                                                                                                                     4909.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4903.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4898.dat                                                                                            0000600 0004000 0002000 00000000567 14524613042 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2023_11_13_143720_create_posts_table	1
6	2023_11_13_143737_create_categories_table	1
7	2023_11_13_143747_create_tags_table	1
8	2023_11_13_182402_alter_table_posts	2
\.


                                                                                                                                         4901.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4905.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4907.dat                                                                                            0000600 0004000 0002000 00000072047 14524613042 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Gülümseyin Gülümsemek Bulaşıcıdır	Gülümsemek… Sebepli, sebepsiz. Gülen bir yüz ile karşılanmak, karşılamak. Tanısan da tanımasan da karşındakini ne güzeldir. Biz ilk gülümsememizi ikram ediyoruz kapıdan girdiğinizde. Sıcacık demli çayımız ve mis gibi köpüklü kahvemiz sonra geliyor.\n\nEn iyi ilaç diyoruz ya hep; iyileştirici, onarıcı, motive edici, rahatlatıcı gücüne inandığımız için sihirdir tebessüm. Açamadığı kapı, yumuşatamadığı ifade yoktur sanki.\nBekleme odasındaki endişeli, ürkek bakan gözler kısacık ama samimi bir cümleyle, bazen tatlı bir sohbet ile, bazen ise sessiz içten bir gülücük ile yumuşayıverir. Hafif bir müzik eşliğinde, tatlı bir sohbetle biten tedavilerden geriye güzel anılar kalır bize ve hastalarımıza.\nYedi renkli çiçek gibi bizim çocuk kliniği günlerimiz. Ağlayan, gülen, koşuşturan, meraklı, endişeli, kendinden emin, cesur çocuklarımız var bizim tedavilerini sürdürdüğümüz.\nHiç şikayeti olmasa bile, arada kapımızı çalıp bir kahvemizi içmeye gelen hastalarımız, dostlarımız var.\nHatırlarda kalmak, yıllar sonra bile karşılaşıldığında bir diş tedavisinden gülerek, eğlenerek bahsedebilmek ne kıymettir…\nBiz güler yüzümüz ve tüm içtenliğimiz ile sizin “Diş Tedavi Hikayeniz” de yer almayı bekliyoruz.\nGülümseyin! Gülümsemek bulaşıcıdır.\nSevgiyle	t	2019-06-19	\N	\N	https://idealclinic.com.tr/wp-content/uploads/2019/04/g%C3%BCl%C3%BCmsemek-1024x683.jpg	IdealClinic
2	Şeffaf Plaklarla, Telsiz Diş Düzeltme (Ortodonti) Tedavisi Ile Çapraşık Dişlerinizi Tedavi Edebilirsiniz.	Dijital ortodontik tedavi teknolojisi olan Invisalign, dişlerinize uygun yapılmış şeffaf plaklar (aligner) ile dişlerinizi düzeltmek için uygulanan telsiz ortodontik tedavidir. Telsiz ortodontik tedavi olanağını sunan invisalign’ın en önemli tercih edilme nedeni, dişlerinizin çapraşıklığını düzeltirken ortodontik tedavi gördüğünüzün belli olmamasıdır. Kişiye uygun şeffaf plaklarla, daha hızlı ve neredeyse görünmeyecek derece estetik algıyla yapılan bu tedaviyle diş teline göre daha özgürsünüz.\n\n \n\nDiş teli olmadan dişler nasıl hareket ediyor?\n\nDişlerin hareket edilmesi istenen pozisyona göre seri şeklinde invisalign plakları üretilir. Her bir plak 0.05 mm’ lik hareket yaratır. Plaklar 7-10 gün boyunca takılır ve sonrasında diğer plağa geçilir.\n\n \n\nInvisalign tedavim öncesinde tedavi sonunu görebilecek miyim?\n\nEvet. Tedavi planınız sanal ortamda oluşturulduktan sonra tedavi sonunu üç boyutlu olarak görebilirsiniz. Tüm tedavi boyunca dişlerinizin hareketini sanal ortamda gözlemleyebiliyorsunuz.\n\n \n\nHerkes invisalign yaptırabilir mi?\n\nHem erişkinlere hem de genç ve çocuklara uygulanabilen bir ortodontik tedavidir. Ortodonti ihtiyacı olan hastaların %90′ ı Invisalign tedavisine uygun olup, kesin olarak doktorunuzun muayenesi sonucunda netleşir. Orta ve hafif diş çapraşıklıkları invisalign ile tedavi edilebilir. Diş çekimi yapılması gereken bir ortodontik tedavi invisalign ile de tedavi edilebilir. Invisalign ile çekimli tedavi yapılmasını ancak doktorunuz belirleyebilir.\n\n \n\nInvisalign tedavisinin en büyük avantajı nedir?\n\nInvisalign’in en önemli özelliği, günlük yaşamınızı sosyal , estetik ve duygusal yönden olumsuz anlamda kesinlikle etkilemiyor olmasıdır.\n\nÖncelikle\n\n, Invisalign ağzınızda hemen hemen hiç görünmez ve tedavi süresince istediğiniz gibi gülmeye devam edebilirsiniz.\n\nPlaklarınızı yemek yerken, bir şey içerken ya da diş fırçalarken kolayca çıkartabilir, dilediğiniz yemeği yiyebilirsiniz.\n\nTedavi metalsiz yapıldığı, yumuşak plaklar kullanıldığı için diş ve diş etlerinizi rahatsız edecek bir durum yaşamazsınız.\n\nInvisalign, hem çocuklara, hem gençlere, hem de yetişkinlere rahatlıkla uygulanabilir.\n\nInvisalign tedavisinde ağrım olacak mı?\n\nDişlerin hareket edebilmesi için bir kuvvet uygulanması gerekmektedir. Şeffaf plakları ilk defa taktığınızda bir baskı hissedeceksiniz. Dişleriniz bu baskıya kısa bir süre sonra adapte olacaktır.\n\n \n\nInvisalign tedavimde kontrollerim ne sıklıkta olacak?\n\nKontrolleriniz ayda bir olacaktır. Her kontrolde size 3-4 adet yeni şeffaf plak teslim edilecektir. Şeffaf plaklar 7-10 günde bir değiştirilir.\n\n \n\nŞeffaf plakları ne kadar süre ile takmam lazım?\n\nŞeffaf plakları günde ortalama 20 saat takmanız gerekir. Sadece yemek yerken çıkartmanız önerilmektedir. Onun dışında çok önemli bir toplantı gibi en fazla 1-2 saatlik bir süre zarfında da çıkarabilirsiniz.\n\n \n\nBir şeyler içerken şeffaf plaklarımı çıkartmam gerekir mi?\n\nNormal sıcaklıkta veya serin içecekler içebilirsiniz fakat çay gibi sıcak şeyler içerken çıkartmanız önerilir. Invisalign plakları thermoplastik olduğundan sıcakta deforme olabilir.\n\n \n\nİnsanlar ağzımdaki invisalign plaklarını fark eder mi?\n\nTedavi olan hastalarımızdan aldığımız geri dönüşler kendileri söylemediği sürece kimsenin ağızlarında bir plak olduğunu fark etmediği yönünde. Bir çok hasta yemek yerken çıkartıldığında arkadaşların “ağzında bir şey mi vardı senin?” diye tepki aldığını söyler.\n\n \n\nInvisalign tedavisi konuşmamı etkiler mi?\n\n1-2 günlük alışma dönemini geçirdikten sonra bir sıkıntı yaşamazsınız. Eğer bir toplantıda çok uzun süre konuşmanız gerekecekse 1-2 saatliğine invisalign plaklarını çıkartabilirsiniz.\n\n \n\nInvisalign plaklarımın bakımını nasıl yapacağım?\n\nHer sabah ve akşam invisalign plaklarınızı ılık suyun altında diş fırçası ile temizleyebilirsiniz.\n\n \n\nSigara içiyorum şeffaf plaklarım sararır mı?\n\nEğer çok içiyorsanız belli bir zamandan sonra sigara içmeyen bir kişiye göre şeffaf plaklarınız da sararma olacaktır. Fakat invisalign plaklarınızı 15 günde bir değiştireceğiniz için bu sararma aşırı olmayacaktır.\n\n \n\nNormal diş teli ile mi yoksa invisalign (telsiz ortodontik tedavi) ile mi tedavi daha kısa sürer?\n\nTedavi süresi vakaya göre değişmektedir. Fakat invisalign tedavisinde bilgisayar teknolojisi kullanıldığından hareket istenmeyen bölgeye kuvvet uygulanmaz. Hafif ve orta çapraşıklıklar da kullanıldığı için de invisalign tedavi süresi normal ortodontik tedavi süresine göre nispeten daha kısa olabilmektedir.\n\n \n\nYine hastalarımızda gözlemlediğimiz bir durum olarak şunu söyleyebiliriz invisalign tedavisi yani telsiz ortodontik tedavi görenlerin tedavinin ne zaman biteceği şeklinde bir kaygıları olmamaktadır.\n\n \n\nInvisalign tedavi ücretleri pahalı mıdır?\n\nHemen hemen hiç gözükmediği için normal diş teli tedavisine göre pahalı bir yöntemdir. Invisalign tedavi ücretleri 7000-20000TL arasında değişmektedir.\n\nInvisalign tedavimden önce bir hazırlık yapılması gerekiyor mu?\n\nEvet. Invisalign tedavisine başlamadan önce bütün çürüklerin temizlenmiş olması, diş taşlarının temizlenmiş olması ağız içindeki tüm bakım işlemlerinin bitmiş olması gerekmektedir. Doktorunuz duruma göre bazen 20 yaş dişlerinizin çekimini invisalign tedavisinden önce isteyebilir. Ölçü alındıktan sonra ağızda herhangi bir işlem uygulanmaz. Köprü, implant gibi protetik işlemler invisalign tedavisi bittikten sonra yapılır.\n\n \n\nInvisalign aligner’larında plastik malzeme imalatında kullanılan Bisphenol-A var mı?\n\nInvisalign aligner’ları, bebek biberonlarında ve pet şişelerde kullanılan ve birçok sağlık sorununa yol açtığı için Kanada, USA ve Avrupa Birliği tarafından kullanımı yasaklanan Bisphenol-A veya fitalat (phthalates) maddelerini kesinlikle içermemektedir. Bu yüzden, Invisalign tedavisini yaşamınızın her döneminde, hamilelik, süt verme dahil güvenle yaptırabilirsiniz.\n\n \n\nInvisalign tedavim bittikten sonra herhangi bir işlem yapılıyor mu?\n\nInvisalign tedaviniz bittikten sonra (bütün ortodontik tedaviler için geçerli) dişlerinizi iç tarafına çok ince “retainer” denilen sabitleyici teller takılır. Bu ince tel kesinlikle dışarıdan gözükmez. Dişleriniz de herhangi bir oynama veya geri dönme olmaması için takılır. Süresini ortodontistiniz size açıklayacaktır.	t	2019-06-19	\N	\N	https://idealclinic.com.tr/wp-content/uploads/2019/04/ortodonti-1024x683.jpg	IdealClinic
3	Dişeti Hastalıkları Ve Tedavi Yöntemleri	PERİODONTAL HASTALIK NEDİR ?\n\nPeriodontal hastalıklar dişeti ve dişleri destekleyen diğer dokuları etkileyen iltihabi hastalıklardır. Erişkinlerde diş kayıplarının %70`inden periodontal hastalıklar sorumludur. Bu hastalıklar erken dönemde teşhis edildiklerinde kolay ve başarılı bir şekilde tedavi edilebilirler. Dişeti hastalıklarının önlenmesi veya tedavisi; doğal dişlerin korunması, daha rahat çiğnemenin ve daha iyi bir sindirimin sağlanması gibi diğer faydaları da beraberinde getirir.\n\nPeriodontal hastalıklar dişeti iltihabı (gingivitis) ile başlar. Yani gingivitis periodontal hastalığın erken dönemidir. Bu dönemde dişetleri kanamalı, kırmızı ve hacim olarak büyümüştür. Erken dönemde çok fazla rahatsızlık vermeyebilir. Tedavi edilmezse hastalık periodontitise ilerleyerek dişeti ve dişleri destekleyen alveol kemiğinde geriye dönüşsüz hasar oluşturabilir.\n\nPeriodontitis periodontal hastalıkların daha ilerlemiş bir safhasıdır. Dişleri destekleyen diğer dokularla birlikte alveol kemiğinde de hasar oluşur. Diş-dişeti arasında “periodontal cep” oluşur. Periodontal cep varlığı infeksiyonun yerleşimini ve hastalığın ilerlemesini kolaylaştırır. Hastalık ilerledikçe dişler sallanmaya başlar, hatta çekime gidebilir.\n\nSAĞLIKLI DİŞETİ NASIL OLUR ?\n\nSağlıklı dişeti açık pembe renkli, mat, yüzeyi portakal kabuğu gibi pütürlü ve sert kıvamlıdır. Sağlıklı dişeti fırçalama veya dokunma ile kanamaz.\n\nDişeti hastalığının belirtileri nelerdir?\n\nDişeti hastalığının pek çok bulgusu vardır;\n\nDiş fırçalama sırasında kanayan dişetleri\nKırmızı, şiş ve hassas dişetleri\nDişlerden kolaylıkla ayrılabilen, uzaklaşan dişetleri\nDişler ve dişetleri arasında iltihabi akıntı\nSallanan veya giderek birbirinden uzaklaşan dişler (dişler arasında aralıkların oluşması veya mevcut aralıkların artması)\nIsırma sırasında alt ve üst dişler arasındaki ilişkilerin değişmesi\nBölümlü protez uyumundaki değişiklik, bozulma.\nSürekli kötü ağız kokusu.\n\nBununla beraber, periodontal hastalık hiç bir bulgu vermeden de ileri safhalara ulaşabilir. Bu nedenle düzenli aralıklarla dişhekimine gitmek son derece önemlidir.\n\nDişeti hastalığının nedeni nedir?\n\nDişeti hastalığının en önemli nedeni “bakteriyel diş plağı” adı verilen, dişler üzerinde biriken yapışkan ve renksiz film tabakasıdır. Günlük fırçalama ve diş ipliği kullanımı ile diş plağının uzaklaştırılması sağlıklı bir ağız için temel gereksinimdir. Eğer plak etkin bir şekilde dişlerden uzaklaştırılmazsa diştaşı veya tartar olarak bilinen düzensiz yüzeyli ve geçirgen bir yapıya dönüşür. Plaktaki bakteriler tarafından salınan zararlı ürünler dişetinde irritasyona neden olur. Bu ürünler nedeni ile dişetini dişe sıkıca bağlayan lifler yıkıma uğrar, dişeti dişten uzaklaşır ve periodontal cep oluşur. Böylece bakteri ve ürünlerinin daha derin dokulara ilerlemesi kolaylaşır. Hastalık ilerledikçe cep derinleşir, bakteriler daha derine; kemiğe kadar ilerler ve dişi destekleyen alveol kemiğinde de yıkım başlar. Hastalık tedavi edilmeden bırakılırsa sonunda dişler sallanır ve çekimleri bile gerekebilir.\n\nDİŞETİ HASTALIKLARI NELERDİR?\n\nDişeti hastalıkları (periodontal hastalık), dişi değil dişi çevreleyen ve destekleyen dokuları etkileyen bir enfeksiyon hastalığıdır. Hiç çürüğü olmayan dişler bile bu hastalık nedeniyle kaybedilebilir. Periodontal hastalıklar bir veya birçok dişi etkileyebilen; çocuklarda, büyüme çağındaki bireylerde, erişkinlerde ve yaşlılarda görülebilen toplumdaki en yaygın kronik hastalıklardır. Genellikle ağrısız seyrettiği için belirtileri hasta tarafından zor farkedilir ve çoğu vakada hekime geç müracaat edilir.\n\nDiş çevresi destek dokular; dişeti, diş kökü, çene kemiği ve dişin kökünü çene kemiğine bağlayan liflerdir ve bu yapı “periodonsiyum” adını alır. Enfeksiyonun sadece dişetini etkilediği durumlar “gingivitis” olarak isimlendirilir. Gingivitisin belirtileri; kırmızı, şiş, parlak, yumuşak kıvamlı ve kolay kanayan dişetidir. Kanama en önemli belirtidir.\n\nDaha ileri olgularda dişeti ile birlikte yukarıda belirtilen diğer dokuların da etkilendiği durumlar “periodontitis” olarak tanımlanır. Periodontitisin belirtileri; dişetinde kanama, kırmızı/mavimsi-morumsu renk değişikliği, dişeti çekilmesi, dişeti büyümesi, dişlerde yer değiştirme, aralanma, uzama, sallanma, abse oluşumu, hassasiyet ve kötü ağız kokusudur. Ağrı genellikle abse oluşumu ile birlikte görülür. Sonuçta periodonsiyumda enfeksiyon, estetik bozukluk, çiğneme kaybı ve yapılacak protezleri taşıyamayacak hastalıklı ve desteği azalmış bir alt yapı meydana gelir.\n\nPeriodontal hastalık tipleri nelerdir?\n\nPeriodontal hastalığın tipi periodontal tedavinin başarısını etkileyen önemli bir faktördür. Pek çok periodontal hastalık tipi vardır. En sık görülenler şunlardır:\n\nGingivitis\n\nPeriodontal hastalıkların en hafif seyreden şeklidir. En önemli nedeni mikrobiyal dental plaktır. Dişetinde ödem, kırmızı renk, parlaklık, fırçalama sırasında veya kendiliğinden kanama ve ağız kokusu ile farkedilir. Bu dönemde ağrı ya hiç yoktur, ya da çok azdır. Gingivitis tedavi ve doğru ağız bakımı ile tam olarak tedavi edilebilir. Ayrıca, dişetine batan cisimler de dişetinde abse ve akut ağrı meydana getirirler.\n\nKronik periodontitis\n\nEn sık görülen periodontitis tipidir. Erişkin yaştaki bireylerin çoğunda mevcuttur. Çok yavaş ilerler, belirtileri geç ve zor farkedilir veya normal zannedilerek önemsenmez. Bu nedenle bazen tedavide geç kalınmış olunabilir. Dişi çevreleyen destek dokuların enfeksiyonu ve yıkımıdır. Sırasıyla dişeti, dişetini dişe bağlayan ve diş kökünü diş kemiğine bağlayan lifler ve diş kemiği eriyerek cep meydana gelir. Dişeti altındaki kök yüzeyi üzerinde mikrobiyal dental plak ve diştaşları, aynı zamanda cep boşluğu içinde bakteriler ve yiyecek artıkları birikerek ve çoğalarak bu enfeksiyonun daha derin dokulara ilerlemesine ve dişin kemik desteğinin azalmasına neden olur. Belirtileri; koyu kırmızı, morumsu dişeti rengi, dişeti çekilmesi/büyümesi, dişlerde aralanma, uzama, dönme, sallanma, fonksiyon bozukluğu, dişler arasına ve cepler içine yiyecek artıklarının dolması, abse oluşumu, ağız kokusu, estetik bozukluk olarak sıralanabilir. Başlangıç ve orta düzeydeki kronik periodontitis cerrahi olmayan yöntemlerle tedavi edilirken, ileri düzeydeki kronik periodontitis ilave cerrahi yöntemlerle tedavi edilir. Diyabet gibi bazı sistemik hastalıklar ve bağışıklık sistemini etkileyen hastalıklar, stres ve sigara gibi faktörler kronik periodontitisin şiddetini ve tedaviye verdiği yanıtı etkiler.\n\nAgresif periodontitis\n\nDaha az sıklıkla ama daha şiddetli şekilde ve genç bireyleri etkileyen periodontitis tipidir. Bu durum kalıtsal da olabilir. Bireyler sistemik olarak sağlıklıdır. Yerel ve yaygın olmak üzere 2 tipi vardır. Yerel tipinde dişeti ile ilişkili klinik belirtiler az, ama cep derinliği ve kemik yıkımı ileri boyuttadır. Yaygın tipinde ise\n\nBuy Cialis Professional UK\n, hem klinik belirtiler de fark edilebilir düzeydedir hem de kemik kaybı daha çok sayıda dişi etkilemiştir. Tedavisi kronik periodontitise göre daha zor ve karmaşıktır.\n\nSistemik hastalıklarla birlikte görülen periodontitisle\n\nPeriodontitis; bazı kan hastalıkları, metabolik hastalıklar, genetik hastalıklar ve bağışıklık sistemini etkileyen hastalıkların ağız içi belirtisi olarak da görülebilir. Tedavisi tıp doktoruyla beraber yürütülür.\n\nNekroz oluşturan periodontal hastalıklar\n\nDişler arasını dolduran üçgen şeklindeki dişetinin tepesinden başlayarak dişetinin yok olmasına(nekroz) ve tedavi edilmediğnde ilerleyerek kemik erimesine yol açan periodontal hastalıklardır. Sigara içenlerde, psikolojik stres altında olanlarda, ağız hijyeni çok kötü olanlarda, AIDS hastalarında daha sıklıkla görülür. Hastalar şiddetli ağrıdan şikayet ederler.\n\nDişeti absesi ve periodontal absele\n\nDişetine batan yabancı maddeler dişetinde abse meydana getirir. İlgili bölgede kırmızı renk, şişlik ve hassasiyet vardır. İleri kemik erimesi olan ve tedavi edilmemiş vakalarda ise periodontal cep içindeki bakteri sayısının artması ile derin dokuları etkileyen periodontal abseler meydana gelir. Ağrı, şişlik, kırmızı – morumsu renk, kanama, cerahat akışı gibi belirtiler gösterir.\n\nAğız genel sağlık ilişkisi,\n\nBu tür enfeksiyonlar sadece ağız içini etkilemekle kalmaz, bakterilerin toksik ürünlerinin kan dolaşımına katılmasıyla bireyin genel sağlığını da etkiler. Son yıllardaki çalışmalar dişeti iltihabına sahip bireylerde bazı sistemik hastalıkların gelişme riskinin arttığını göstermiştir. Artan bu riskin tıbbi risk faktörlerinden bağımsız olduğu ve dişeti iltihabının şiddetiyle ilişkili olduğu belirlenmiştir. Bu çalışmalar sonucunda dişeti iltihabının diyabet, kalp-damar hastalıkları, ateroskleroz, bazı solunum sistemi hastalıkları, bebeklerde düşük doğum kilosu ve erken doğum riskiyle ilişkisi saptanmıştır.\n\nDİŞETİ HASTALIKLARININ TEDAVİ YÖNTEMLERİ NELERDİR ?\n\nPeriodontal hastalıklar, büyük bir oranda önlenebilen ve kontrol altına alınabilen hastalıklardır. Tedavi; iyi ağız hijyeninin sağlanmasına, doğru ve erken tanıya ve doğru tedavi yaklaşımlarına bağlıdır. Bu nedenle hem hastanın hem de hekimin tedaviye aktif olarak katılımı gerekir.\n\nTedavinin 1. aşaması\nPeriodontal tedavide en önemli aşama enfeksiyonun ortadan kaldırılması ve hastanın etkili ve düzenli bir şekilde dişeti, diş ve dişler arası temizliği uygulayarak ağız sağlığını koruyabilmeyi öğrenmesidir. Enfeksiyonun ortadan kaldırılması; hastalığa sebep olan mikrobiyal dental plak, diş taşı ve diş taşının tutunduğu kök yüzeyinin hekim tarafından temizlenmesi ve hastanın bu durumu koruması ile mümkündür. Bu işlem “başlangıç tedavisi” adını alır, her tip periodontal hastalığın tedavisinde vazgeçilmez aşamadır ve vakanın durumuna göre 3-4 seansta gerçekleştirilir. Başlangıç tedavisi sırasında kötü ve taşkın dolguların yenilenmesi, çürük dişlerin doldurulması, dişeti kenarı ile uyumu ve şekli doğru olmayan protezlerin düzeltilmesi gibi bakteri tutunmasını kolaylaştırıcı yerel faktörlerin uzaklaştırılması, kanal tedavileri ve varsa ümitsiz dişlerin çekimi gerçekleştirilmelidir. Ayrıca sistemik bir hastalığın varlığında tıbbi konsültasyonlar da bu safhada yapılır. Bu aşamada olası protezler için planlama yapmak da gereklidir.\n\nTedavinin 2. aşaması\nPeriodontist başlangıç periodontal tedavi aşaması ile tam olarak tedavi edilemeyen bir durum tespit etmişse periodontal cerrahi işlemler önerecektir. Başlangıç periodontal tedavi sonrasında kalan cep derinlikleri, dişeti büyümeleri ve çekilmeleri, kemik erimesinin varlığı ve şekli, dişeti miktarı gibi veriler alınacak kararı etkiler. Tüm periodontal hastalıklar ve defektler aynı cerrahi işlemlerle tedavi edilemezler. Tedavi seçimindeki belirleyici faktörler, hastaya ve dokuya ait özellikler ve mevcut periodontal hastalığın seyri ve yaygınlığıdır.\n\nCerrahi periodontal tedavinin ana amacı; cep derinliklerini ortadan kaldırmak\n\nYou’ll survive to take the country lobby at the community to avoid you caught the treatment. After the accuracy of the approaching, the stores taken on the current reviews and aiming of the affected sales. If you have any bacteria about staff mechanisms, like to your fever or aspirin. Buy Betapace Online without Prescription If you only have University pharmacies after 2 or 3 laws of medicines, that’s a delivery you’re also dispensing to boards and use to send on a private one.\n, kemik-dişeti ve diş ilişkisini orijaline benzetmeye çalışmak, böylece hastanın ve hekimin kolay temizleyebileceği bir ortam yaratmaktır. Bu nedenle “düzeltici tedavi” olarak da isimlendirilir.\n\nCerrahi Tedavi Tipleri\n\nOperasyonlar lokal anestezi altında yapılır. Gerektiğinde operasyon öncesinde tıbbi konsültasyonlar ve tetkikler istenir.\n\nGingivektomi\n\nSadece dişetini ilgilendiren bir işlemdir. Dişeti cebinin ve diş eti büyümelerinin ortadan kaldırılması için bir miktar diş etinin kesilip çıkarılmasıdır. Böylece hastalığın ilerlemesi durur, hasta kolay temizleyebileceği ve daha estetik bir dişetine sahip olur .\n\nFlep operasyonu ve kemik cerrahisi işlemleri\n\nHem dişetini hem de altındaki destek dokuları ve kök yüzeylerini ilgilendiren bir işlemdir. Kemik erimesi olan vakalarda uygulanır. Bu teknikle dişetinin uygun bir şekilde kaldırılarak alttaki dokulara ulaşılması ve tedavisi sağlanır. Kök yüzeylerinin tam olarak temizlenmesi ve cep derinliği azaltma işlemi ana amaçtır. Daha önce de bahsedildiği gibi derinleşen cepler içerisindeki bakteriler daha fazla kemik yıkımına dişin kaybına yol açacağı için bu ceplerin ortadan kaldırılması önemlidir. Operasyondan sonra cep derinlikleri azaltılmış veya ortadan kaldırılmış olur, böylece hastanın ev bakımı ve hekimin profesyonel kontrolleri kolaylaşarak periodontal sağlığı idame ettirmek mümkün hale gelir. Hasta doğal dişlerini koruyabilir ve ceplerden kaynaklanan HASTALIKLARI çalışılır, ya da rejeneratif yöntemlerle kemik onarımı gerçekleştirilerek ve kemik içi cepler doldurularak orijinal kemik seviyesine getirilmeye çalışılır. Bu teknikte doğal veya yapay kemik tozları, bunların üzerini örten membranlar, protein yapısındaki maddeler gibi çeşitli materyaller kullanılır. Çoğu vakada rezektif ve rejeneratif teknikler birlikte uygulanır. Kemik şeklinin düzeltilmesi üstteki dişeti dokusuyla sağlıklı ilişkisi açısından önemlidir.\n\nTedavinin 3. aşaması\nVakanın durumuna göre cerrahi olmayan ve cerrahi olan tedavilerden sonra elde edilen periodontal sağlığın korunması ve hastalığın tekrarının önlenmesi amacıyla hastalar düzenli aralıklarla kontrol programına alınırlar. Başarılı bir periodontal tedavi sonrasında, idame tedavisine alınmayan ve kendi ağız bakımını sağlamayan hastalarda kısa sürede doku yıkımı tekrar başlar ve hastalık belirtileri ortaya çıkar. (cep derinliği artar, kemik kaybı ve diş kaybı olur) Vakaya göre değişen 3-6 aylık aralıklarla hasta periodontist tarafından takip edilmelidir.\n\nKontrol\n\nDiş hastalıkları ve diş sağlığının korunması açısından erken tanı çok önemlidir Bu nedenle yılda en az iki kez diş hekimine muayene olunması önerilir.\n\nDiş çürümelerinin önlenmesinde sularda yetirli flor olması, düzenli olarak dişlerin fırçalanması, diş ipi kullanılması, aşırı tatlı ve şekerli yiyeceklerden olabildiğince kaçınma bunlar yendiğinde mutlaka dişlerin fırçalanması, diş hekimi kontrollerine gidilmesi temel uygulamalardır. Diş eti hastalıklarının önlenmesinde de diş fırçalama ve düzenli diş hekimi kontrolleri önemlidir.\n\nDişlerde gelişim bozuklukları varsa erken dönemde özel diş hekimliği dallarında uzmanlaşmış birimlere başvurularak gerekli tedavi sağlanmalıdır.\n\nAşırı asitli ve şekerli yiyecekler mikroorganizmaların etkisini artırır. Dişler sert cisimlerle karıştırılmamalı, fındık, ceviz vb. Kabuklu yiyecekler dişlerle kırılmamalıdır. Bunlar diş minesinin çatlamasına ve bakterilerin etkisinin artmasına neden olur. Diş minesinin koruyucu etkisi ortadan kalkar.\n\nAğız ve Diş Sağlığınız için…\n\nYapmanız Gerekenler:\n\nHer yemekten sonra dişlerinizi fırçalamalısınız. Yemekten 2 saat sonra bakteriler üremeye başlar.\nYatmadan önce mutlaka dişlerinizi fırçalamalısınız. Gece tükrük salgısı azaldığı için ağız kurur ve bakterilerin üremesine uygun bir ortam oluşur.\n\nÇok iyi bir bakım yapıyor olsanız da yılda en az 2 kez diş hekiminize kontrole gidin.\nDiş fırçası seçimi ve kullanımı:\n\nDiş fırçaları; boyut, şekil ve fırça kıllarının dizilişi, sertliği ve uzunluğuna göre farklılıklar gösterirler. Küçük başlı, sık kıllı, kıl uçları yuvarlatılmış, düz kesimli kıl demetleri olan, yumuşak veya orta sert fırçalar seçilmelidir. Böylece dişler arasına ve ağzın bütün bölgelerine erişip temizleyebilmek kolay olur. Ortalama 4 ayda bir fırçanın değiştirilmesi tavsiye edilir. Sert ve yanlış fırçalama tekniği ile dişeti çekilmesi, diş yüzeyinde madde kayıpları ve hassasiyet oluşmakta, ayrıca tam temizlik etkisi sağlanamadığından çürük ve dişeti hastalıkları önlenememektedir. Diş fırçası ile hem dişler hem de dişetleri temizlenmelidir. Bu amaçla fırçalama sırasında fırça kıllarının yarısının diş yüzeyinde, diğer yarısının de dişeti yüzeyinde konumlandırılması gerekir. Genellikle bu pozisyonda aşırı kuvvet uygulamadan, fırça başını yerinden kaldırmadan ve belli bir sıra takip edilerek yapılmalıdır. Sadece kılları hareket ettirerek minik yuvarlak dairesel hareketlerle bakterilerin biriktiği bu bölgeleri etkili olarak temizlemek mümkündür. Dişler ve dişetleri günde 2 kez (sabah kahvaltıdan ve akşam yemekten sonra) fırçalanarak temizlenmelidir. Peridontist dişeti çekilmesi, ameliyat sonrası gibi farklı durumlarda farklı fırçalama metodları da önerebilir. Pilli / güç kaynağıyla çalışan fırçalar, eğer normal diş fırçası ile etkili fırçalama yapılamıyorsa doğal diş fırçasına ilave olarak önerilebilir.\n\nDişler arası bölgenin temizliği\n\nSadece diş fırçası ile dişlerin birbirine bakan ara yüzeylerin temizliği yeterli düzeyde yapılamaz. Dişeti hastalıkları esas olarak dişlerin ara yüzeylerindeki dişetinden başladığı için bu bölgelerin temizliği çok önemlidir. Bu amaçla dişler arasına yerleştirilebilen çeşitli araçlar kullanılır.\n\nDiş ipi\n\nDişler arasındaki ve dişetinin altında mikrobiyal dental plak ve gıda birikintilerini temizler. Diş ipi kullanımı fırçalamadan sonra yapılmalıdır. Diş ipi iki elin orta parmaklarına sarılıp sabitlenerek ve iki işaret parmağı ile yönlendirilerek uygulanır. Bu şekilde kullanamayan hastalarda sapan şeklinde alt ve üst çeneye uygun olarak açılandırılmış bir taşıyıcı üzerine sabitlenmiş diş ipi ihtiva eden hazır araçlar kullanılabilir. Kullanırken ilgili diş yüzeyinin dişeti altı seviyesine kadar inilmeli ve tüm diş yüzeyleri aşağı-yukarı hareketlerle temizlenmeli ve dişetini kesmemeye özen gösterilmelidir. Günde 1 kez mutlaka uygulanmalıdır	t	2019-06-19	\N	\N	https://idealclinic.com.tr/wp-content/uploads/2019/04/di%C5%9F-eti-1140x640.jpg	IdealClinic
4	Horlama Ve Uyku Apnesinde Bir Tedavi Seçeneği	İnsan hayatını en çok zorlaştıran sorunlardan biridir; horlama ve apne.\n\nHayati tehlikelerini de katarsak ; mutlaka çözülmesi gereken bir konudur.\n\nDiş hekimliğinin konuya el atması ile birlikte çözümü kolay hale gelmiştir.\n\nDiş hekimleri, hastaların uyku apnesi olup olmadığını görmek için harika bir konumdadır. İşte tam da tedavi protokolü oluşturmak için savunma hattı budur.\n\nAğızdan soluk  alıp verme sonucu gevşeyen çene altı kaslarının tonusunun bozulmasıyla hava yolunun daralması en büyük nedendir. Buriksizm de iş içine girince konu daha da ağırlaşır.\n\nSon yıllar da yapılan ağız içi apereyler de  alt çene ileri alınıyor, mekanik yük hafifliyor, kasın tonusu artıyor, sertleşiyor ve hava yolu açlıyor, genişliyor. Hafif ve orta şiddetli apnelerde sorunsuz işleyen bir çözüm oluyor. 2-3 yıllık kullanım sonucu sadece arada birer haftalık kullanımlarla hasta sorunu sona ermektedir.\n\nBu tedavide operasyon yok!!\n\nAlternatif DEĞİL!!\n\nBir tedavi seçeneğidir!!\n\nİyileşme belirtileri ilk geceden itibaren ETKİNLİĞİ KANITLI..\n\nAparey çok kısa sürede hazırlanır…\n\nDizayn nedeni ile kolay tolera edilir…\n\nKilo verme\n\n, nasal bant, spor ve uyku pozisyonunun düzenlenmesiyle etkisi artar. Uyku kalitesi artar. Gece uyanmaları azalır. Dinlenme etkisi tam olur. Gün içi uyku hali olmaz. Yan etkisi ve komplikasyon tarzı yok denecek kadar azdır.	t	2019-06-21	\N	\N	https://idealclinic.com.tr/wp-content/uploads/2019/04/99-min-1140x640.jpg	IdealClinic
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         4911.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4900.dat                                                                                            0000600 0004000 0002000 00000000005 14524613042 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000034445 14524613042 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--DROP DATABASE blog;
--
-- Name: blog; Type: DATABASE; Schema: -; Owner: postgres
--

--CREATE DATABASE blog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';


--ALTER DATABASE blog OWNER TO postgres;

--\connect blog

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    post_basligi character varying(255) NOT NULL,
    metin text NOT NULL,
    "yayinlanmış" boolean DEFAULT false NOT NULL,
    "yayınlanma_tarihi" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    post_foto character varying(255),
    yazar character varying(255)
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, created_at, updated_at) FROM stdin;
\.
COPY public.categories (id, created_at, updated_at) FROM '$$PATH$$/4909.dat';

--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.
COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM '$$PATH$$/4903.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/4898.dat';

--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.
COPY public.password_reset_tokens (email, token, created_at) FROM '$$PATH$$/4901.dat';

--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.
COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM '$$PATH$$/4905.dat';

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, post_basligi, metin, "yayinlanmış", "yayınlanma_tarihi", created_at, updated_at, post_foto, yazar) FROM stdin;
\.
COPY public.posts (id, post_basligi, metin, "yayinlanmış", "yayınlanma_tarihi", created_at, updated_at, post_foto, yazar) FROM '$$PATH$$/4907.dat';

--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, created_at, updated_at) FROM stdin;
\.
COPY public.tags (id, created_at, updated_at) FROM '$$PATH$$/4911.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM '$$PATH$$/4900.dat';

--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 2, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
