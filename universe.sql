--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth numeric(10,1),
    planet_types character varying(30),
    moon_id integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth numeric(10,1),
    galaxy_types character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth numeric(10,1),
    planet_types character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth numeric(10,1),
    planet_types character varying(30),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth numeric(10,1),
    planet_types character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 501, 'Earth', 'Earth is the third planet from the Sun and the only known planet with life.', true, true, 460, 0.0, 'Rocky', 1);
INSERT INTO public.earth VALUES (2, 502, 'Earth-Mars', 'A hypothetical planet formed by Earth and Mars, imagined as a backup for life on Earth.', false, true, 460, 0.0, 'Rocky', 2);
INSERT INTO public.earth VALUES (3, 503, 'Earth-Venus', 'A conceptual planet where Earth and Venus are merged into a single body for long-term survival of life.', false, true, 460, 0.0, 'Rocky', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 101, 'Andromeda', 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way.', true, true, 10000, 2.5, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 102, 'Milky Way', 'The Milky Way Galaxy is the galaxy that contains Earth.', true, false, 13800, 0.0, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 103, 'Triangulum', 'The Triangulum Galaxy is a member of the Local Group of galaxies.', true, true, 10000, 3.1, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 104, 'Whirlpool Galaxy', 'The Whirlpool Galaxy is a face-on spiral galaxy located in the constellation Canes Venatici.', true, true, 12000, 23.2, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 105, 'Sombrero Galaxy', 'The Sombrero Galaxy is a spiral galaxy in the constellation Virgo.', false, true, 13000, 28.7, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 106, 'Messier 87', 'Messier 87 is a massive elliptical galaxy in the Virgo Cluster.', false, false, 13000, 53.5, 'Elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 401, 'Moon', 'Earth Moon is the fifth-largest natural satellite in the Solar System and the largest and only natural satellite of Earth.', false, true, 460, 0.4, 'Rocky', 3);
INSERT INTO public.moon VALUES (2, 402, 'Phobos', 'Phobos is the larger of the two moons of Mars, orbiting at an unusually close distance to the planet.', false, true, 460, 9.4, 'Rocky', 4);
INSERT INTO public.moon VALUES (3, 403, 'Deimos', 'Deimos is the smaller of the two moons of Mars, and it orbits Mars at a greater distance than Phobos.', false, true, 460, 23.5, 'Rocky', 4);
INSERT INTO public.moon VALUES (4, 404, 'Io', 'Io is the most geologically active moon in the Solar System, with hundreds of active volcanoes.', false, true, 460, 421.8, 'Rocky', 5);
INSERT INTO public.moon VALUES (5, 405, 'Europa', 'Europa is a moon of Jupiter that is thought to have a subsurface ocean, making it a potential place for life.', false, true, 460, 670.9, 'Rocky', 5);
INSERT INTO public.moon VALUES (6, 406, 'Ganymede', 'Ganymede is the largest moon in the Solar System and is the only moon known to have its magnetic field.', false, true, 460, 1070.0, 'Rocky', 5);
INSERT INTO public.moon VALUES (7, 407, 'Callisto', 'Callisto is the second-largest moon of Jupiter, and it is covered by a thick, icy crust.', false, true, 460, 1882.7, 'Icy', 5);
INSERT INTO public.moon VALUES (8, 408, 'Titan', 'Titan is Saturn largest moon and has a thick atmosphere, consisting mostly of nitrogen.', false, true, 460, 1221.0, 'Icy', 6);
INSERT INTO public.moon VALUES (9, 409, 'Rhea', 'Rhea is Saturn second-largest moon and has a heavily cratered surface.', false, true, 460, 527.0, 'Icy', 6);
INSERT INTO public.moon VALUES (10, 410, 'Enceladus', 'Enceladus is known for its geysers that spew water and ice into space, hinting at a subsurface ocean.', false, true, 460, 238.0, 'Icy', 6);
INSERT INTO public.moon VALUES (11, 411, 'Mimas', 'Mimas is a moon of Saturn with a large impact crater, often called the "Death Star moon".', false, true, 460, 185.0, 'Icy', 6);
INSERT INTO public.moon VALUES (12, 412, 'Titania', 'Titania is the largest moon of Uranus, and it has a surface covered with canyons and ice-filled valleys.', false, true, 460, 435.0, 'Icy', 7);
INSERT INTO public.moon VALUES (13, 413, 'Oberon', 'Oberon is the second-largest moon of Uranus, and it has a surface full of craters and ancient terrain.', false, true, 460, 583.0, 'Icy', 7);
INSERT INTO public.moon VALUES (14, 414, 'Miranda', 'Miranda is one of the moons of Uranus, with a very varied surface, including cliffs and canyons.', false, true, 460, 471.0, 'Icy', 7);
INSERT INTO public.moon VALUES (15, 415, 'Ariel', 'Ariel is the fourth-largest moon of Uranus and has the youngest surface of all its moons.', false, true, 460, 191.0, 'Icy', 7);
INSERT INTO public.moon VALUES (16, 416, 'Triton', 'Triton is Neptune largest moon and is unique because it has a retrograde orbit around Neptune.', false, true, 460, 355.0, 'Icy', 8);
INSERT INTO public.moon VALUES (17, 417, 'Proteus', 'Proteus is one of Neptune irregular moons, and it is heavily cratered with a very irregular shape.', false, true, 460, 1170.0, 'Icy', 8);
INSERT INTO public.moon VALUES (18, 418, 'Charon', 'Charon is Pluto largest moon and is often considered a double-planet system with Pluto due to their similar sizes.', false, true, 460, 5900.0, 'Rocky', 9);
INSERT INTO public.moon VALUES (19, 419, 'Nix', 'Nix is one of Pluto moons, and it is irregularly shaped and much smaller than Charon.', false, true, 460, 4900.0, 'Rocky', 9);
INSERT INTO public.moon VALUES (20, 420, 'Hydra', 'Hydra is another moon of Pluto, irregularly shaped and smaller than Nix.', false, true, 460, 6000.0, 'Rocky', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 301, 'Mercury', 'Mercury is the smallest and closest planet to the Sun, with extreme temperature variations.', false, true, 460, 0.4, 'Rocky', 1);
INSERT INTO public.planet VALUES (2, 302, 'Venus', 'Venus has a thick atmosphere and surface temperatures that are hotter than Mercury.', false, true, 460, 0.7, 'Rocky', 1);
INSERT INTO public.planet VALUES (3, 303, 'Earth', 'Earth is the third planet from the Sun and the only known planet with life.', true, true, 460, 1.0, 'Rocky', 1);
INSERT INTO public.planet VALUES (4, 304, 'Mars', 'Mars is a cold, dry planet with a thin atmosphere, known for its red appearance.', false, true, 460, 1.5, 'Rocky', 1);
INSERT INTO public.planet VALUES (5, 305, 'Jupiter', 'Jupiter is the largest planet in our Solar System, a gas giant with a Great Red Spot.', false, true, 460, 5.2, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (6, 306, 'Saturn', 'Saturn is famous for its stunning ring system and is a gas giant similar to Jupiter.', false, true, 460, 9.6, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (7, 307, 'Uranus', 'Uranus is an ice giant with a blue-green color due to methane in its atmosphere.', false, true, 460, 19.2, 'Ice Giant', 2);
INSERT INTO public.planet VALUES (8, 308, 'Neptune', 'Neptune is an ice giant with strong winds and the most distant planet from the Sun in our Solar System.', false, true, 460, 30.1, 'Ice Giant', 2);
INSERT INTO public.planet VALUES (9, 309, 'Proxima b', 'Proxima b orbits Proxima Centauri and is considered in the habitable zone, potentially having liquid water.', true, true, 450, 4.2, 'Rocky', 5);
INSERT INTO public.planet VALUES (10, 310, 'Alpha Centauri Bb', 'Alpha Centauri Bb is a planet that orbits Alpha Centauri B, located about 4.37 light years away from Earth.', false, true, 450, 4.4, 'Rocky', 5);
INSERT INTO public.planet VALUES (11, 311, 'Kepler-452b', 'Kepler-452b is a super-Earth planet orbiting in the habitable zone of a star similar to the Sun.', true, true, 450, 1400.0, 'Super-Earth', 3);
INSERT INTO public.planet VALUES (12, 312, 'Kepler-22b', 'Kepler-22b is an exoplanet located in the habitable zone of its star, potentially capable of supporting life.', true, true, 450, 620.0, 'Super-Earth', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 201, 'Sol', 'The Sun, our star, is the closest star to Earth and the center of our Solar System.', true, true, 460, 0.0, 'Rocky, Gas Giant', 2);
INSERT INTO public.star VALUES (2, 202, 'Alpha Centauri A', 'Alpha Centauri A is part of the Alpha Centauri star system, the closest star system to Earth.', false, true, 500, 4.4, 'Gas Giant, Ice Giant', 1);
INSERT INTO public.star VALUES (3, 203, 'Sirius A', 'Sirius A is the brightest star in the night sky and part of the binary system with Sirius B.', false, true, 230, 8.6, 'Rocky, Ice Giant', 3);
INSERT INTO public.star VALUES (4, 204, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation Orion, nearing the end of its life.', false, true, 100, 642.5, 'Gas Giant, Rocky', 4);
INSERT INTO public.star VALUES (5, 205, 'Proxima Centauri', 'Proxima Centauri is the closest known star to the Sun, located in the Alpha Centauri star system.', true, false, 450, 4.2, 'Rocky, Ice Giant', 2);
INSERT INTO public.star VALUES (6, 206, 'Arcturus', 'Arcturus is the fourth-brightest star in the night sky and the brightest star in the constellation Boötes.', false, true, 700, 36.7, 'Gas Giant, Rocky', 5);


--
-- Name: earth earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_id_key UNIQUE (id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: earth earth_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

