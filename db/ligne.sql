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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ginili;

--
-- Name: brand_images; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.brand_images (
    id bigint NOT NULL,
    url character varying,
    alt character varying,
    brand_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.brand_images OWNER TO ginili;

--
-- Name: brand_images_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.brand_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_images_id_seq OWNER TO ginili;

--
-- Name: brand_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.brand_images_id_seq OWNED BY public.brand_images.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    country character varying,
    logo_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    url character varying
);


ALTER TABLE public.brands OWNER TO ginili;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO ginili;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    price integer,
    description character varying,
    url character varying,
    brand_id bigint,
    is_available character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_url character varying
);


ALTER TABLE public.products OWNER TO ginili;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO ginili;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ginili;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO ginili;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO ginili;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO ginili;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO ginili;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ginili
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    bio character varying,
    location character varying,
    avatar_url character varying,
    admin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO ginili;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ginili
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ginili;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ginili
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: brand_images id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.brand_images ALTER COLUMN id SET DEFAULT nextval('public.brand_images_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-12-12 02:10:58.911136	2019-12-12 02:10:58.911136
\.


--
-- Data for Name: brand_images; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.brand_images (id, url, alt, brand_id, created_at, updated_at) FROM stdin;
1	http://www.dudihasson.com/dyncontent/Item/636074637589897583.jpg	mara hoffman editorial image	1	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
2	http://alanajonesmann.com/wp-content/uploads/2015/02/Mara_Hoffman_Spring_2015_2.jpg	mara hoffman editorial image	1	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
3	http://www.marahoffman.com/world-of/wp-content/uploads/2015/11/6.jpg	mara hoffman editorial image	1	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
4	https://fashioneditorials.com/wp-content/uploads/2015/11/Free-People-Holiday-November-2015-Moonlight-Magic-1.jpg	free people editorial image	2	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
5	https://fashioneditorials.com/wp-content/uploads/2017/11/Free-People-November-2017-1-700x700.jpg	free people editorial image	2	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
6	https://cdn.trendhunterstatic.com/phpthumbnails/237/237244/237244_1_600.jpeg	free people editorial image	2	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
7	https://ariadibari.com/wp-content/uploads/2018/07/realisation-par-naomi-leopard-silk-skirt-aria-di-bari-french-street-style-blogger-knit-tank-top-zara-balzac-paris-bocage-summer-outfit-editorial-1.jpg	realisation par editorial image	3	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
8	https://i0.wp.com/www.inspiringwit.com/wp-content/uploads/2019/01/Realisation-Par-devon-dress-inspiring-wit-editorial.jpg	realisation par editorial image	3	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
9	https://cdn.cliqueinc.com/posts/270171/realisation-par-christy-dress-outfits-270171-1540408944839-promo.700x0c.jpg	realisation par editorial image	3	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
10	https://i.pinimg.com/originals/6a/b4/5e/6ab45e2886f4a9ea5bd393479fd98b70.jpg	urban outfitters editorial image	4	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
11	http://sole-u.com/wp-content/uploads/2017/11/simi-and-haze-x-fila-x-urban-outfitters-2.jpg	urban outfitters editorial image	4	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
12	https://static1.squarespace.com/static/55f45174e4b0fb5d95b07f39/56375ccde4b0e79c6cce6b27/56375ccde4b09ef9b6271180/1446468813949/Stella-Maxwell-Urban-Outfitters-Holiday-2015-02.jpg	urban outfitters editorial image	4	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
13	http://malendyer.com/wp-content/uploads/2018/11/loveshackfancy-resort19-01.jpg	love shack fancy editorial image	5	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
14	https://www.fashiongonerogue.com/wp-content/uploads/2019/05/Maya-Stepper-LoveShackFancy-Summer-2019-Campaign01.jpg	love shack fancy editorial image	5	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
15	https://www.beautyscene.net/wp-content/uploads/2018/05/LoveShackFancy-SS18-Dean-Isidro-04-620x930.jpg	love shack fancy editorial image	5	2019-12-12 02:10:59.058462	2019-12-12 02:10:59.058462
17	image/upload/v1576128636/ix9jinlr9u2uwvqlatbf.jpg	\N	29	2019-12-12 05:30:32.523887	2019-12-12 05:30:32.523887
35	image/upload/v1576130057/ckjin4swbplzaecx1kqe.jpg	\N	34	2019-12-12 05:54:14.934958	2019-12-12 05:54:14.934958
21	\N	\N	31	2019-12-12 05:41:27.358325	2019-12-12 05:41:27.358325
22	image/upload/v1576129290/pi5jz7emvkf6xvkbtpiv.jpg	\N	31	2019-12-12 05:41:27.364216	2019-12-12 05:41:27.364216
23	image/upload/v1576129294/jwzjweotfabk9uzqymuh.jpg	\N	31	2019-12-12 05:41:31.433329	2019-12-12 05:41:31.433329
24	image/upload/v1576129298/oxefhugrtlocwmwwi4dx.jpg	\N	31	2019-12-12 05:41:35.257393	2019-12-12 05:41:35.257393
25	\N	\N	32	2019-12-12 05:52:36.078714	2019-12-12 05:52:36.078714
26	image/upload/v1576129957/fmxg4srk68xtdxe1ef2d.jpg	\N	32	2019-12-12 05:52:36.089396	2019-12-12 05:52:36.089396
27	image/upload/v1576129960/uewmjvbqhna0juxfcj3u.jpg	\N	32	2019-12-12 05:52:38.162441	2019-12-12 05:52:38.162441
28	image/upload/v1576129964/ycymy1kyyqm1cyiagbrf.jpg	\N	32	2019-12-12 05:52:41.104681	2019-12-12 05:52:41.104681
29	\N	\N	33	2019-12-12 05:53:30.430572	2019-12-12 05:53:30.430572
30	image/upload/v1576130014/ue9y4hmazv3oyo2ynibp.jpg	\N	33	2019-12-12 05:53:30.440711	2019-12-12 05:53:30.440711
31	image/upload/v1576130019/kloj7dhtpf0e38suu36i.jpg	\N	33	2019-12-12 05:53:35.080327	2019-12-12 05:53:35.080327
32	\N	\N	34	2019-12-12 05:54:06.022754	2019-12-12 05:54:06.022754
33	image/upload/v1576130048/wkfc4pef4sby5djk4xxi.jpg	\N	34	2019-12-12 05:54:06.027026	2019-12-12 05:54:06.027026
34	image/upload/v1576130053/gyfeemrrgvyufhdxxond.jpg	\N	34	2019-12-12 05:54:10.028498	2019-12-12 05:54:10.028498
36	\N	\N	35	2019-12-12 05:55:08.263521	2019-12-12 05:55:08.263521
37	image/upload/v1576130110/fxvf5otefs9gkq0bgyrl.jpg	\N	35	2019-12-12 05:55:08.274895	2019-12-12 05:55:08.274895
38	image/upload/v1576130115/ki5tj6ezwgyg7806abef.jpg	\N	35	2019-12-12 05:55:11.351283	2019-12-12 05:55:11.351283
39	image/upload/v1576130118/chx52tlucayijo0qtmy1.jpg	\N	35	2019-12-12 05:55:16.325914	2019-12-12 05:55:16.325914
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.brands (id, name, description, country, logo_url, created_at, updated_at, url) FROM stdin;
31	Mara Hoffman	Mara Hoffman founded her label in 2000 after graduating from Parsons School of Design in New York City. Fifteen years later, the brand committed itself to implementing more sustainable and responsible practices. In an effort to foster mindful consumption habits, the brand maintains an open conversation about its approach and encourages consumers to reevaluate the relationship society has with clothing. The company continues to focus on sustainable materials, processes, and production in order to	US	\N	2019-12-12 05:41:27.356872	2019-12-12 05:41:27.356872	https://www.marahoffman.com/
2	Free People X	Free People, a specialty women’s clothing brand, is the destination for bohemian fashion that features the latest trends and vintage collections for women who live free through fashion, art, music, and travel. 	er	\N	2019-12-12 05:15:08.316468	2019-12-12 05:15:08.317684	https://www.freepeople.com/
4	Urban Outfitters X	Founded in 1970 in a small space across the street from the University of Pennsylvania, Urban Outfitters now operates over 200 stores in the United States, Canada and Europe, offering experiential retail environments and a well-curated mix of on-trend women’s and men’s clothes, from boho dresses, denim and graphics to shoes, hats, and backpacks, as well as beauty, intimates, swim and a collection of handpicked vintage clothing.	er	\N	2019-12-12 05:15:08.321084	2019-12-12 05:15:08.322177	https://www.urbanoutfitters.com
5	Love Shack Fancy X	Embracing unabashed femininity and strength, LoveShackFancy is inspired by enchanting vintage romantic floral prints.	er	\N	2019-12-12 05:15:08.323275	2019-12-12 05:15:08.324481	https://www.loveshackfancy.com/
3	Realisation Par X	A clothing label by Alexandra Spencer & Teale Talbot.	er	\N	2019-12-12 05:15:08.318836	2019-12-12 05:15:08.320019	https://realisationpar.com/
1	Mara Hoffman X	Mara Hoffman founded her label in 2000 after graduating from Parsons School of Design in New York City. Fifteen years later, the brand committed itself to implementing more sustainable and responsible practices. In an effort to foster mindful consumption habits, the brand maintains an open conversation about its approach and encourages consumers to reevaluate the relationship society has with clothing. The company continues to focus on sustainable materials, processes, and production in order to improve and extend each garment’s life. President and Creative Director, Mara Hoffman, presents collections with a devotion to color, each inspired by and in celebration of women.	er	\N	2019-12-12 05:15:08.312899	2019-12-12 05:15:08.314406	https://www.marahoffman.com/
6	DollsKill X	Dolls Kill is an online boutique featuring a rebellious spirit and attitude, mixed with a bit of punk rock, goth, glam and festival fashion. 	er	\N	2019-12-12 05:15:08.325593	2019-12-12 05:15:08.32666	https://www.dollskill.com/
29	Kitri Studio	Born out of the frustration of not being able to find well-made, distinctive designs without breaking the bank, Haeni Kim launched Kitri Studio in March 2017, assembling a small but expert team to bring that plan to fruition. Named after the feisty, playful, and willful heroine of Don Quixote, Kitri encapsulates the wonderful women who have inspired the studio team to create a collection of elegant clothes that fit their exciting, demanding lives.	er	\N	2019-12-12 05:30:32.514131	2019-12-12 05:30:32.514131	https://kitristudio.com/
7	Christy Dawn X	Minimalist showroom for vintage-inspired women’s clothes & dresses locally made with surplus fabric.	er	\N	2019-12-12 05:15:08.327742	2019-12-12 05:15:08.328956	https://christydawn.com/
10	Rosie Assoulin X	Rosie Assoulin worked at Adam Lippes, Oscar de la Renta and Lanvin before launching her eponymous label in 2014 – scooping the CFDA Swarovski Award for Womenswear just a year later. She plays with volume and bold color to create pieces that are glamorous yet highly functional. The Edit star Leandra Medine is a noteworthy admirer.	er	\N	2019-12-12 05:15:08.334809	2019-12-12 05:15:08.335919	https://rosieassoulin.com/
9	Reformation X	Reformation’s design mission is to make effortless silhouettes that celebrate the feminine figure. The design process starts with us thinking about what we really want to wear right now. We source the most beautiful and sustainable fabrics possible to bring those designs to life quickly.	er	\N	2019-12-12 05:15:08.332549	2019-12-12 05:15:08.333738	https://www.thereformation.com/
8	Ulla Johnson X	The Ulla Johnson label has become synonymous with custom prints, intricate embroideries, and fine tailoring, all of which have earned her a loyal and global customer base. With the introduction of a shoe collection in Fall 2013, the line now encompasses a full range of product categories sourced and produced worldwide with an emphasis on artisanal and handcrafted processes.	er	\N	2019-12-12 05:15:08.33008	2019-12-12 05:15:08.331259	https://ullajohnson.com\n
11	Emerson Fry X	Emerson Fry believes in the beauty of the individual. It is their intention to create beautiful, strong, functional pieces that enhance enjoyment of life.\n	er	\N	2019-12-12 05:15:08.336984	2019-12-12 05:15:08.338159	https://emersonfry.com\n
32	Free People	Free People, a specialty women’s clothing brand, is the destination for bohemian fashion that features the latest trends and vintage collections for women who live free through fashion, art, music, and travel. 	US	\N	2019-12-12 05:52:36.077534	2019-12-12 05:52:36.077534	https://www.freepeople.com/
33	Realisation Par	A clothing label by Alexandra Spencer & Teale Talbot.	US	\N	2019-12-12 05:53:30.429678	2019-12-12 05:53:30.429678	https://realisationpar.com/
34	Urban Outfitters	Founded in 1970 in a small space across the street from the University of Pennsylvania, Urban Outfitters now operates over 200 stores in the United States, Canada and Europe, offering experiential retail environments and a well-curated mix of on-trend women’s and men’s clothes, from boho dresses, denim and graphics to shoes, hats, and backpacks, as well as beauty, intimates, swim and a collection of handpicked vintage clothing.	US	\N	2019-12-12 05:54:06.021815	2019-12-12 05:54:06.021815	https://www.urbanoutfitters.com
35	Love Shack Fancy	Embracing unabashed femininity and strength, LoveShackFancy is inspired by enchanting vintage romantic floral prints.	US	\N	2019-12-12 05:55:08.262025	2019-12-12 05:55:08.262025	https://www.loveshackfancy.com/
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.products (id, name, price, description, url, brand_id, is_available, created_at, updated_at, image_url) FROM stdin;
1	ELISABETTA DRESS	650	\N	https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot	1	\N	2019-12-12 02:10:59.084607	2019-12-12 02:10:59.084607	\N
2	ROSE TOP	315	\N	https://www.marahoffman.com/shop-all/rose-strapless-top-red	1	\N	2019-12-12 02:10:59.095299	2019-12-12 02:10:59.095299	\N
3	JUNO DRESS	550	\N	https://www.marahoffman.com/shop-all/juno-button-front-pocket-dress-navy-white-stitching	1	\N	2019-12-12 02:10:59.106207	2019-12-12 02:10:59.106207	\N
4	ADRIANA DRESS	650	\N	https://www.marahoffman.com/shop-all/adriana-sleeveless-zip-front-a-line-dress-black-stripe	1	\N	2019-12-12 02:10:59.110209	2019-12-12 02:10:59.110209	\N
5	EDMONIA DRESS	225	\N	https://www.marahoffman.com/shop-all/edmonia-full-sleeve-turtleneck-dress-sheer-lime-green	1	\N	2019-12-12 02:10:59.113628	2019-12-12 02:10:59.113628	\N
6	VENUS BODYSUIT	350	\N	https://www.marahoffman.com/shop-all/venus-ribbed-knit-scoop-neck-bodysuit-white	1	\N	2019-12-12 02:10:59.116541	2019-12-12 02:10:59.116541	\N
7	JADE PANT	100	\N	https://www.marahoffman.com/shop-all/jade-trouser-pant-black-stripe	1	\N	2019-12-12 02:10:59.119072	2019-12-12 02:10:59.119072	\N
8	VERONICA SWEATER	295	\N	https://www.marahoffman.com/shop-all/veronica-collared-button-front-sweater-sheer-black	1	\N	2019-12-12 02:10:59.121615	2019-12-12 02:10:59.121615	\N
9	DAIJA DRESS	525	\N	https://www.marahoffman.com/shop-all/daija-maxi-shift-dress-cream-black-color-block	1	\N	2019-12-12 02:10:59.124061	2019-12-12 02:10:59.124061	\N
10	FONTANA PANT	340	\N	https://www.marahoffman.com/shop-all/fontana-high-waisted-flat-front-straight-pant-white	1	\N	2019-12-12 02:10:59.126783	2019-12-12 02:10:59.126783	\N
11	ELISABETTA DRESS	495	\N	https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-white	1	\N	2019-12-12 02:10:59.129511	2019-12-12 02:10:59.129511	\N
12	ELISABETTA DRESS	650	\N	https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-sheer-black-red-dot	1	\N	2019-12-12 02:11:09.017689	2019-12-12 02:11:09.017689	\N
13	ROSE TOP	315	\N	https://www.marahoffman.com/shop-all/rose-strapless-top-red	1	\N	2019-12-12 02:11:09.028087	2019-12-12 02:11:09.028087	\N
14	JUNO DRESS	550	\N	https://www.marahoffman.com/shop-all/juno-button-front-pocket-dress-navy-white-stitching	1	\N	2019-12-12 02:11:09.031662	2019-12-12 02:11:09.031662	\N
15	ADRIANA DRESS	650	\N	https://www.marahoffman.com/shop-all/adriana-sleeveless-zip-front-a-line-dress-black-stripe	1	\N	2019-12-12 02:11:09.03476	2019-12-12 02:11:09.03476	\N
16	EDMONIA DRESS	225	\N	https://www.marahoffman.com/shop-all/edmonia-full-sleeve-turtleneck-dress-sheer-lime-green	1	\N	2019-12-12 02:11:09.037477	2019-12-12 02:11:09.037477	\N
17	VENUS BODYSUIT	350	\N	https://www.marahoffman.com/shop-all/venus-ribbed-knit-scoop-neck-bodysuit-white	1	\N	2019-12-12 02:11:09.040838	2019-12-12 02:11:09.040838	\N
18	JADE PANT	100	\N	https://www.marahoffman.com/shop-all/jade-trouser-pant-black-stripe	1	\N	2019-12-12 02:11:09.044364	2019-12-12 02:11:09.044364	\N
19	VERONICA SWEATER	295	\N	https://www.marahoffman.com/shop-all/veronica-collared-button-front-sweater-sheer-black	1	\N	2019-12-12 02:11:09.048038	2019-12-12 02:11:09.048038	\N
20	DAIJA DRESS	525	\N	https://www.marahoffman.com/shop-all/daija-maxi-shift-dress-cream-black-color-block	1	\N	2019-12-12 02:11:09.051799	2019-12-12 02:11:09.051799	\N
21	FONTANA PANT	340	\N	https://www.marahoffman.com/shop-all/fontana-high-waisted-flat-front-straight-pant-white	1	\N	2019-12-12 02:11:09.05489	2019-12-12 02:11:09.05489	\N
22	ELISABETTA DRESS	495	\N	https://www.marahoffman.com/shop-all/elisabetta-puff-shoulder-shift-dress-white	1	\N	2019-12-12 02:11:09.05761	2019-12-12 02:11:09.05761	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.schema_migrations (version) FROM stdin;
20191211072501
20191209123524
20191209123525
20191211072403
20191209070822
20191209120430
20191211072253
20191209082135
20191210030519
20191210113527
20191210122903
20191209123527
20191209073620
20191210085227
20191211072215
20191209070906
20191209074057
20191209070734
20191210095014
20191210095944
20191209123523
20191209123526
20191209123522
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ginili
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, bio, location, avatar_url, admin) FROM stdin;
1	xogini@gmail.com	$2a$11$1.oP8bPD7hRKFFAtp7Huku4smS/41mSGFjYhrJ2BW7yEzmy6WQy1W	\N	\N	\N	2019-12-12 02:21:17.719144	2019-12-12 02:21:17.719144	\N	\N	\N	\N	f
\.


--
-- Name: brand_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.brand_images_id_seq', 39, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.brands_id_seq', 35, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.products_id_seq', 22, true);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.taggings_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ginili
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: brand_images brand_images_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.brand_images
    ADD CONSTRAINT brand_images_pkey PRIMARY KEY (id);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_brand_images_on_brand_id; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_brand_images_on_brand_id ON public.brand_images USING btree (brand_id);


--
-- Name: index_products_on_brand_id; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_products_on_brand_id ON public.products USING btree (brand_id);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: ginili
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ginili
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ginili
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: ginili
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: taggings_taggable_context_idx; Type: INDEX; Schema: public; Owner: ginili
--

CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: brand_images fk_rails_2534527ffa; Type: FK CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.brand_images
    ADD CONSTRAINT fk_rails_2534527ffa FOREIGN KEY (brand_id) REFERENCES public.brands(id);


--
-- Name: taggings fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: products fk_rails_f3b4d49caa; Type: FK CONSTRAINT; Schema: public; Owner: ginili
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_f3b4d49caa FOREIGN KEY (brand_id) REFERENCES public.brands(id);


--
-- PostgreSQL database dump complete
--

