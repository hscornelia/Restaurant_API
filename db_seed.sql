--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO sangchulkim;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    category_name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO sangchulkim;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO sangchulkim;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.locations OWNER TO sangchulkim;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO sangchulkim;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: priceranges; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.priceranges (
    id bigint NOT NULL,
    minimum integer,
    maximum integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.priceranges OWNER TO sangchulkim;

--
-- Name: priceranges_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.priceranges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priceranges_id_seq OWNER TO sangchulkim;

--
-- Name: priceranges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.priceranges_id_seq OWNED BY public.priceranges.id;


--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.restaurants (
    id bigint NOT NULL,
    name character varying,
    address character varying,
    business_hour character varying,
    parking_space boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    location character varying,
    pricerange character varying,
    category character varying,
    point double precision
);


ALTER TABLE public.restaurants OWNER TO sangchulkim;

--
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurants_id_seq OWNER TO sangchulkim;

--
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.restaurants_id_seq OWNED BY public.restaurants.id;


--
-- Name: sample_crawling_restaurants; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.sample_crawling_restaurants (
    id bigint NOT NULL,
    title character varying,
    point character varying,
    address character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.sample_crawling_restaurants OWNER TO sangchulkim;

--
-- Name: sample_crawling_restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.sample_crawling_restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_crawling_restaurants_id_seq OWNER TO sangchulkim;

--
-- Name: sample_crawling_restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.sample_crawling_restaurants_id_seq OWNED BY public.sample_crawling_restaurants.id;


--
-- Name: samples; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.samples (
    id bigint NOT NULL,
    title character varying,
    context text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.samples OWNER TO sangchulkim;

--
-- Name: samples_id_seq; Type: SEQUENCE; Schema: public; Owner: sangchulkim
--

CREATE SEQUENCE public.samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.samples_id_seq OWNER TO sangchulkim;

--
-- Name: samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sangchulkim
--

ALTER SEQUENCE public.samples_id_seq OWNED BY public.samples.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: sangchulkim
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO sangchulkim;

--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: priceranges id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.priceranges ALTER COLUMN id SET DEFAULT nextval('public.priceranges_id_seq'::regclass);


--
-- Name: restaurants id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.restaurants ALTER COLUMN id SET DEFAULT nextval('public.restaurants_id_seq'::regclass);


--
-- Name: sample_crawling_restaurants id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.sample_crawling_restaurants ALTER COLUMN id SET DEFAULT nextval('public.sample_crawling_restaurants_id_seq'::regclass);


--
-- Name: samples id; Type: DEFAULT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.samples ALTER COLUMN id SET DEFAULT nextval('public.samples_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-02-02 06:48:34.231246	2020-02-02 06:48:34.231246
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.categories (id, category_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.locations (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: priceranges; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.priceranges (id, minimum, maximum, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.restaurants (id, name, address, business_hour, parking_space, created_at, updated_at, location, pricerange, category, point) FROM stdin;
116	로향양꼬치	서울시 관악구 봉천동 1601-10 푸르빌아파트		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	4.59999999999999964
117	오지 편한식당	서울시 관악구 봉천동 1610-24 대명빌딩 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	기타 일식	4.5
118	동경산책	서울시 관악구 봉천동 1604-8 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	정통 일식 / 일반 일식	4.5
119	뉴욕택시디저트	서울시 관악구 봉천동 1664-16 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	4.5
120	텐동요츠야	서울시 관악구 봉천동 1603-19 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	돈부리 / 일본 카레 / 벤토	4.40000000000000036
121	두만강샤브샤브	서울시 관악구 봉천동 1663-7		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	4.40000000000000036
122	쥬벤쿠바	서울시 관악구 봉천동 1621-17		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	남미 음식	4.40000000000000036
123	차이나당	서울시 관악구 봉천동 1625-29 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	정통 중식 / 일반 중식	4.40000000000000036
124	퍼블리코타코	서울시 관악구 봉천동 1626-12		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	남미 음식	4.40000000000000036
125	소풍가는날	서울시 관악구 봉천동 1657-21		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	4.40000000000000036
126	종로계림닭도리탕원조	서울시 관악구 봉천동 1598-18 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	4.40000000000000036
127	안녕베트남	서울시 관악구 봉천동 1619-1 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	베트남 음식	4.29999999999999982
128	모즈타파스라운지	서울시 관악구 봉천동 1598-6 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	세계음식 기타	4.29999999999999982
129	모힝	서울시 관악구 봉천동 1598-6 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이탈리안	4.29999999999999982
130	기절초풍왕순대	서울시 관악구 봉천동 1620-38		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	탕 / 찌개 / 전골	4.29999999999999982
131	수상한닭발	서울시 관악구 봉천동 1667-5		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	4.29999999999999982
132	어부사시가	서울시 관악구 봉천동 1603-15		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	한정식 / 백반 / 정통 한식	4.29999999999999982
133	더은교	서울시 관악구 봉천동 1632-6		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	4.20000000000000018
134	더멜팅팟	서울시 관악구 봉천동 1613-4		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	브런치 / 버거 / 샌드위치	4.20000000000000018
135	외래향	서울시 관악구 봉천동 874-4		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	정통 중식 / 일반 중식	4.20000000000000018
156	무삥과팟타이	서울시 관악구 봉천동 1632-6 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	태국 음식	4.20000000000000018
157	만석곱창구이	서울시 관악구 봉천동 1667-20		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	4.20000000000000018
158	6회말연어	서울시 관악구 봉천동 851-15 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	4.20000000000000018
159	불닭발동대문엽기떡볶이	서울시 관악구 봉천동 1664-17		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 한식	4.20000000000000018
160	분짜 하노이	서울시 관악구 봉천동 1598-1 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베트남 음식	4.09999999999999964
161	제주상회	서울시 관악구 봉천동 1625-1 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	국수 / 면 요리	4.09999999999999964
162	딸랏롯빠이	서울시 관악구 봉천동 1603-21 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	태국 음식	4.09999999999999964
163	고명집	서울시 관악구 봉천동 858-1 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	4.09999999999999964
164	미스리부자아줌마	서울시 관악구 봉천동 875-1 관악캠퍼스타워 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	해산물 요리	4.09999999999999964
165	생각보다맛있는집	서울시 관악구 봉천동 1598-18 서량빌딩		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	국수 / 면 요리	4.09999999999999964
166	경원치킨	서울시 관악구 봉천동 1632-6		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	4.09999999999999964
167	쟝블랑제리	서울시 관악구 봉천동 1660-7		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베이커리	4
168	나인온스버거	서울시 관악구 봉천동 1625-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	브런치 / 버거 / 샌드위치	4
169	스윗밸런스	서울시 관악구 봉천동 1620-27 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 양식	4
170	옷살	서울시 관악구 봉천동 856-5 대우 디오슈페리움 1단지 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	인도 음식	4
171	엘따뻬오	서울시 관악구 봉천동 1629-4 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	세계음식 기타	4
172	마이무	서울시 관악구 봉천동 1625-23 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	세계음식 기타	4
173	반조	서울시 관악구 봉천동 1598-31 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	4
174	모리돈부리	서울시 관악구 봉천동 1597-7		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	돈부리 / 일본 카레 / 벤토	4
175	링고	서울시 관악구 봉천동 1601-29 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	치킨 / 호프 / 펍	4
196	스시스캔들	서울시 관악구 봉천동 1626-20		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	회 / 스시	4
197	낀알로이알로이	서울시 관악구 봉천동 921-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	태국 음식	4
198	십장생베이커리	서울시 관악구 봉천동 1604-33 1F 101호		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베이커리	4
199	안녕부산	서울시 관악구 봉천동 1611-21		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	국수 / 면 요리	4
200	초와밥	서울시 관악구 봉천동 862-10		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	회 / 스시	4
201	봉이돈까스	서울시 관악구 봉천동 913-35		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	4
202	한우육회마을	서울시 관악구 봉천동 1612-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	고기 요리	4
203	오신매운갈비찜	서울시 관악구 봉천동 1611-24		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	4
204	하라고지페	서울시 관악구 봉천동 1626-12 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	칵테일 / 와인	4
205	오른손푸드카페	서울시 관악구 봉천동 1620-45 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	브런치 / 버거 / 샌드위치	4
206	푸다기	서울시 관악구 봉천동 1628-28		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	4
207	노다지	서울시 관악구 봉천동 1602-28 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	치킨 / 호프 / 펍	4
208	갈매기조나단	서울시 관악구 봉천동 1569-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	4
209	삼육칠하우스	서울시 관악구 봉천동 856-5 대우디오슈페리움1단지		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	4
210	에그썸	서울시 관악구 봉천동 1626-5		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	퓨전 양식	3.89999999999999991
211	려	서울시 관악구 봉천동 874-1 신원 메트로빌 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	4만원 이상	회 / 스시	3.89999999999999991
212	쿠모식당	서울시 관악구 봉천동 1603-15 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	퓨전 일식	3.89999999999999991
214	지구당	서울시 관악구 봉천동 1598-23		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	돈부리 / 일본 카레 / 벤토	3.89999999999999991
215	토끼네마굿간	서울시 관악구 봉천동 1611-37 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이탈리안	3.89999999999999991
236	라이라이켄	서울시 관악구 봉천동 851-14		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	라멘 / 소바 / 우동	3.89999999999999991
237	온고지신	서울시 관악구 봉천동 1620-32		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.89999999999999991
238	낭만모로코	서울시 관악구 봉천동 1621-9 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	세계음식 기타	3.89999999999999991
239	티라노	서울시 관악구 봉천동 1613-7		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.89999999999999991
240	아라키	서울시 관악구 봉천동 1604-1 아라키		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	이자카야 / 오뎅 / 꼬치	3.89999999999999991
241	가온길	서울시 관악구 봉천동 851-3 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.89999999999999991
242	깜언	서울시 관악구 봉천동 1626-23		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	베트남 음식	3.89999999999999991
243	표표마라탕	서울시 관악구 봉천동 921-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 중식	3.89999999999999991
244	전호메밀우동	서울시 관악구 봉천동 1664-14 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	국수 / 면 요리	3.89999999999999991
245	논밭골	서울시 관악구 봉천동 915-26		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	탕 / 찌개 / 전골	3.89999999999999991
246	우리가참순대	서울시 관악구 봉천동 1598-20 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	탕 / 찌개 / 전골	3.89999999999999991
248	펠리치따	서울시 관악구 봉천동 1659-3 청동빌딩 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.89999999999999991
249	오후의과일	서울시 관악구 봉천동 1599-4 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.79999999999999982
250	아열대	서울시 관악구 봉천동 1620-33		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이탈리안	3.79999999999999982
251	미라보	서울시 관악구 봉천동 1663-8		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.79999999999999982
252	이태리상회	서울시 관악구 봉천동 897-36		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이탈리안	3.79999999999999982
253	순보보	서울시 관악구 봉천동 1626-29 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	한정식 / 백반 / 정통 한식	3.79999999999999982
254	땅콩카페	서울시 관악구 봉천동 1614-1 SY town		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.79999999999999982
255	온돌	서울시 관악구 봉천동 1612-52		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	3.79999999999999982
276	바닐라스카이	서울시 관악구 봉천동 862-1 라붐아울렛 15F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	칵테일 / 와인	3.79999999999999982
277	저니	서울시 관악구 봉천동 1604-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	브런치 / 버거 / 샌드위치	3.79999999999999982
278	시골집	서울시 관악구 봉천동 1625-5		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	한정식 / 백반 / 정통 한식	3.79999999999999982
279	왠지	서울시 관악구 봉천동 1626-12		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	브런치 / 버거 / 샌드위치	3.79999999999999982
280	카페프레임	서울시 관악구 봉천동 1626-1 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.79999999999999982
281	육떡볶이	서울시 관악구 봉천동 1658-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	3.79999999999999982
282	카레시오	서울시 관악구 봉천동 1604-6		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	돈부리 / 일본 카레 / 벤토	3.79999999999999982
283	난다커피	서울시 관악구 봉천동 879-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.79999999999999982
284	최희성고려왕족발	서울시 관악구 봉천동 913-7		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	3.79999999999999982
285	숙이네조개전골	서울시 관악구 봉천동 1601-11 삼호원		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	탕 / 찌개 / 전골	3.79999999999999982
286	모다모다	서울시 관악구 봉천동 1604-20		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	돈부리 / 일본 카레 / 벤토	3.70000000000000018
287	몽중인	서울시 관악구 봉천동 1619-18 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	3.70000000000000018
288	아띠85도씨베이커리	서울시 관악구 봉천동 1569-3 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베이커리	3.70000000000000018
289	킷사서울	서울시 관악구 봉천동 1603-3 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	퓨전 일식	3.70000000000000018
290	박명주의 브라더	서울시 관악구 봉천동 1620-22		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	3.70000000000000018
291	프로젝트서울	서울시 관악구 봉천동 1601-29 4F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.70000000000000018
292	신기루황소곱창	서울시 관악구 봉천동 865-2 세종오피스텔 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	고기 요리	3.70000000000000018
293	천희양꼬치	서울시 관악구 봉천동 1611-28		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	3.70000000000000018
294	서랍	서울시 관악구 봉천동 894-2 3F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	칵테일 / 와인	3.70000000000000018
295	삼미옥	서울시 관악구 봉천동 852-6		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	탕 / 찌개 / 전골	3.70000000000000018
316	소백양샤브샤브	서울시 관악구 봉천동 860-36 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	3.70000000000000018
317	예인촌막걸리	서울시 관악구 봉천동 1626-24		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	전통 주점 / 포차	3.70000000000000018
318	아웃백스테이크하우스	서울시 관악구 봉천동 1601-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	3만원-4만원	패밀리 레스토랑	3.70000000000000018
319	호형숯불닭갈비	서울시 관악구 봉천동 1667-55		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	3.70000000000000018
320	아로이막막	서울시 관악구 봉천동 1612-13		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	태국 음식	3.70000000000000018
321	삼미제면	서울시 관악구 봉천동 1610-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	라멘 / 소바 / 우동	3.70000000000000018
322	하이보	서울시 관악구 봉천동 1597-23 형우빌딩 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	정통 중식 / 일반 중식	3.70000000000000018
323	흑룡강	서울시 관악구 봉천동 1625-9 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	정통 중식 / 일반 중식	3.70000000000000018
324	방콕야시장	서울시 관악구 봉천동 1604-22		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	태국 음식	3.60000000000000009
325	메이드바이아린	서울시 관악구 봉천동 1610-24 대명빌딩 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.60000000000000009
326	프랑스홍합집	서울시 관악구 봉천동 1604-1 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	프랑스 음식	3.60000000000000009
327	CAFE TERR	서울시 관악구 봉천동 1613-14 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.60000000000000009
328	유락	서울시 관악구 봉천동 862-9		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이자카야 / 오뎅 / 꼬치	3.60000000000000009
329	만화경	서울시 관악구 봉천동 1604-8 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	일반 주점	3.60000000000000009
330	커피버넷	서울시 관악구 봉천동 1658-11		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.60000000000000009
331	Sumur	서울시 관악구 봉천동 1663-9 6호		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	퓨전 양식	3.60000000000000009
332	블렌드	서울시 관악구 봉천동 1619-6 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	브런치 / 버거 / 샌드위치	3.60000000000000009
333	라티놀	서울시 관악구 봉천동 1598-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	3.60000000000000009
334	고메츠	서울시 관악구 봉천동 1602-28 3F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이탈리안	3.60000000000000009
335	히토리더야끼니꾸	서울시 관악구 봉천동 1601-19		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	4만원 이상	정통 일식 / 일반 일식	3.60000000000000009
356	콩심	서울시 관악구 봉천동 1597-1 우남네오폴리스		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	탕 / 찌개 / 전골	3.60000000000000009
357	스폰서	서울시 관악구 봉천동 1601-3 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	칵테일 / 와인	3.60000000000000009
358	라공방	서울시 관악구 봉천동 863-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 중식	3.60000000000000009
359	천년곱돌	서울시 관악구 봉천동 1568-8		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	3.60000000000000009
360	레드콜리	서울시 관악구 봉천동 870-1 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.60000000000000009
361	쁘띠크	서울시 관악구 봉천동 1614-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
362	서울테이블	서울시 관악구 봉천동 1604-6 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
363	성민양꼬치	서울시 관악구 봉천동 1602-37		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	기타 중식	3.5
364	라라피포	서울시 관악구 봉천동 1612-31		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	탕 / 찌개 / 전골	3.5
365	모단걸응접실	서울시 관악구 봉천동 854-13 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	3.5
366	완산정	서울시 관악구 봉천동 858-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	탕 / 찌개 / 전골	3.5
367	봉천예술관	서울시 관악구 봉천동 1604-1 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	치킨 / 호프 / 펍	3.5
368	호타루	서울시 관악구 봉천동 1569-4 B1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	이자카야 / 오뎅 / 꼬치	3.5
369	카페서른살	서울시 관악구 봉천동 1609-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
370	코젤다크하우스	서울시 관악구 봉천동 1619-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	치킨 / 호프 / 펍	3.5
371	젠젠	서울시 관악구 봉천동 1604-34 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
372	멘쇼우라멘	서울시 관악구 봉천동 1612-6 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	라멘 / 소바 / 우동	3.5
373	나에게오는길	서울시 관악구 봉천동 1621-2 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
374	우마이텐	서울시 관악구 봉천동 1632-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	라멘 / 소바 / 우동	3.5
375	카페 블리스	서울시 관악구 봉천동 1598-31 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
396	카모메	서울시 관악구 봉천동 1597-1 우남네오폴리스 104호		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 일식	3.5
397	커먼룸	서울시 관악구 봉천동 1620-5		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.5
398	황소곱창	서울시 관악구 봉천동 877-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	3.5
399	야간얼큰우동	서울시 관악구 봉천동 1602-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	3.5
400	안녕과자점	서울시 관악구 봉천동 1603-22 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.39999999999999991
401	새우당	서울시 관악구 봉천동 1620-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	돈부리 / 일본 카레 / 벤토	3.39999999999999991
402	카페토스트	서울시 관악구 봉천동 1610-19 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.39999999999999991
403	천희향 딤섬제작소	서울시 관악구 봉천동 1626-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	딤섬 / 만두	3.39999999999999991
404	오늘그대와	서울시 관악구 봉천동 1612-30		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	기타 양식	3.39999999999999991
405	비바라비다	서울시 관악구 봉천동 1613-5		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	스테이크 / 바베큐	3.39999999999999991
406	샤로스톤	서울시 관악구 봉천동 1612-27		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	스테이크 / 바베큐	3.39999999999999991
407	엘리펀트키친	서울시 관악구 봉천동 1599-4 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	치킨 / 호프 / 펍	3.39999999999999991
408	잡	서울시 관악구 봉천동 1603-15		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	전통 주점 / 포차	3.39999999999999991
409	카페미엘	서울시 관악구 봉천동 1602-37 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	브런치 / 버거 / 샌드위치	3.39999999999999991
410	토모	서울시 관악구 봉천동 868-9		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	이자카야 / 오뎅 / 꼬치	3.39999999999999991
411	오늘와인한잔	서울시 관악구 봉천동 1612-51		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	칵테일 / 와인	3.39999999999999991
412	밀향기칼국수	서울시 관악구 봉천동 1658-10		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	국수 / 면 요리	3.39999999999999991
413	오막회집	서울시 관악구 봉천동 1602-4		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	해산물 요리	3.39999999999999991
414	황토방	서울시 관악구 봉천동 1597-7 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	고기 요리	3.39999999999999991
415	투썸플레이스	서울시 관악구 봉천동 863-4		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.39999999999999991
436	너의작은식탁	서울시 관악구 봉천동 1613-3		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	2만원-3만원	프랑스 음식	3.29999999999999982
437	망원동티라미수	서울시 관악구 봉천동 1604-8 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.29999999999999982
438	미미청	서울시 관악구 봉천동 1620-5 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	정통 중식 / 일반 중식	3.29999999999999982
439	너구리덮밥	서울시 관악구 봉천동 1621-8 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	돈부리 / 일본 카레 / 벤토	3.29999999999999982
440	면화당	서울시 관악구 봉천동 1619-1 효림빌딩		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 중식	3.29999999999999982
441	삼백돈 돈가츠	서울시 관악구 봉천동 1610-27		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	까스 요리	3.29999999999999982
442	카도야라멘	서울시 관악구 봉천동 870-13 신원 메트로빌		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	라멘 / 소바 / 우동	3.29999999999999982
443	새마을식당	서울시 관악구 봉천동 853-2 준빌딩		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	고기 요리	3.29999999999999982
444	봉천동진순자김밥	서울시 관악구 봉천동 894-2		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 한식	3.29999999999999982
445	피기스페이보릿	서울시 관악구 봉천동 1612-53 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.29999999999999982
446	브레드몽드	서울시 관악구 봉천동 851-6		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베이커리	3.29999999999999982
447	도스타코스	서울시 관악구 봉천동 855-10		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	남미 음식	3.29999999999999982
448	퍼팬	서울시 관악구 봉천동 1629-2 102호		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베트남 음식	3.29999999999999982
449	펭귄제과	서울시 관악구 봉천동 1609-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	베이커리	3.29999999999999982
450	미스터카츠	서울시 관악구 봉천동 856-5 대우디오슈페리움 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	까스 요리	3.29999999999999982
451	밀형제양조장	서울시 관악구 봉천동 1604-1		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	치킨 / 호프 / 펍	3.29999999999999982
452	시트론오피스	서울시 관악구 봉천동 1612-51 2F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	카페 / 디저트	3.20000000000000018
453	도리도리하찌	서울시 관악구 봉천동 1612-43 1F		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	닭 / 오리 요리	3.20000000000000018
454	충칭마라훠궈	서울시 관악구 봉천동 1612-30		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원 미만	기타 중식	3.20000000000000018
455	그날의 브런치	서울시 관악구 봉천동 1610-27		f	2020-02-02 00:00:00	2020-02-02 00:00:00	서울대입구	만원-2만원	브런치 / 버거 / 샌드위치	3.20000000000000018
\.


--
-- Data for Name: sample_crawling_restaurants; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.sample_crawling_restaurants (id, title, point, address, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: samples; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.samples (id, title, context, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: sangchulkim
--

COPY public.schema_migrations (version) FROM stdin;
20191230084346
20191231015552
20200122113318
20200122120837
20200123085233
20200131055041
20200202063458
20200202063740
20200202074209
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.locations_id_seq', 1, false);


--
-- Name: priceranges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.priceranges_id_seq', 1, false);


--
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.restaurants_id_seq', 475, true);


--
-- Name: sample_crawling_restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.sample_crawling_restaurants_id_seq', 1, false);


--
-- Name: samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangchulkim
--

SELECT pg_catalog.setval('public.samples_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: priceranges priceranges_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.priceranges
    ADD CONSTRAINT priceranges_pkey PRIMARY KEY (id);


--
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: sample_crawling_restaurants sample_crawling_restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.sample_crawling_restaurants
    ADD CONSTRAINT sample_crawling_restaurants_pkey PRIMARY KEY (id);


--
-- Name: samples samples_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sangchulkim
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_restaurants_on_name; Type: INDEX; Schema: public; Owner: sangchulkim
--

CREATE UNIQUE INDEX index_restaurants_on_name ON public.restaurants USING btree (name);


--
-- PostgreSQL database dump complete
--

