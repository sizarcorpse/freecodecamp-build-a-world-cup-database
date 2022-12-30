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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 140, 141, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 142, 143, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 141, 143, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 140, 142, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 141, 144, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 143, 145, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 142, 146, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 140, 147, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 143, 148, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 145, 149, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 142, 150, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 146, 151, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 141, 152, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 144, 153, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 147, 154, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 140, 155, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 156, 155, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 157, 146, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 155, 157, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 156, 146, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 157, 158, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 155, 142, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 146, 148, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 156, 140, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 146, 159, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 148, 147, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 140, 160, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 156, 161, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 157, 151, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 158, 162, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 155, 149, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 142, 163, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (140, 'France');
INSERT INTO public.teams VALUES (141, 'Croatia');
INSERT INTO public.teams VALUES (142, 'Belgium');
INSERT INTO public.teams VALUES (143, 'England');
INSERT INTO public.teams VALUES (144, 'Russia');
INSERT INTO public.teams VALUES (145, 'Sweden');
INSERT INTO public.teams VALUES (146, 'Brazil');
INSERT INTO public.teams VALUES (147, 'Uruguay');
INSERT INTO public.teams VALUES (148, 'Colombia');
INSERT INTO public.teams VALUES (149, 'Switzerland');
INSERT INTO public.teams VALUES (150, 'Japan');
INSERT INTO public.teams VALUES (151, 'Mexico');
INSERT INTO public.teams VALUES (152, 'Denmark');
INSERT INTO public.teams VALUES (153, 'Spain');
INSERT INTO public.teams VALUES (154, 'Portugal');
INSERT INTO public.teams VALUES (155, 'Argentina');
INSERT INTO public.teams VALUES (156, 'Germany');
INSERT INTO public.teams VALUES (157, 'Netherlands');
INSERT INTO public.teams VALUES (158, 'Costa Rica');
INSERT INTO public.teams VALUES (159, 'Chile');
INSERT INTO public.teams VALUES (160, 'Nigeria');
INSERT INTO public.teams VALUES (161, 'Algeria');
INSERT INTO public.teams VALUES (162, 'Greece');
INSERT INTO public.teams VALUES (163, 'United States');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 163, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

