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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Hell', NULL, NULL, NULL, NULL, 0.011);
INSERT INTO public.asteroid VALUES (2, 'Other hell', NULL, NULL, NULL, NULL, 0.11101);
INSERT INTO public.asteroid VALUES (3, 'third hell', NULL, NULL, NULL, NULL, 0.2394);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, NULL, NULL, NULL, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Adromeda galaxy', NULL, NULL, NULL, NULL, 400);
INSERT INTO public.galaxy VALUES (3, 'Nr3', NULL, NULL, NULL, NULL, 23);
INSERT INTO public.galaxy VALUES (4, 'Nr4', NULL, NULL, NULL, NULL, 100234);
INSERT INTO public.galaxy VALUES (5, 'Nr5', NULL, NULL, NULL, NULL, 1289471.283);
INSERT INTO public.galaxy VALUES (6, 'Nr6', NULL, NULL, NULL, NULL, 234729.37);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', NULL, NULL, true, NULL, 23, 5);
INSERT INTO public.moon VALUES (2, 'A', NULL, NULL, true, NULL, 23593.1, 5);
INSERT INTO public.moon VALUES (3, 'B', NULL, NULL, false, NULL, 3290324.457, 5);
INSERT INTO public.moon VALUES (4, 'C', NULL, NULL, true, NULL, 2003, 2);
INSERT INTO public.moon VALUES (5, 'D', NULL, NULL, true, NULL, 109410, 2);
INSERT INTO public.moon VALUES (6, 'E', NULL, NULL, false, NULL, 3000923.1, 12);
INSERT INTO public.moon VALUES (7, 'F', NULL, NULL, false, NULL, 3927520, 12);
INSERT INTO public.moon VALUES (8, 'G', NULL, NULL, true, NULL, 29900001.1, 12);
INSERT INTO public.moon VALUES (9, 'H', NULL, NULL, false, NULL, 29120, 1);
INSERT INTO public.moon VALUES (10, 'I', NULL, NULL, true, NULL, 10012.423, 7);
INSERT INTO public.moon VALUES (11, 'dsklf', NULL, NULL, true, NULL, 1290471, 7);
INSERT INTO public.moon VALUES (12, 'a', NULL, NULL, false, NULL, 120478, 7);
INSERT INTO public.moon VALUES (13, 'b', NULL, NULL, true, NULL, 21950, 7);
INSERT INTO public.moon VALUES (14, 'c', NULL, NULL, false, NULL, 392, 7);
INSERT INTO public.moon VALUES (15, 'd', NULL, NULL, true, NULL, 2930852.43, 11);
INSERT INTO public.moon VALUES (16, 'euhio', NULL, NULL, false, NULL, 12863.938724, 11);
INSERT INTO public.moon VALUES (17, 'ab', NULL, NULL, true, NULL, 29304, 11);
INSERT INTO public.moon VALUES (18, 'cd', NULL, NULL, false, NULL, 39027.3745, 11);
INSERT INTO public.moon VALUES (19, 'ef', NULL, NULL, true, NULL, 923057.3829, 11);
INSERT INTO public.moon VALUES (20, 'lalla', NULL, NULL, false, NULL, 382972.38, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, true, NULL, NULL, 0.00, 2);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, false, NULL, NULL, 3278, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, false, NULL, NULL, 3278619.290, 1);
INSERT INTO public.planet VALUES (4, 'Pluto', NULL, true, NULL, NULL, 100000388847.09, 4);
INSERT INTO public.planet VALUES (5, 'N32AH', NULL, false, NULL, NULL, 392740174.39, 4);
INSERT INTO public.planet VALUES (6, 'Ab372k', NULL, true, NULL, NULL, 39747918437.3020, 4);
INSERT INTO public.planet VALUES (7, 'Y638WIU9', NULL, false, NULL, NULL, 93927471694.38937, 5);
INSERT INTO public.planet VALUES (8, 'T9', NULL, false, NULL, NULL, 9999.99, 1);
INSERT INTO public.planet VALUES (9, 'H35', NULL, true, NULL, NULL, 9394578.495, 2);
INSERT INTO public.planet VALUES (10, 'CD000RO', NULL, true, NULL, NULL, 3994872.38, 6);
INSERT INTO public.planet VALUES (11, 'StarDestroyer', NULL, true, NULL, NULL, 99335544.99, 6);
INSERT INTO public.planet VALUES (12, 'Tatoenee', NULL, true, NULL, NULL, 80048730.397, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 0.0003, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, NULL, NULL, 35280.40, 1);
INSERT INTO public.star VALUES (3, 'Nr3', NULL, NULL, NULL, NULL, 3234.23, 1);
INSERT INTO public.star VALUES (4, 'Nr4', NULL, NULL, NULL, NULL, 10.0234, 3);
INSERT INTO public.star VALUES (5, 'Nr5', NULL, NULL, NULL, NULL, 2749121.283, 2);
INSERT INTO public.star VALUES (6, 'Nr6', NULL, NULL, NULL, NULL, 10023472.37, 5);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: planet planet_star_fkid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkid_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

