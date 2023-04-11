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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guess integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 17, 1);
INSERT INTO public.games VALUES (2, 45, 2);
INSERT INTO public.games VALUES (3, 754, 2);
INSERT INTO public.games VALUES (4, 1, 3);
INSERT INTO public.games VALUES (5, 442, 3);
INSERT INTO public.games VALUES (6, 794, 2);
INSERT INTO public.games VALUES (7, 215, 2);
INSERT INTO public.games VALUES (8, 298, 2);
INSERT INTO public.games VALUES (9, 13, 1);
INSERT INTO public.games VALUES (10, 157, 4);
INSERT INTO public.games VALUES (11, 827, 4);
INSERT INTO public.games VALUES (12, 609, 5);
INSERT INTO public.games VALUES (13, 823, 5);
INSERT INTO public.games VALUES (14, 295, 4);
INSERT INTO public.games VALUES (15, 500, 4);
INSERT INTO public.games VALUES (16, 4, 4);
INSERT INTO public.games VALUES (17, 269, 6);
INSERT INTO public.games VALUES (18, 895, 6);
INSERT INTO public.games VALUES (19, 669, 7);
INSERT INTO public.games VALUES (20, 827, 7);
INSERT INTO public.games VALUES (21, 180, 6);
INSERT INTO public.games VALUES (22, 739, 6);
INSERT INTO public.games VALUES (23, 774, 6);
INSERT INTO public.games VALUES (24, 734, 8);
INSERT INTO public.games VALUES (25, 961, 8);
INSERT INTO public.games VALUES (26, 546, 9);
INSERT INTO public.games VALUES (27, 366, 9);
INSERT INTO public.games VALUES (28, 88, 8);
INSERT INTO public.games VALUES (29, 51, 8);
INSERT INTO public.games VALUES (30, 346, 8);
INSERT INTO public.games VALUES (31, 10, 10);
INSERT INTO public.games VALUES (32, 12, 10);
INSERT INTO public.games VALUES (33, 651, 11);
INSERT INTO public.games VALUES (34, 102, 11);
INSERT INTO public.games VALUES (35, 697, 12);
INSERT INTO public.games VALUES (36, 50, 12);
INSERT INTO public.games VALUES (37, 965, 11);
INSERT INTO public.games VALUES (38, 931, 11);
INSERT INTO public.games VALUES (39, 33, 11);
INSERT INTO public.games VALUES (40, 9, 1);
INSERT INTO public.games VALUES (41, 875, 13);
INSERT INTO public.games VALUES (42, 205, 13);
INSERT INTO public.games VALUES (43, 59, 14);
INSERT INTO public.games VALUES (44, 765, 14);
INSERT INTO public.games VALUES (45, 419, 13);
INSERT INTO public.games VALUES (46, 507, 13);
INSERT INTO public.games VALUES (47, 116, 13);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'taki');
INSERT INTO public.users VALUES (2, 'user_1681213018105');
INSERT INTO public.users VALUES (3, 'user_1681213018104');
INSERT INTO public.users VALUES (4, 'user_1681213226013');
INSERT INTO public.users VALUES (5, 'user_1681213226012');
INSERT INTO public.users VALUES (6, 'user_1681213248776');
INSERT INTO public.users VALUES (7, 'user_1681213248775');
INSERT INTO public.users VALUES (8, 'user_1681213307812');
INSERT INTO public.users VALUES (9, 'user_1681213307811');
INSERT INTO public.users VALUES (10, 'ero');
INSERT INTO public.users VALUES (11, 'user_1681213454442');
INSERT INTO public.users VALUES (12, 'user_1681213454441');
INSERT INTO public.users VALUES (13, 'user_1681213683016');
INSERT INTO public.users VALUES (14, 'user_1681213683015');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

