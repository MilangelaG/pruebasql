--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-05-23 23:06:39

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

DROP DATABASE prueba;
--
-- TOC entry 3347 (class 1262 OID 16447)
-- Name: prueba; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';


ALTER DATABASE prueba OWNER TO postgres;

\connect prueba

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
-- TOC entry 209 (class 1259 OID 16454)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    id integer NOT NULL,
    nombre character varying(255),
    "año" integer
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24617)
-- Name: peliculas_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas_tags (
    pelicula_id integer,
    tag_id integer
);


ALTER TABLE public.peliculas_tags OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24630)
-- Name: preguntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preguntas (
    id integer NOT NULL,
    pregunta character varying(255),
    respuesta_correcta character varying
);


ALTER TABLE public.preguntas OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24647)
-- Name: respuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respuestas (
    id integer NOT NULL,
    respuesta character varying(255),
    usuario_id integer,
    pregunta_id integer
);


ALTER TABLE public.respuestas OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16459)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    tag character varying(32)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24642)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(255),
    edad integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 3336 (class 0 OID 16454)
-- Dependencies: 209
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.peliculas (id, nombre, "año") VALUES (1, 'tarzan', 1999);
INSERT INTO public.peliculas (id, nombre, "año") VALUES (2, 'dumbo', 1941);
INSERT INTO public.peliculas (id, nombre, "año") VALUES (3, 'mulan', 1998);
INSERT INTO public.peliculas (id, nombre, "año") VALUES (4, 'el rey leon', 1994);
INSERT INTO public.peliculas (id, nombre, "año") VALUES (5, 'pocahontas', 1995);


--
-- TOC entry 3338 (class 0 OID 24617)
-- Dependencies: 211
-- Data for Name: peliculas_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.peliculas_tags (pelicula_id, tag_id) VALUES (1, 1);
INSERT INTO public.peliculas_tags (pelicula_id, tag_id) VALUES (1, 2);
INSERT INTO public.peliculas_tags (pelicula_id, tag_id) VALUES (1, 3);
INSERT INTO public.peliculas_tags (pelicula_id, tag_id) VALUES (2, 4);
INSERT INTO public.peliculas_tags (pelicula_id, tag_id) VALUES (2, 1);


--
-- TOC entry 3339 (class 0 OID 24630)
-- Dependencies: 212
-- Data for Name: preguntas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.preguntas (id, pregunta, respuesta_correcta) VALUES (1, '¿cual es el lugar mas frio de la tierra?', 'la antartida');
INSERT INTO public.preguntas (id, pregunta, respuesta_correcta) VALUES (2, '¿quien escribio la odisea?', 'homero');
INSERT INTO public.preguntas (id, pregunta, respuesta_correcta) VALUES (3, '¿cual es el rio mas largo del mundo?', 'amazonas');
INSERT INTO public.preguntas (id, pregunta, respuesta_correcta) VALUES (4, '¿que tipo de animal es la ballena?', 'mamifero marino');
INSERT INTO public.preguntas (id, pregunta, respuesta_correcta) VALUES (5, '¿quien escribio don quijote?', 'miguel de cervantes');


--
-- TOC entry 3341 (class 0 OID 24647)
-- Dependencies: 214
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (1, 'la antartida', 1, 1);
INSERT INTO public.respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (2, 'la antartida', 2, 1);
INSERT INTO public.respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (3, 'homero', 3, 2);
INSERT INTO public.respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (4, 'nilo', 4, 3);
INSERT INTO public.respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (5, 'pablo neruda', 5, 5);


--
-- TOC entry 3337 (class 0 OID 16459)
-- Dependencies: 210
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tags (id, tag) VALUES (1, 'aventura');
INSERT INTO public.tags (id, tag) VALUES (2, 'drama');
INSERT INTO public.tags (id, tag) VALUES (3, 'animacion');
INSERT INTO public.tags (id, tag) VALUES (4, 'animacion musical');
INSERT INTO public.tags (id, tag) VALUES (5, 'drama musical');


--
-- TOC entry 3340 (class 0 OID 24642)
-- Dependencies: 213
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios (id, nombre, edad) VALUES (1, 'maria', 24);
INSERT INTO public.usuarios (id, nombre, edad) VALUES (2, 'pedro', 25);
INSERT INTO public.usuarios (id, nombre, edad) VALUES (3, 'juan', 26);
INSERT INTO public.usuarios (id, nombre, edad) VALUES (4, 'ana', 27);
INSERT INTO public.usuarios (id, nombre, edad) VALUES (5, 'genesis', 28);


--
-- TOC entry 3184 (class 2606 OID 16458)
-- Name: peliculas peliculas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 24636)
-- Name: preguntas preguntas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 24651)
-- Name: respuestas respuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 16463)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 24646)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 24620)
-- Name: peliculas_tags fk_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas_tags
    ADD CONSTRAINT fk_pelicula FOREIGN KEY (pelicula_id) REFERENCES public.peliculas(id);


--
-- TOC entry 3196 (class 2606 OID 24657)
-- Name: respuestas fk_pregunta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_pregunta FOREIGN KEY (pregunta_id) REFERENCES public.preguntas(id);


--
-- TOC entry 3194 (class 2606 OID 24625)
-- Name: peliculas_tags fk_tag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas_tags
    ADD CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- TOC entry 3195 (class 2606 OID 24652)
-- Name: respuestas fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


-- Completed on 2023-05-23 23:06:40

--
-- PostgreSQL database dump complete
--

/* 
/* 1. Revisa el tipo de relación y crea el modelo correspondiente. Respeta las claves
primarias, foráneas y tipos de datos. */

CREATE TABLE peliculas (id integer, nombre varchar(255), año integer, PRIMARY KEY (id));

SELECT * FROM peliculas;

CREATE TABLE tags (id integer, tag varchar(32), PRIMARY KEY (id)); 

SELECT * FROM tags;

CREATE TABLE peliculas_tags (pelicula_id INT,tag_id INT,
CONSTRAINT fk_pelicula FOREIGN KEY (pelicula_id) REFERENCES peliculas (id),
CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tags (id));

SELECT * FROM peliculas_tags;

/* 2. Inserta 5 películas y 5 tags; la primera película debe tener 3 tags asociados, la
segunda película debe tener 2 tags asociados. */

INSERT INTO peliculas (id, nombre, año) VALUES (1,'tarzan', 1999);
INSERT INTO peliculas (id, nombre, año) VALUES (2,'dumbo', 1941);
INSERT INTO peliculas (id, nombre, año) VALUES (3,'mulan', 1998);
INSERT INTO peliculas (id, nombre, año) VALUES (4,'el rey leon', 1994);
INSERT INTO peliculas (id, nombre, año) VALUES (5,'pocahontas', 1995);

INSERT INTO tags (id, tag) VALUES (1, 'aventura');
INSERT INTO tags (id, tag) VALUES (2, 'drama');
INSERT INTO tags (id, tag) VALUES (3, 'animacion');
INSERT INTO tags (id, tag) VALUES (4, 'animacion musical');
INSERT INTO tags (id, tag) VALUES (5, 'drama musical');

INSERT INTO peliculas_tags (pelicula_id, tag_id) VALUES (1, 1);
INSERT INTO peliculas_tags (pelicula_id, tag_id) VALUES (1, 2);
INSERT INTO peliculas_tags (pelicula_id, tag_id) VALUES (1, 3);
INSERT INTO peliculas_tags (pelicula_id, tag_id) VALUES (2, 4);
INSERT INTO peliculas_tags (pelicula_id, tag_id) VALUES (2, 1);

/* 3. Cuenta la cantidad de tags que tiene cada película. Si una película no tiene tags debe
mostrar */

SELECT p.nombre AS pelicula, COUNT(t.tag) AS cantidad_tags FROM peliculas p 
LEFT JOIN peliculas_tags pt
ON p.id = pt.pelicula_id
LEFT JOIN tags t 
ON t.id = pt.tag_id
GROUP BY p.nombre
ORDER BY COUNT(t.tag) desc;

/* 4. Crea las tablas correspondientes respetando los nombres, tipos, claves primarias y
foráneas y tipos de datos. */

CREATE TABLE preguntas (id INT PRIMARY KEY, pregunta VARCHAR(255), respuesta_correcta VARCHAR);

SELECT * FROM preguntas;

CREATE TABLE usuarios (id INT PRIMARY KEY, nombre VARCHAR(255), edad INT);

SELECT * FROM usuarios;

CREATE TABLE respuestas (id INT PRIMARY key, respuesta VARCHAR(255), usuario_id INT, pregunta_id INT,
CONSTRAINT fk_usuario FOREIGN key (usuario_id) REFERENCES usuarios (id),
CONSTRAINT fk_pregunta FOREIGN key (pregunta_id) REFERENCES preguntas (id));

SELECT * FROM respuestas;

/* 5. Agrega 5 usuarios y 5 preguntas.
a. La primera pregunta debe estar respondida correctamente dos veces, por dos
usuarios diferentes.
b. La segunda pregunta debe estar contestada correctamente solo por un
usuario.
c. Las otras dos preguntas deben tener respuestas incorrectas */

INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (1, '¿cual es el lugar mas frio de la tierra?', 'la antartida');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (2, '¿quien escribio la odisea?', 'homero');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (3, '¿cual es el rio mas largo del mundo?', 'amazonas');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (4, '¿que tipo de animal es la ballena?', 'mamifero marino');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (5, '¿quien escribio don quijote?', 'miguel de cervantes');

SELECT * FROM preguntas;

INSERT INTO usuarios (id, nombre, edad) VALUES (1, 'maria', 24);
INSERT INTO usuarios (id, nombre, edad) VALUES (2, 'pedro', 25);
INSERT INTO usuarios (id, nombre, edad) VALUES (3, 'juan', 26);
INSERT INTO usuarios (id, nombre, edad) VALUES (4, 'ana', 27);
INSERT INTO usuarios (id, nombre, edad) VALUES (5, 'genesis', 28);

SELECT * FROM usuarios;

INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (1, 'la antartida', 1, 1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (2, 'la antartida', 2, 1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (3, 'homero', 3, 2);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (4, 'nilo', 4, 3);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES (5, 'pablo neruda', 5, 5);

SELECT * FROM respuestas;

/* 6. Cuenta la cantidad de respuestas correctas totales por usuario (independiente de la
pregunta). */

SELECT u.nombre, COUNT(u.id) FILTER (WHERE r.respuesta = p.respuesta_correcta) AS respuestas_correctas FROM usuarios u
LEFT JOIN respuestas r 
ON u.id = r.usuario_id 
LEFT JOIN preguntas p 
ON p.id = r.pregunta_id 
GROUP BY u.nombre
ORDER BY respuestas_correctas desc;

/* 7. Por cada pregunta, en la tabla preguntas, cuenta cuántos usuarios respondieron
correctamente */

SELECT p.pregunta, COUNT(u.id) FILTER (WHERE r.respuesta = p.respuesta_correcta) AS respuestas_correctas FROM preguntas p
LEFT JOIN respuestas r 
ON p.id = r.pregunta_id 
LEFT JOIN usuarios u
ON u.id = r.usuario_id 
GROUP BY p.pregunta
ORDER BY respuestas_correctas desc;
*/