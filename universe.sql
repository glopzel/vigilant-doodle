--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_origin text,
    constellation character varying(50),
    life_presence boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    human_visits integer,
    size integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    length_year numeric(10,2),
    life_presence boolean,
    type character varying(50),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: small_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.small_bodies (
    small_bodies_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(50),
    size integer
);


ALTER TABLE public.small_bodies OWNER TO freecodecamp;

--
-- Name: small_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.small_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.small_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: small_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.small_bodies_id_seq OWNED BY public.small_bodies.small_bodies_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    chromaticity character varying(50),
    type character varying(60),
    temperature integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: small_bodies small_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_bodies ALTER COLUMN small_bodies_id SET DEFAULT nextval('public.small_bodies_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'from earth it looks like a band of light', 'sagittarius', true);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'looks similar to antennae, of insects', 'corvus', false);
INSERT INTO public.galaxy VALUES (3, 'Butterfly Galaxies', 'looks similar to a butterfly', 'virgo', false);
INSERT INTO public.galaxy VALUES (4, 'Condor Galaxy', 'named after the animal condor, a huge flying bird', 'pavo', false);
INSERT INTO public.galaxy VALUES (5, 'Eye of Sauron', 'looks like the eye of sauron from lord of the rings', 'canes venatici', false);
INSERT INTO public.galaxy VALUES (6, 'Fireworks Galaxy', 'bright and spotty appearance', 'cygnus and cepheus', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 24, 1737, 1);
INSERT INTO public.moon VALUES (2, 'phobos', 0, 22, 4);
INSERT INTO public.moon VALUES (3, 'deimos', 0, 13, 4);
INSERT INTO public.moon VALUES (4, 'charon', 0, 1207, 9);
INSERT INTO public.moon VALUES (5, 'hydra', 0, 113, 9);
INSERT INTO public.moon VALUES (6, 'kerberos', 0, 12, 9);
INSERT INTO public.moon VALUES (7, 'nix', 0, 32, 9);
INSERT INTO public.moon VALUES (8, 'styx', 0, 24, 9);
INSERT INTO public.moon VALUES (9, 'io', 0, 3630, 5);
INSERT INTO public.moon VALUES (10, 'europa', 0, 3140, 5);
INSERT INTO public.moon VALUES (11, 'ganymede', 0, 5260, 5);
INSERT INTO public.moon VALUES (12, 'callisto', 0, 4800, 5);
INSERT INTO public.moon VALUES (13, 'larissa', 0, 190, 8);
INSERT INTO public.moon VALUES (14, 'proteus', 0, 420, 8);
INSERT INTO public.moon VALUES (15, 'triton', 0, 2700, 8);
INSERT INTO public.moon VALUES (16, 'nereid', 0, 340, 8);
INSERT INTO public.moon VALUES (17, 'naiad', 0, 60, 8);
INSERT INTO public.moon VALUES (18, 'mimas', 0, 390, 6);
INSERT INTO public.moon VALUES (19, 'titan', 0, 5150, 6);
INSERT INTO public.moon VALUES (20, 'rhea', 0, 1530, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 365.00, true, 'terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'mercury', 88.00, false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'venus', 255.00, false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'mars', 687.00, false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 4333.00, false, 'gas giant', 1);
INSERT INTO public.planet VALUES (6, 'saturn', 10759.00, false, 'gas giant', 1);
INSERT INTO public.planet VALUES (7, 'uranus', 30687.00, false, 'ice giant', 1);
INSERT INTO public.planet VALUES (8, 'neptune', 60190.00, false, 'ice giant', 1);
INSERT INTO public.planet VALUES (9, 'pluto', 90530.00, false, 'dwarf', 1);
INSERT INTO public.planet VALUES (10, 'ceres', 1680.00, false, 'dwarf', 1);
INSERT INTO public.planet VALUES (11, 'haumea', 104025.00, false, 'dwarf', 1);
INSERT INTO public.planet VALUES (12, 'eris', 203305.00, false, 'dwarf', 1);


--
-- Data for Name: small_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.small_bodies VALUES (1, '4 Vesta', 'asteroid', 530);
INSERT INTO public.small_bodies VALUES (2, '433 Eros', 'asteroid', 8);
INSERT INTO public.small_bodies VALUES (3, '1P/Halley', 'comet', 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'yellow', 'g', 5772, 1);
INSERT INTO public.star VALUES (2, 'polaris', 'yellow', 'f', 6015, 1);
INSERT INTO public.star VALUES (3, 'rigel', 'blue', 'b', 12000, 1);
INSERT INTO public.star VALUES (4, 'altair', 'blue white', 'a', 7700, 1);
INSERT INTO public.star VALUES (5, 'proxima centauri', 'light orange red', 'm', 3042, 1);
INSERT INTO public.star VALUES (6, 'epsilon indi', 'pale yellow orange', 'k', 4698, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: small_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.small_bodies_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: small_bodies small_bodies_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_bodies
    ADD CONSTRAINT small_bodies_id_key UNIQUE (small_bodies_id);


--
-- Name: small_bodies small_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_bodies
    ADD CONSTRAINT small_bodies_name_key UNIQUE (name);


--
-- Name: small_bodies small_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_bodies
    ADD CONSTRAINT small_bodies_pkey PRIMARY KEY (small_bodies_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

