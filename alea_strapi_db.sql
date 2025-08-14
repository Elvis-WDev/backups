--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-08-14 14:23:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 252 (class 1259 OID 41217)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 251 (class 1259 OID 41216)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5599 (class 0 OID 0)
-- Dependencies: 251
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 302 (class 1259 OID 41513)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


--
-- TOC entry 301 (class 1259 OID 41512)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5600 (class 0 OID 0)
-- Dependencies: 301
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- TOC entry 256 (class 1259 OID 41241)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 255 (class 1259 OID 41240)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5601 (class 0 OID 0)
-- Dependencies: 255
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 254 (class 1259 OID 41229)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 253 (class 1259 OID 41228)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5602 (class 0 OID 0)
-- Dependencies: 253
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 304 (class 1259 OID 41525)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


--
-- TOC entry 303 (class 1259 OID 41524)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5603 (class 0 OID 0)
-- Dependencies: 303
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- TOC entry 318 (class 1259 OID 49208)
-- Name: analyses_labs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.analyses_labs (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    nombre character varying(255),
    precio integer
);


--
-- TOC entry 320 (class 1259 OID 49237)
-- Name: analyses_labs_category_id_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.analyses_labs_category_id_lnk (
    id integer NOT NULL,
    analyses_lab_id integer,
    categories_lab_id integer,
    analyses_lab_ord double precision
);


--
-- TOC entry 319 (class 1259 OID 49236)
-- Name: analyses_labs_category_id_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.analyses_labs_category_id_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5604 (class 0 OID 0)
-- Dependencies: 319
-- Name: analyses_labs_category_id_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.analyses_labs_category_id_lnk_id_seq OWNED BY public.analyses_labs_category_id_lnk.id;


--
-- TOC entry 317 (class 1259 OID 49207)
-- Name: analyses_labs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.analyses_labs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5605 (class 0 OID 0)
-- Dependencies: 317
-- Name: analyses_labs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.analyses_labs_id_seq OWNED BY public.analyses_labs.id;


--
-- TOC entry 246 (class 1259 OID 41155)
-- Name: articles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    document_id character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    titulo character varying(255),
    descripcion text,
    contenido text
);


--
-- TOC entry 312 (class 1259 OID 41984)
-- Name: articles_autor_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles_autor_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);


--
-- TOC entry 311 (class 1259 OID 41983)
-- Name: articles_autor_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_autor_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5606 (class 0 OID 0)
-- Dependencies: 311
-- Name: articles_autor_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_autor_lnk_id_seq OWNED BY public.articles_autor_lnk.id;


--
-- TOC entry 314 (class 1259 OID 41996)
-- Name: articles_categoria_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles_categoria_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);


--
-- TOC entry 313 (class 1259 OID 41995)
-- Name: articles_categoria_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_categoria_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5607 (class 0 OID 0)
-- Dependencies: 313
-- Name: articles_categoria_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_categoria_lnk_id_seq OWNED BY public.articles_categoria_lnk.id;


--
-- TOC entry 244 (class 1259 OID 41141)
-- Name: articles_cmps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- TOC entry 243 (class 1259 OID 41140)
-- Name: articles_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5608 (class 0 OID 0)
-- Dependencies: 243
-- Name: articles_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_cmps_id_seq OWNED BY public.articles_cmps.id;


--
-- TOC entry 245 (class 1259 OID 41154)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5609 (class 0 OID 0)
-- Dependencies: 245
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- TOC entry 248 (class 1259 OID 41167)
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    document_id character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    nombre character varying(255),
    especialidad character varying(255)
);


--
-- TOC entry 247 (class 1259 OID 41166)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5610 (class 0 OID 0)
-- Dependencies: 247
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- TOC entry 250 (class 1259 OID 41179)
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 249 (class 1259 OID 41178)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5611 (class 0 OID 0)
-- Dependencies: 249
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 316 (class 1259 OID 49184)
-- Name: categories_labs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories_labs (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    nombre character varying(255),
    slug character varying(255)
);


--
-- TOC entry 315 (class 1259 OID 49183)
-- Name: categories_labs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_labs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5612 (class 0 OID 0)
-- Dependencies: 315
-- Name: categories_labs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_labs_id_seq OWNED BY public.categories_labs.id;


--
-- TOC entry 276 (class 1259 OID 41347)
-- Name: components_shared_media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);


--
-- TOC entry 275 (class 1259 OID 41346)
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5613 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;


--
-- TOC entry 274 (class 1259 OID 41338)
-- Name: components_shared_quotes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


--
-- TOC entry 273 (class 1259 OID 41337)
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5614 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;


--
-- TOC entry 272 (class 1259 OID 41329)
-- Name: components_shared_rich_texts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


--
-- TOC entry 271 (class 1259 OID 41328)
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5615 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;


--
-- TOC entry 270 (class 1259 OID 41320)
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


--
-- TOC entry 269 (class 1259 OID 41319)
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5616 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- TOC entry 268 (class 1259 OID 41313)
-- Name: components_shared_sliders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);


--
-- TOC entry 267 (class 1259 OID 41312)
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5617 (class 0 OID 0)
-- Dependencies: 267
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;


--
-- TOC entry 326 (class 1259 OID 49365)
-- Name: despistajes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.despistajes (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    title character varying(255),
    description text
);


--
-- TOC entry 325 (class 1259 OID 49364)
-- Name: despistajes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.despistajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5618 (class 0 OID 0)
-- Dependencies: 325
-- Name: despistajes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.despistajes_id_seq OWNED BY public.despistajes.id;


--
-- TOC entry 322 (class 1259 OID 49286)
-- Name: especialidades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.especialidades (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    nombre character varying(255),
    rating integer,
    min_lead_time integer,
    max_lead_time integer,
    lead_time_unit character varying(255),
    description text,
    specialists_count integer,
    estado character varying(255),
    icon_name character varying(255)
);


--
-- TOC entry 321 (class 1259 OID 49285)
-- Name: especialidades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.especialidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5619 (class 0 OID 0)
-- Dependencies: 321
-- Name: especialidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.especialidades_id_seq OWNED BY public.especialidades.id;


--
-- TOC entry 224 (class 1259 OID 40985)
-- Name: files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 286 (class 1259 OID 41394)
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


--
-- TOC entry 285 (class 1259 OID 41393)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5620 (class 0 OID 0)
-- Dependencies: 285
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- TOC entry 223 (class 1259 OID 40984)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5621 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 284 (class 1259 OID 41382)
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- TOC entry 283 (class 1259 OID 41381)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5622 (class 0 OID 0)
-- Dependencies: 283
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- TOC entry 228 (class 1259 OID 41019)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 227 (class 1259 OID 41018)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5623 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 324 (class 1259 OID 49339)
-- Name: pruebas_geneticas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pruebas_geneticas (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    tittle character varying(255),
    description text
);


--
-- TOC entry 323 (class 1259 OID 49338)
-- Name: pruebas_geneticas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pruebas_geneticas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5624 (class 0 OID 0)
-- Dependencies: 323
-- Name: pruebas_geneticas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pruebas_geneticas_id_seq OWNED BY public.pruebas_geneticas.id;


--
-- TOC entry 260 (class 1259 OID 41265)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 259 (class 1259 OID 41264)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5625 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 306 (class 1259 OID 41538)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


--
-- TOC entry 305 (class 1259 OID 41537)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5626 (class 0 OID 0)
-- Dependencies: 305
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 258 (class 1259 OID 41253)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 257 (class 1259 OID 41252)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5627 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 266 (class 1259 OID 41301)
-- Name: strapi_audit_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_audit_logs (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    date timestamp(6) without time zone,
    payload jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 265 (class 1259 OID 41300)
-- Name: strapi_audit_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_audit_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5628 (class 0 OID 0)
-- Dependencies: 265
-- Name: strapi_audit_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_audit_logs_id_seq OWNED BY public.strapi_audit_logs.id;


--
-- TOC entry 310 (class 1259 OID 41562)
-- Name: strapi_audit_logs_user_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_audit_logs_user_lnk (
    id integer NOT NULL,
    audit_log_id integer,
    user_id integer
);


--
-- TOC entry 309 (class 1259 OID 41561)
-- Name: strapi_audit_logs_user_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_audit_logs_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5629 (class 0 OID 0)
-- Dependencies: 309
-- Name: strapi_audit_logs_user_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_audit_logs_user_lnk_id_seq OWNED BY public.strapi_audit_logs_user_lnk.id;


--
-- TOC entry 278 (class 1259 OID 41354)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


--
-- TOC entry 277 (class 1259 OID 41353)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5630 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 222 (class 1259 OID 40976)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


--
-- TOC entry 221 (class 1259 OID 40975)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5631 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 282 (class 1259 OID 41372)
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


--
-- TOC entry 281 (class 1259 OID 41371)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5632 (class 0 OID 0)
-- Dependencies: 281
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- TOC entry 218 (class 1259 OID 40962)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


--
-- TOC entry 217 (class 1259 OID 40961)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5633 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 220 (class 1259 OID 40969)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


--
-- TOC entry 219 (class 1259 OID 40968)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5634 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- TOC entry 232 (class 1259 OID 41043)
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- TOC entry 231 (class 1259 OID 41042)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5635 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 290 (class 1259 OID 41418)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


--
-- TOC entry 289 (class 1259 OID 41417)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5636 (class 0 OID 0)
-- Dependencies: 289
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- TOC entry 230 (class 1259 OID 41031)
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 229 (class 1259 OID 41030)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5637 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 264 (class 1259 OID 41289)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 263 (class 1259 OID 41288)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5638 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 308 (class 1259 OID 41550)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


--
-- TOC entry 307 (class 1259 OID 41549)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5639 (class 0 OID 0)
-- Dependencies: 307
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 262 (class 1259 OID 41277)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 261 (class 1259 OID 41276)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5640 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 280 (class 1259 OID 41363)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


--
-- TOC entry 279 (class 1259 OID 41362)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5641 (class 0 OID 0)
-- Dependencies: 279
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 234 (class 1259 OID 41055)
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 233 (class 1259 OID 41054)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5642 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- TOC entry 292 (class 1259 OID 41430)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


--
-- TOC entry 291 (class 1259 OID 41429)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5643 (class 0 OID 0)
-- Dependencies: 291
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 236 (class 1259 OID 41067)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 235 (class 1259 OID 41066)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5644 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- TOC entry 296 (class 1259 OID 41453)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


--
-- TOC entry 295 (class 1259 OID 41452)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5645 (class 0 OID 0)
-- Dependencies: 295
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 294 (class 1259 OID 41441)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


--
-- TOC entry 293 (class 1259 OID 41440)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5646 (class 0 OID 0)
-- Dependencies: 293
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 238 (class 1259 OID 41079)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 237 (class 1259 OID 41078)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5647 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 298 (class 1259 OID 41465)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


--
-- TOC entry 297 (class 1259 OID 41464)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5648 (class 0 OID 0)
-- Dependencies: 297
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- TOC entry 240 (class 1259 OID 41091)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 239 (class 1259 OID 41090)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5649 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 242 (class 1259 OID 41103)
-- Name: up_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 241 (class 1259 OID 41102)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5650 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 300 (class 1259 OID 41477)
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


--
-- TOC entry 299 (class 1259 OID 41476)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5651 (class 0 OID 0)
-- Dependencies: 299
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- TOC entry 226 (class 1259 OID 41003)
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- TOC entry 225 (class 1259 OID 41002)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5652 (class 0 OID 0)
-- Dependencies: 225
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 288 (class 1259 OID 41406)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


--
-- TOC entry 287 (class 1259 OID 41405)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5653 (class 0 OID 0)
-- Dependencies: 287
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- TOC entry 4928 (class 2604 OID 41220)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 4953 (class 2604 OID 41516)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 4930 (class 2604 OID 41244)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 4929 (class 2604 OID 41232)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 4954 (class 2604 OID 41528)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 4961 (class 2604 OID 49211)
-- Name: analyses_labs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs ALTER COLUMN id SET DEFAULT nextval('public.analyses_labs_id_seq'::regclass);


--
-- TOC entry 4962 (class 2604 OID 49240)
-- Name: analyses_labs_category_id_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs_category_id_lnk ALTER COLUMN id SET DEFAULT nextval('public.analyses_labs_category_id_lnk_id_seq'::regclass);


--
-- TOC entry 4925 (class 2604 OID 41158)
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- TOC entry 4958 (class 2604 OID 41987)
-- Name: articles_autor_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_autor_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_autor_lnk_id_seq'::regclass);


--
-- TOC entry 4959 (class 2604 OID 41999)
-- Name: articles_categoria_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_categoria_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_categoria_lnk_id_seq'::regclass);


--
-- TOC entry 4924 (class 2604 OID 41144)
-- Name: articles_cmps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_cmps ALTER COLUMN id SET DEFAULT nextval('public.articles_cmps_id_seq'::regclass);


--
-- TOC entry 4926 (class 2604 OID 41170)
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- TOC entry 4927 (class 2604 OID 41182)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4960 (class 2604 OID 49187)
-- Name: categories_labs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_labs ALTER COLUMN id SET DEFAULT nextval('public.categories_labs_id_seq'::regclass);


--
-- TOC entry 4940 (class 2604 OID 41350)
-- Name: components_shared_media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);


--
-- TOC entry 4939 (class 2604 OID 41341)
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);


--
-- TOC entry 4938 (class 2604 OID 41332)
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);


--
-- TOC entry 4937 (class 2604 OID 41323)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 4936 (class 2604 OID 41316)
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);


--
-- TOC entry 4965 (class 2604 OID 49368)
-- Name: despistajes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despistajes ALTER COLUMN id SET DEFAULT nextval('public.despistajes_id_seq'::regclass);


--
-- TOC entry 4963 (class 2604 OID 49289)
-- Name: especialidades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.especialidades ALTER COLUMN id SET DEFAULT nextval('public.especialidades_id_seq'::regclass);


--
-- TOC entry 4914 (class 2604 OID 40988)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 4945 (class 2604 OID 41397)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 4944 (class 2604 OID 41385)
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- TOC entry 4916 (class 2604 OID 41022)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 4964 (class 2604 OID 49342)
-- Name: pruebas_geneticas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pruebas_geneticas ALTER COLUMN id SET DEFAULT nextval('public.pruebas_geneticas_id_seq'::regclass);


--
-- TOC entry 4932 (class 2604 OID 41268)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 4955 (class 2604 OID 41541)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 4931 (class 2604 OID 41256)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 41304)
-- Name: strapi_audit_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs ALTER COLUMN id SET DEFAULT nextval('public.strapi_audit_logs_id_seq'::regclass);


--
-- TOC entry 4957 (class 2604 OID 41565)
-- Name: strapi_audit_logs_user_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_audit_logs_user_lnk_id_seq'::regclass);


--
-- TOC entry 4941 (class 2604 OID 41357)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 4913 (class 2604 OID 40979)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 4943 (class 2604 OID 41375)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 4911 (class 2604 OID 40965)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 4912 (class 2604 OID 40972)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 4918 (class 2604 OID 41046)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 4947 (class 2604 OID 41421)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 4917 (class 2604 OID 41034)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 4934 (class 2604 OID 41292)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 4956 (class 2604 OID 41553)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 4933 (class 2604 OID 41280)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 4942 (class 2604 OID 41366)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 4919 (class 2604 OID 41058)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 4948 (class 2604 OID 41433)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 4920 (class 2604 OID 41070)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 4950 (class 2604 OID 41456)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 4949 (class 2604 OID 41444)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 4921 (class 2604 OID 41082)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 4951 (class 2604 OID 41468)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 4922 (class 2604 OID 41094)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 4923 (class 2604 OID 41106)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 4952 (class 2604 OID 41480)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 4915 (class 2604 OID 41006)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 4946 (class 2604 OID 41409)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 5519 (class 0 OID 41217)
-- Dependencies: 252
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
226	yb38l8cqmx4fn5474bca3rio	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["titulo", "descripcion", "contenido", "slug", "cover", "autor", "categoria", "blocks"]}	[]	2025-07-31 15:16:18.234	2025-07-31 15:16:18.234	2025-07-31 15:16:18.235	\N	\N	\N
227	jv2hvwuna2j1psk4fnbxik6q	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["titulo", "descripcion", "contenido", "slug", "cover", "autor", "categoria", "blocks"]}	[]	2025-07-31 15:16:18.241	2025-07-31 15:16:18.241	2025-07-31 15:16:18.242	\N	\N	\N
4	dicdlvagg4yopex2oxsupnat	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.727	2025-07-11 14:34:00.727	2025-07-11 14:34:00.727	\N	\N	\N
228	hm42279ycpr10a0168wrlu48	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["titulo", "descripcion", "contenido", "slug", "cover", "autor", "categoria", "blocks"]}	[]	2025-07-31 15:16:18.245	2025-07-31 15:16:18.245	2025-07-31 15:16:18.245	\N	\N	\N
9	qe91qxlbufb5uq49qtu4zuvv	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.747	2025-07-11 14:34:00.747	2025-07-11 14:34:00.747	\N	\N	\N
14	ufro1v64qvsk1bqhdf1rf8z2	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.761	2025-07-11 14:34:00.761	2025-07-11 14:34:00.761	\N	\N	\N
17	uqtg3lyj76xb3c6kbtqteruu	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-07-11 14:34:00.77	2025-07-11 14:34:00.77	2025-07-11 14:34:00.77	\N	\N	\N
18	lnn6j15bfhzqypay4zbu1nzh	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-07-11 14:34:00.774	2025-07-11 14:34:00.774	2025-07-11 14:34:00.774	\N	\N	\N
19	usu2p0v0vx93iuba9c7iqdl8	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-07-11 14:34:00.777	2025-07-11 14:34:00.777	2025-07-11 14:34:00.777	\N	\N	\N
22	wrcd226xrdz2t729molhgoew	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-07-11 14:34:00.788	2025-07-11 14:34:00.788	2025-07-11 14:34:00.788	\N	\N	\N
23	tktqlrmv7s4dxtzr53xs1txj	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-07-11 14:34:00.791	2025-07-11 14:34:00.791	2025-07-11 14:34:00.791	\N	\N	\N
24	o8at0oepoj7luhob0m9kk1sx	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-07-11 14:34:00.794	2025-07-11 14:34:00.794	2025-07-11 14:34:00.794	\N	\N	\N
26	izki0umjek7mc6kkl8mf2kys	plugin::upload.read	{}	\N	{}	[]	2025-07-11 14:34:00.8	2025-07-11 14:34:00.8	2025-07-11 14:34:00.8	\N	\N	\N
27	qpl712qj50etvkzdur2wqkp2	plugin::upload.configure-view	{}	\N	{}	[]	2025-07-11 14:34:00.803	2025-07-11 14:34:00.803	2025-07-11 14:34:00.803	\N	\N	\N
28	jenme7wjvh5pem3r6vcman7h	plugin::upload.assets.create	{}	\N	{}	[]	2025-07-11 14:34:00.805	2025-07-11 14:34:00.805	2025-07-11 14:34:00.806	\N	\N	\N
29	hmcgpvqas7ja6awga99hdi27	plugin::upload.assets.update	{}	\N	{}	[]	2025-07-11 14:34:00.808	2025-07-11 14:34:00.808	2025-07-11 14:34:00.808	\N	\N	\N
30	h9sspiqcq9hpp9e9n1ib4qfy	plugin::upload.assets.download	{}	\N	{}	[]	2025-07-11 14:34:00.81	2025-07-11 14:34:00.81	2025-07-11 14:34:00.81	\N	\N	\N
31	l4gub2gic64uz1h8dnk9bu73	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-07-11 14:34:00.812	2025-07-11 14:34:00.812	2025-07-11 14:34:00.813	\N	\N	\N
35	eauew55trbhhfc8zcav0tymo	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-07-11 14:34:00.826	2025-07-11 14:34:00.826	2025-07-11 14:34:00.826	\N	\N	\N
3	qe12tdu636zzcpuh2ijwpaw9	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["avatar", "email"]}	[]	2025-07-11 14:34:00.725	2025-07-11 16:00:30.31	2025-07-11 14:34:00.725	\N	\N	\N
8	xx9pqm2g8lmx07osvlgyt2sq	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["avatar", "email"]}	[]	2025-07-11 14:34:00.744	2025-07-11 16:00:30.31	2025-07-11 14:34:00.744	\N	\N	\N
13	y1960wrai9mgst4yacsbvyav	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["avatar", "email"]}	[]	2025-07-11 14:34:00.758	2025-07-11 16:00:30.31	2025-07-11 14:34:00.758	\N	\N	\N
33	v0oyj8xlr3mcj0ey030y0cmw	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	["admin::is-creator"]	2025-07-11 14:34:00.821	2025-07-11 16:00:30.31	2025-07-11 14:34:00.821	\N	\N	\N
34	s4qf6y5nm99n9oe390wzh40o	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["avatar", "email"]}	["admin::is-creator"]	2025-07-11 14:34:00.824	2025-07-11 16:00:30.31	2025-07-11 14:34:00.824	\N	\N	\N
7	zenf5s633s4nlk75e4e2cbf0	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	[]	2025-07-11 14:34:00.741	2025-07-11 16:00:30.31	2025-07-11 14:34:00.741	\N	\N	\N
12	fkm40gd4f1g5k7eodug17qjj	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	[]	2025-07-11 14:34:00.755	2025-07-11 16:00:30.31	2025-07-11 14:34:00.756	\N	\N	\N
40	d9tc2ux1k3ioizn3zw54tqc9	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-07-11 14:34:00.841	2025-07-11 14:34:00.841	2025-07-11 14:34:00.841	\N	\N	\N
45	ddtbduhh0jm9utqvetw0od4b	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-07-11 14:34:00.856	2025-07-11 14:34:00.856	2025-07-11 14:34:00.856	\N	\N	\N
48	hpljwkrm4twnmmggli2wdkp7	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-07-11 14:34:00.863	2025-07-11 14:34:00.863	2025-07-11 14:34:00.863	\N	\N	\N
49	ote9lctbr0jk66cdely1hdyu	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-07-11 14:34:00.867	2025-07-11 14:34:00.867	2025-07-11 14:34:00.867	\N	\N	\N
50	bgbnomnlmx29x9o5t2skj37g	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-07-11 14:34:00.87	2025-07-11 14:34:00.87	2025-07-11 14:34:00.87	\N	\N	\N
52	b2yh0eceqncpzwyl9xtajnvg	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-07-11 14:34:00.874	2025-07-11 14:34:00.874	2025-07-11 14:34:00.874	\N	\N	\N
53	bapg8nqh27sbw87fsgkh3pwn	plugin::upload.configure-view	{}	\N	{}	[]	2025-07-11 14:34:00.876	2025-07-11 14:34:00.876	2025-07-11 14:34:00.876	\N	\N	\N
54	l01jxpmvao905ahf7pc5ipx4	plugin::upload.assets.create	{}	\N	{}	[]	2025-07-11 14:34:00.879	2025-07-11 14:34:00.879	2025-07-11 14:34:00.879	\N	\N	\N
55	xbuwjzpry4s8h3bw1vbtb0v0	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-07-11 14:34:00.882	2025-07-11 14:34:00.882	2025-07-11 14:34:00.882	\N	\N	\N
56	je6uwjsxpe3mqgzloz8nhpuk	plugin::upload.assets.download	{}	\N	{}	[]	2025-07-11 14:34:00.885	2025-07-11 14:34:00.885	2025-07-11 14:34:00.885	\N	\N	\N
57	b8utfamcysin20g6s7d113zn	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-07-11 14:34:00.888	2025-07-11 14:34:00.888	2025-07-11 14:34:00.888	\N	\N	\N
58	ufz8hynn00gl669re6o38zz1	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-07-11 14:34:00.913	2025-07-11 14:34:00.913	2025-07-11 14:34:00.913	\N	\N	\N
62	pp204uavpeaigaic6ymigx7q	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.926	2025-07-11 14:34:00.926	2025-07-11 14:34:00.926	\N	\N	\N
64	y17q45gu3zj1x4vj9qortrcc	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-07-11 14:34:00.931	2025-07-11 14:34:00.931	2025-07-11 14:34:00.931	\N	\N	\N
68	lpgkwjlnwup3mmgoszs4zle9	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.942	2025-07-11 14:34:00.942	2025-07-11 14:34:00.942	\N	\N	\N
70	yhas6qbw1wmyp19esia4cus4	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-07-11 14:34:00.946	2025-07-11 14:34:00.946	2025-07-11 14:34:00.946	\N	\N	\N
43	qillm6vsnb8xxd9dlyxcnzk1	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	["admin::is-creator"]	2025-07-11 14:34:00.85	2025-07-11 16:00:30.31	2025-07-11 14:34:00.85	\N	\N	\N
44	f7o4aurmv1tgpsexxckcj1s2	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["avatar", "email"]}	["admin::is-creator"]	2025-07-11 14:34:00.853	2025-07-11 16:00:30.31	2025-07-11 14:34:00.853	\N	\N	\N
39	xq4vvptcg8xf85u3seyoina8	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["avatar", "email"]}	["admin::is-creator"]	2025-07-11 14:34:00.838	2025-07-11 16:00:30.31	2025-07-11 14:34:00.838	\N	\N	\N
74	reylmitbgcqgxcff7x6lwuma	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-07-11 14:34:00.957	2025-07-11 14:34:00.957	2025-07-11 14:34:00.957	\N	\N	\N
76	yxt68ebqo0i0udh76denmbwa	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-07-11 14:34:00.961	2025-07-11 14:34:00.961	2025-07-11 14:34:00.961	\N	\N	\N
78	qcwn5ap5qbttog1v4e5weg7b	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-07-11 14:34:00.967	2025-07-11 14:34:00.967	2025-07-11 14:34:00.967	\N	\N	\N
79	h5ooo46yppebff9qay96q2fw	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-07-11 14:34:00.971	2025-07-11 14:34:00.971	2025-07-11 14:34:00.971	\N	\N	\N
80	th7m1s4g2dx0pvh1v1bfffam	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-07-11 14:34:00.974	2025-07-11 14:34:00.974	2025-07-11 14:34:00.975	\N	\N	\N
82	g0kw5b188lv4h3awjodoan0r	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-07-11 14:34:01.014	2025-07-11 14:34:01.014	2025-07-11 14:34:01.014	\N	\N	\N
84	nex5a72l9br1hyzbnmlenxlu	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-07-11 14:34:01.02	2025-07-11 14:34:01.02	2025-07-11 14:34:01.02	\N	\N	\N
85	lf0lcdanm83h2s5wje0ku39n	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-07-11 14:34:01.023	2025-07-11 14:34:01.023	2025-07-11 14:34:01.023	\N	\N	\N
86	lstnou4yi3rmp6pa5q1gxcts	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-07-11 14:34:01.025	2025-07-11 14:34:01.025	2025-07-11 14:34:01.025	\N	\N	\N
88	u4u8c4eovhsvj3k2y5v9aikk	plugin::content-releases.read	{}	\N	{}	[]	2025-07-11 14:34:01.03	2025-07-11 14:34:01.03	2025-07-11 14:34:01.03	\N	\N	\N
89	rhp2gtg3cpbt4qz1akc42qol	plugin::content-releases.create	{}	\N	{}	[]	2025-07-11 14:34:01.034	2025-07-11 14:34:01.034	2025-07-11 14:34:01.034	\N	\N	\N
90	l3hwzrj9vjffuec7v35arbhw	plugin::content-releases.update	{}	\N	{}	[]	2025-07-11 14:34:01.036	2025-07-11 14:34:01.036	2025-07-11 14:34:01.036	\N	\N	\N
91	tzxpif36x6kin22uredgu3m4	plugin::content-releases.delete	{}	\N	{}	[]	2025-07-11 14:34:01.039	2025-07-11 14:34:01.039	2025-07-11 14:34:01.039	\N	\N	\N
92	k1vj09dd3x8nud09vfqz2n78	plugin::content-releases.publish	{}	\N	{}	[]	2025-07-11 14:34:01.042	2025-07-11 14:34:01.042	2025-07-11 14:34:01.042	\N	\N	\N
93	bgd0dhawn5d485mfo924qy0x	plugin::content-releases.delete-action	{}	\N	{}	[]	2025-07-11 14:34:01.044	2025-07-11 14:34:01.044	2025-07-11 14:34:01.044	\N	\N	\N
94	n76pdaurkywqmnkcyeooab8t	plugin::content-releases.create-action	{}	\N	{}	[]	2025-07-11 14:34:01.046	2025-07-11 14:34:01.046	2025-07-11 14:34:01.046	\N	\N	\N
95	i0ypq0soc5xk1rxb8cilq5z7	plugin::content-releases.settings.read	{}	\N	{}	[]	2025-07-11 14:34:01.049	2025-07-11 14:34:01.049	2025-07-11 14:34:01.049	\N	\N	\N
96	so8hb02vqti5e7dn86213bdv	plugin::content-releases.settings.update	{}	\N	{}	[]	2025-07-11 14:34:01.053	2025-07-11 14:34:01.053	2025-07-11 14:34:01.053	\N	\N	\N
97	xjs4s43iiaffef5fhe3v3xte	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-07-11 14:34:01.055	2025-07-11 14:34:01.055	2025-07-11 14:34:01.055	\N	\N	\N
98	scy9gle31ydcs1d95kkajyjc	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-07-11 14:34:01.058	2025-07-11 14:34:01.058	2025-07-11 14:34:01.058	\N	\N	\N
99	csujke65ery2en119te5uypv	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-07-11 14:34:01.06	2025-07-11 14:34:01.06	2025-07-11 14:34:01.06	\N	\N	\N
100	muhj6yb4awilbljs620qhhh8	plugin::content-type-builder.read	{}	\N	{}	[]	2025-07-11 14:34:01.062	2025-07-11 14:34:01.062	2025-07-11 14:34:01.062	\N	\N	\N
101	k4luv8g1ml51508hukhv93wf	plugin::email.settings.read	{}	\N	{}	[]	2025-07-11 14:34:01.066	2025-07-11 14:34:01.066	2025-07-11 14:34:01.066	\N	\N	\N
102	q3xe79xxrj2i77dznmq49ge1	plugin::upload.read	{}	\N	{}	[]	2025-07-11 14:34:01.069	2025-07-11 14:34:01.069	2025-07-11 14:34:01.069	\N	\N	\N
103	aiusrduro6l4xfxynyrv20dn	plugin::upload.assets.create	{}	\N	{}	[]	2025-07-11 14:34:01.072	2025-07-11 14:34:01.072	2025-07-11 14:34:01.072	\N	\N	\N
104	k6exfrl5cyh09tyw71b84plm	plugin::upload.assets.update	{}	\N	{}	[]	2025-07-11 14:34:01.074	2025-07-11 14:34:01.074	2025-07-11 14:34:01.074	\N	\N	\N
105	elk4fwn2qsp70dhwjsceu57z	plugin::upload.assets.download	{}	\N	{}	[]	2025-07-11 14:34:01.077	2025-07-11 14:34:01.077	2025-07-11 14:34:01.077	\N	\N	\N
106	mkr9ohgf615vrvnthdofnjcq	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-07-11 14:34:01.079	2025-07-11 14:34:01.079	2025-07-11 14:34:01.079	\N	\N	\N
107	yma821ntztjzhb9o8yjx3jg6	plugin::upload.configure-view	{}	\N	{}	[]	2025-07-11 14:34:01.081	2025-07-11 14:34:01.081	2025-07-11 14:34:01.081	\N	\N	\N
108	s8qafxl2o78c9la7j68iqtq4	plugin::upload.settings.read	{}	\N	{}	[]	2025-07-11 14:34:01.084	2025-07-11 14:34:01.084	2025-07-11 14:34:01.084	\N	\N	\N
109	o8ofdwcekhrc1nin95bna02e	plugin::i18n.locale.create	{}	\N	{}	[]	2025-07-11 14:34:01.087	2025-07-11 14:34:01.087	2025-07-11 14:34:01.087	\N	\N	\N
110	kbvzbfz3i32mfi65wprwylt0	plugin::i18n.locale.read	{}	\N	{}	[]	2025-07-11 14:34:01.089	2025-07-11 14:34:01.089	2025-07-11 14:34:01.089	\N	\N	\N
111	u6m9rimoriqy5eln9wk7v8sp	plugin::i18n.locale.update	{}	\N	{}	[]	2025-07-11 14:34:01.092	2025-07-11 14:34:01.092	2025-07-11 14:34:01.092	\N	\N	\N
112	a4lwfq1pwqdzfoykg79bf1mu	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-07-11 14:34:01.094	2025-07-11 14:34:01.094	2025-07-11 14:34:01.094	\N	\N	\N
113	q8282s6qmq3s1al2qi1ffliz	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-07-11 14:34:01.096	2025-07-11 14:34:01.096	2025-07-11 14:34:01.097	\N	\N	\N
114	f6see8gxhgqo4y06y1gshc3p	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-07-11 14:34:01.101	2025-07-11 14:34:01.101	2025-07-11 14:34:01.101	\N	\N	\N
115	is2kdvxe4j1g9i7y8ovochwm	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-07-11 14:34:01.104	2025-07-11 14:34:01.104	2025-07-11 14:34:01.104	\N	\N	\N
116	fw1g6n8wbqm2a1hd21j5t17d	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-07-11 14:34:01.106	2025-07-11 14:34:01.106	2025-07-11 14:34:01.106	\N	\N	\N
117	viiw7durf7kck5byljrl8b6m	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-07-11 14:34:01.108	2025-07-11 14:34:01.108	2025-07-11 14:34:01.108	\N	\N	\N
118	dsc4i7zgbq4jhnci0qngs2oj	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-07-11 14:34:01.11	2025-07-11 14:34:01.11	2025-07-11 14:34:01.111	\N	\N	\N
119	r767zjzpyr1g7lbgwfnxvkj6	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-07-11 14:34:01.113	2025-07-11 14:34:01.113	2025-07-11 14:34:01.113	\N	\N	\N
120	xonlmw2qkuav9pd3ncnqqxpp	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-07-11 14:34:01.116	2025-07-11 14:34:01.116	2025-07-11 14:34:01.116	\N	\N	\N
121	hgopc9nh016fzmt2zx6oof3i	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-07-11 14:34:01.119	2025-07-11 14:34:01.119	2025-07-11 14:34:01.119	\N	\N	\N
122	nfsnetrtn5ag84aueyks768r	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-07-11 14:34:01.121	2025-07-11 14:34:01.121	2025-07-11 14:34:01.121	\N	\N	\N
125	qoe4kjvas2ayuz1o509htjq9	admin::marketplace.read	{}	\N	{}	[]	2025-07-11 14:34:01.128	2025-07-11 14:34:01.128	2025-07-11 14:34:01.128	\N	\N	\N
126	c7jwe30boamett3xhesd511n	admin::webhooks.create	{}	\N	{}	[]	2025-07-11 14:34:01.13	2025-07-11 14:34:01.13	2025-07-11 14:34:01.13	\N	\N	\N
127	hzp0k151vzx6w6wx7zmfg4gn	admin::webhooks.read	{}	\N	{}	[]	2025-07-11 14:34:01.135	2025-07-11 14:34:01.135	2025-07-11 14:34:01.135	\N	\N	\N
128	qc3wfwyrh8awuv76vid723jx	admin::webhooks.update	{}	\N	{}	[]	2025-07-11 14:34:01.137	2025-07-11 14:34:01.137	2025-07-11 14:34:01.137	\N	\N	\N
129	vjzrd297uhjlu8dszswhh2xk	admin::webhooks.delete	{}	\N	{}	[]	2025-07-11 14:34:01.141	2025-07-11 14:34:01.141	2025-07-11 14:34:01.141	\N	\N	\N
130	nyysqrexzwnzp88q2kqa9io7	admin::users.create	{}	\N	{}	[]	2025-07-11 14:34:01.143	2025-07-11 14:34:01.143	2025-07-11 14:34:01.143	\N	\N	\N
131	dkw69luuju4etolj4vo9bbsu	admin::users.read	{}	\N	{}	[]	2025-07-11 14:34:01.145	2025-07-11 14:34:01.145	2025-07-11 14:34:01.145	\N	\N	\N
132	bcwqrz2adq3ffa9jbswzja5f	admin::users.update	{}	\N	{}	[]	2025-07-11 14:34:01.148	2025-07-11 14:34:01.148	2025-07-11 14:34:01.148	\N	\N	\N
133	ozas4d56a02gz3tj12gpkczq	admin::users.delete	{}	\N	{}	[]	2025-07-11 14:34:01.151	2025-07-11 14:34:01.151	2025-07-11 14:34:01.151	\N	\N	\N
134	bpaut7i6pi1qotk19r80a9lb	admin::roles.create	{}	\N	{}	[]	2025-07-11 14:34:01.154	2025-07-11 14:34:01.154	2025-07-11 14:34:01.154	\N	\N	\N
135	to72nmw9l7nd43bil76ykf7g	admin::roles.read	{}	\N	{}	[]	2025-07-11 14:34:01.156	2025-07-11 14:34:01.156	2025-07-11 14:34:01.156	\N	\N	\N
136	oo1mut17mc3md9jgifo6nm59	admin::roles.update	{}	\N	{}	[]	2025-07-11 14:34:01.158	2025-07-11 14:34:01.158	2025-07-11 14:34:01.158	\N	\N	\N
137	qxmbkotqfspgleyvth462824	admin::roles.delete	{}	\N	{}	[]	2025-07-11 14:34:01.161	2025-07-11 14:34:01.161	2025-07-11 14:34:01.161	\N	\N	\N
138	cqza1fhmqnsxnfzkzxto6kii	admin::api-tokens.access	{}	\N	{}	[]	2025-07-11 14:34:01.163	2025-07-11 14:34:01.163	2025-07-11 14:34:01.163	\N	\N	\N
139	s2ecatx1grp6g1k5l39ftbsx	admin::api-tokens.create	{}	\N	{}	[]	2025-07-11 14:34:01.166	2025-07-11 14:34:01.166	2025-07-11 14:34:01.166	\N	\N	\N
140	lsxxauorz30wzx80lhl4ln0o	admin::api-tokens.read	{}	\N	{}	[]	2025-07-11 14:34:01.168	2025-07-11 14:34:01.168	2025-07-11 14:34:01.168	\N	\N	\N
141	mj9buu89tmsh17yp2gduyj9c	admin::api-tokens.update	{}	\N	{}	[]	2025-07-11 14:34:01.17	2025-07-11 14:34:01.17	2025-07-11 14:34:01.17	\N	\N	\N
142	e4wq6enwe8twksyxrl1qibyl	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-07-11 14:34:01.172	2025-07-11 14:34:01.172	2025-07-11 14:34:01.172	\N	\N	\N
143	ondgfox6737ttyufc0es9ejf	admin::api-tokens.delete	{}	\N	{}	[]	2025-07-11 14:34:01.174	2025-07-11 14:34:01.174	2025-07-11 14:34:01.174	\N	\N	\N
144	gq7ecig3jffyq4076fd269bj	admin::project-settings.update	{}	\N	{}	[]	2025-07-11 14:34:01.176	2025-07-11 14:34:01.176	2025-07-11 14:34:01.176	\N	\N	\N
145	iczi4p1ymym0fa5ui3tavd70	admin::project-settings.read	{}	\N	{}	[]	2025-07-11 14:34:01.178	2025-07-11 14:34:01.178	2025-07-11 14:34:01.178	\N	\N	\N
146	b6z5hv5nq6jjcu4wpzr04nvx	admin::transfer.tokens.access	{}	\N	{}	[]	2025-07-11 14:34:01.181	2025-07-11 14:34:01.181	2025-07-11 14:34:01.181	\N	\N	\N
147	ak568safi94y2qrk5v0ox68a	admin::transfer.tokens.create	{}	\N	{}	[]	2025-07-11 14:34:01.186	2025-07-11 14:34:01.186	2025-07-11 14:34:01.186	\N	\N	\N
148	tlo60z7fl2qeey8ctm00o7mo	admin::transfer.tokens.read	{}	\N	{}	[]	2025-07-11 14:34:01.19	2025-07-11 14:34:01.19	2025-07-11 14:34:01.19	\N	\N	\N
149	mruhj1rn2k3yz61qdeutd3sf	admin::transfer.tokens.update	{}	\N	{}	[]	2025-07-11 14:34:01.193	2025-07-11 14:34:01.193	2025-07-11 14:34:01.193	\N	\N	\N
150	os48bezqugribtpw24ptwrh4	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-07-11 14:34:01.196	2025-07-11 14:34:01.196	2025-07-11 14:34:01.196	\N	\N	\N
151	rp3s9thu9ndoao4wiz5hse0w	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-07-11 14:34:01.199	2025-07-11 14:34:01.199	2025-07-11 14:34:01.199	\N	\N	\N
153	nsj6alsio9ec2khkrd1buapm	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["nombre", "avatar", "email", "articulos", "especialidad"]}	[]	2025-07-11 16:00:30.26	2025-07-11 16:00:30.26	2025-07-11 16:00:30.261	\N	\N	\N
155	orw46k58yrf220fn377si4rl	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["nombre", "avatar", "email", "articulos", "especialidad"]}	[]	2025-07-11 16:00:30.266	2025-07-11 16:00:30.266	2025-07-11 16:00:30.267	\N	\N	\N
157	zqln7xhqifeie1n3rzgfukic	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["nombre", "avatar", "email", "articulos", "especialidad"]}	[]	2025-07-11 16:00:30.272	2025-07-11 16:00:30.272	2025-07-11 16:00:30.272	\N	\N	\N
2	xdllxm08v5apdkigdet8so0y	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	[]	2025-07-11 14:34:00.722	2025-07-11 16:00:30.31	2025-07-11 14:34:00.722	\N	\N	\N
38	hweanzv2et96neg2s6xyhkgz	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["slug", "cover", "blocks"]}	["admin::is-creator"]	2025-07-11 14:34:00.835	2025-07-11 16:00:30.31	2025-07-11 14:34:00.836	\N	\N	\N
166	ndpucpjphmdskbrekcvsn1y6	plugin::content-manager.explorer.delete	{}	api::categories-lab.categories-lab	{}	[]	2025-07-12 10:13:34.93	2025-07-12 10:13:34.93	2025-07-12 10:13:34.93	\N	\N	\N
167	usiz3up09aa5tko5msfvkwnt	plugin::content-manager.explorer.publish	{}	api::categories-lab.categories-lab	{}	[]	2025-07-12 10:13:34.933	2025-07-12 10:13:34.933	2025-07-12 10:13:34.933	\N	\N	\N
171	ejfiepmvv0x438u4czjx1d2h	plugin::content-manager.explorer.delete	{}	api::analyses-lab.analyses-lab	{}	[]	2025-07-12 10:15:58.895	2025-07-12 10:15:58.895	2025-07-12 10:15:58.895	\N	\N	\N
172	f1hyt61wdea2gobpktploggm	plugin::content-manager.explorer.publish	{}	api::analyses-lab.analyses-lab	{}	[]	2025-07-12 10:15:58.899	2025-07-12 10:15:58.899	2025-07-12 10:15:58.899	\N	\N	\N
183	rojnsn3ms14onpeypcowxlas	plugin::content-manager.explorer.create	{}	api::categories-lab.categories-lab	{"fields": ["nombre", "slug", "analyses_labs"]}	[]	2025-07-12 10:32:16.972	2025-07-12 10:32:16.972	2025-07-12 10:32:16.973	\N	\N	\N
185	xfoz0yfe33461v2lbbs057ff	plugin::content-manager.explorer.read	{}	api::categories-lab.categories-lab	{"fields": ["nombre", "slug", "analyses_labs"]}	[]	2025-07-12 10:32:16.998	2025-07-12 10:32:16.998	2025-07-12 10:32:16.998	\N	\N	\N
187	rc1q8bulj6883i6eg111bbkc	plugin::content-manager.explorer.update	{}	api::categories-lab.categories-lab	{"fields": ["nombre", "slug", "analyses_labs"]}	[]	2025-07-12 10:32:17.014	2025-07-12 10:32:17.014	2025-07-12 10:32:17.015	\N	\N	\N
196	nwud3szs1h6mrfvy1zwcfi74	plugin::content-manager.explorer.delete	{}	api::especialidad.especialidad	{}	[]	2025-07-12 11:01:41.188	2025-07-12 11:01:41.188	2025-07-12 11:01:41.189	\N	\N	\N
197	x5a48o39lb88az8r2ivackqp	plugin::content-manager.explorer.publish	{}	api::especialidad.especialidad	{}	[]	2025-07-12 11:01:41.191	2025-07-12 11:01:41.191	2025-07-12 11:01:41.192	\N	\N	\N
204	hwkdebju5e6bdm16rv3nkxu1	plugin::content-manager.explorer.create	{}	api::analyses-lab.analyses-lab	{"fields": ["nombre", "precio", "category_id", "cover"]}	[]	2025-07-30 16:31:08.409	2025-07-30 16:31:08.409	2025-07-30 16:31:08.41	\N	\N	\N
205	lbzw8bxtmuomhjs7gcbehkpf	plugin::content-manager.explorer.read	{}	api::analyses-lab.analyses-lab	{"fields": ["nombre", "precio", "category_id", "cover"]}	[]	2025-07-30 16:31:08.475	2025-07-30 16:31:08.475	2025-07-30 16:31:08.475	\N	\N	\N
206	erchfu5jptj5madxwgtt6fk1	plugin::content-manager.explorer.update	{}	api::analyses-lab.analyses-lab	{"fields": ["nombre", "precio", "category_id", "cover"]}	[]	2025-07-30 16:31:08.479	2025-07-30 16:31:08.479	2025-07-30 16:31:08.479	\N	\N	\N
207	raerkrwy83u4e0qp0233mhq2	plugin::content-manager.explorer.create	{}	api::especialidad.especialidad	{"fields": ["nombre", "rating", "min_lead_time", "max_lead_time", "lead_time_unit", "description", "specialists_count", "estado", "icon_name", "cover"]}	[]	2025-07-30 16:55:22.072	2025-07-30 16:55:22.072	2025-07-30 16:55:22.073	\N	\N	\N
208	pd97pbp9viq61k4159mljw2h	plugin::content-manager.explorer.read	{}	api::especialidad.especialidad	{"fields": ["nombre", "rating", "min_lead_time", "max_lead_time", "lead_time_unit", "description", "specialists_count", "estado", "icon_name", "cover"]}	[]	2025-07-30 16:55:22.079	2025-07-30 16:55:22.079	2025-07-30 16:55:22.079	\N	\N	\N
209	snrwujnx5jw1lsl6sbdw8swq	plugin::content-manager.explorer.update	{}	api::especialidad.especialidad	{"fields": ["nombre", "rating", "min_lead_time", "max_lead_time", "lead_time_unit", "description", "specialists_count", "estado", "icon_name", "cover"]}	[]	2025-07-30 16:55:22.082	2025-07-30 16:55:22.082	2025-07-30 16:55:22.082	\N	\N	\N
213	t999vizh81px7bs9uyy5t3eb	plugin::content-manager.explorer.delete	{}	api::pruebas-genetica.pruebas-genetica	{}	[]	2025-07-31 10:56:14.014	2025-07-31 10:56:14.014	2025-07-31 10:56:14.014	\N	\N	\N
214	um80girlb7olmmu96tit3amp	plugin::content-manager.explorer.publish	{}	api::pruebas-genetica.pruebas-genetica	{}	[]	2025-07-31 10:56:14.018	2025-07-31 10:56:14.018	2025-07-31 10:56:14.018	\N	\N	\N
215	owd67bkbdm51v3w96n2osn50	plugin::content-manager.explorer.create	{}	api::pruebas-genetica.pruebas-genetica	{"fields": ["tittle", "description", "cover"]}	[]	2025-07-31 10:58:30.56	2025-07-31 10:58:30.56	2025-07-31 10:58:30.56	\N	\N	\N
216	ljpotyarnfuts1buwsfa7ymp	plugin::content-manager.explorer.read	{}	api::pruebas-genetica.pruebas-genetica	{"fields": ["tittle", "description", "cover"]}	[]	2025-07-31 10:58:30.572	2025-07-31 10:58:30.572	2025-07-31 10:58:30.572	\N	\N	\N
217	fwwpnowjvk235qqlsv9d0jkl	plugin::content-manager.explorer.update	{}	api::pruebas-genetica.pruebas-genetica	{"fields": ["tittle", "description", "cover"]}	[]	2025-07-31 10:58:30.575	2025-07-31 10:58:30.575	2025-07-31 10:58:30.575	\N	\N	\N
221	bg36vjo1tm5wlgm3v9x43kag	plugin::content-manager.explorer.delete	{}	api::despistaje.despistaje	{}	[]	2025-07-31 11:05:12.323	2025-07-31 11:05:12.323	2025-07-31 11:05:12.323	\N	\N	\N
222	yy4qeeq47ar84toxrw04f5hz	plugin::content-manager.explorer.publish	{}	api::despistaje.despistaje	{}	[]	2025-07-31 11:05:12.327	2025-07-31 11:05:12.327	2025-07-31 11:05:12.327	\N	\N	\N
223	ca50f9ha575z095ckemtxlgb	plugin::content-manager.explorer.create	{}	api::despistaje.despistaje	{"fields": ["title", "description", "cover"]}	[]	2025-07-31 11:07:12.925	2025-07-31 11:07:12.925	2025-07-31 11:07:12.926	\N	\N	\N
224	bwcvunzuyoypaq2axvmffs5s	plugin::content-manager.explorer.read	{}	api::despistaje.despistaje	{"fields": ["title", "description", "cover"]}	[]	2025-07-31 11:07:12.931	2025-07-31 11:07:12.931	2025-07-31 11:07:12.932	\N	\N	\N
225	kx9mki0c8n60fbtixqug1meo	plugin::content-manager.explorer.update	{}	api::despistaje.despistaje	{"fields": ["title", "description", "cover"]}	[]	2025-07-31 11:07:12.935	2025-07-31 11:07:12.935	2025-07-31 11:07:12.935	\N	\N	\N
\.


--
-- TOC entry 5569 (class 0 OID 41513)
-- Dependencies: 302
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
2	2	2	2
3	3	2	3
4	4	2	4
7	7	2	7
8	8	2	8
9	9	2	9
12	12	2	12
13	13	2	13
14	14	2	14
17	17	2	17
18	18	2	18
19	19	2	19
22	22	2	22
23	23	2	23
24	24	2	24
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
33	33	3	2
34	34	3	3
35	35	3	4
38	38	3	7
39	39	3	8
40	40	3	9
43	43	3	12
44	44	3	13
45	45	3	14
48	48	3	17
49	49	3	18
50	50	3	19
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
58	58	1	1
62	62	1	5
64	64	1	7
68	68	1	11
70	70	1	13
74	74	1	17
76	76	1	19
78	78	1	21
79	79	1	22
80	80	1	23
82	82	1	25
84	84	1	27
85	85	1	28
86	86	1	29
88	88	1	31
89	89	1	32
90	90	1	33
91	91	1	34
92	92	1	35
93	93	1	36
94	94	1	37
95	95	1	38
96	96	1	39
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	1	84
142	142	1	85
143	143	1	86
144	144	1	87
145	145	1	88
146	146	1	89
147	147	1	90
148	148	1	91
149	149	1	92
150	150	1	93
151	151	1	94
153	153	1	96
155	155	1	98
157	157	1	100
166	166	1	104
167	167	1	105
171	171	1	109
172	172	1	110
183	183	1	112
185	185	1	114
187	187	1	116
196	196	1	125
197	197	1	126
204	204	1	130
205	205	1	131
206	206	1	132
207	207	1	133
208	208	1	134
209	209	1	135
213	213	1	139
214	214	1	140
215	215	1	141
216	216	1	142
217	217	1	143
221	221	1	147
222	222	1	148
223	223	1	149
224	224	1	150
225	225	1	151
226	226	1	152
227	227	1	153
228	228	1	154
\.


--
-- TOC entry 5523 (class 0 OID 41241)
-- Dependencies: 256
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q2wtwrp8kmn402oel8m8n844	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-07-11 14:34:00.686	2025-07-11 14:34:00.686	2025-07-11 14:34:00.686	\N	\N	\N
2	hr8au2hxpa5s3rwd2kpcksua	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-07-11 14:34:00.693	2025-07-11 14:34:00.693	2025-07-11 14:34:00.693	\N	\N	\N
3	zte43rjp5a203aus9g8ees80	Author	strapi-author	Authors can manage the content they have created.	2025-07-11 14:34:00.697	2025-07-11 14:34:00.697	2025-07-11 14:34:00.697	\N	\N	\N
\.


--
-- TOC entry 5521 (class 0 OID 41229)
-- Dependencies: 254
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q04u1zpjxcks8n15nq9ewlh2	Outlier	Solutions	\N	gptoutliers@gmail.com	$2a$10$jRCxzndLqmkgxMuwnEN9X.7Mc3EpJA5nGfgwAX5FI6LSagZsNLyBS	\N	\N	t	f	\N	2025-07-11 14:39:07.594	2025-07-11 14:39:07.594	2025-07-11 14:39:07.595	\N	\N	\N
\.


--
-- TOC entry 5571 (class 0 OID 41525)
-- Dependencies: 304
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- TOC entry 5585 (class 0 OID 49208)
-- Dependencies: 318
-- Data for Name: analyses_labs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.analyses_labs (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, nombre, precio) FROM stdin;
5	orp11ugufrk55odbk7xa1scw	2025-08-01 16:22:08.089	2025-08-05 14:41:38.125	\N	1	1	\N	Hemograma completo	15
14	orp11ugufrk55odbk7xa1scw	2025-08-01 16:22:08.089	2025-08-05 14:41:38.125	2025-08-05 14:41:38.152	1	1	\N	Hemograma completo	15
7	agmwrp9x7dg9ahb9klylmgke	2025-08-01 16:22:54.497	2025-08-05 14:42:15.939	\N	1	1	\N	Perfil lipídico	25
15	agmwrp9x7dg9ahb9klylmgke	2025-08-01 16:22:54.497	2025-08-05 14:42:15.939	2025-08-05 14:42:15.957	1	1	\N	Perfil lipídico	25
9	zub9u4abcta2052bufy63bvb	2025-08-01 16:29:49.808	2025-08-05 14:42:48.062	\N	1	1	\N	Glucosa en sangre	40
16	zub9u4abcta2052bufy63bvb	2025-08-01 16:29:49.808	2025-08-05 14:42:48.062	2025-08-05 14:42:48.081	1	1	\N	Glucosa en sangre	40
\.


--
-- TOC entry 5587 (class 0 OID 49237)
-- Dependencies: 320
-- Data for Name: analyses_labs_category_id_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.analyses_labs_category_id_lnk (id, analyses_lab_id, categories_lab_id, analyses_lab_ord) FROM stdin;
6	5	3	1
8	7	3	2
10	9	3	3
15	14	4	1
16	15	4	2
17	16	4	3
\.


--
-- TOC entry 5513 (class 0 OID 41155)
-- Dependencies: 246
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.articles (id, document_id, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, titulo, descripcion, contenido) FROM stdin;
1	qmhbu1xvpo7kaggtu4he3izy	\N	2025-07-12 12:11:15.418	2025-08-01 10:53:45.382	\N	1	1	\N	Nuevos avances en cardiología preventiva	Descubre las últimas investigaciones sobre prevención de enfermedades.	Prueba
5	qmhbu1xvpo7kaggtu4he3izy	\N	2025-07-12 12:11:15.418	2025-08-01 10:53:45.382	2025-08-01 10:53:45.479	1	1	\N	Nuevos avances en cardiología preventiva	Descubre las últimas investigaciones sobre prevención de enfermedades.	Prueba
\.


--
-- TOC entry 5579 (class 0 OID 41984)
-- Dependencies: 312
-- Data for Name: articles_autor_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.articles_autor_lnk (id, article_id, author_id, article_ord) FROM stdin;
1	1	1	1
5	5	1	2
\.


--
-- TOC entry 5581 (class 0 OID 41996)
-- Dependencies: 314
-- Data for Name: articles_categoria_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.articles_categoria_lnk (id, article_id, category_id, article_ord) FROM stdin;
1	1	2	1
5	5	2	2
\.


--
-- TOC entry 5511 (class 0 OID 41141)
-- Dependencies: 244
-- Data for Name: articles_cmps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5515 (class 0 OID 41167)
-- Dependencies: 248
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.authors (id, document_id, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, nombre, especialidad) FROM stdin;
1	pn7vscp685baiqvmepqqqukc	elvis@hotmail.com	2025-07-12 12:08:25.102	2025-07-12 12:08:25.102	2025-07-12 12:08:25.096	1	1	\N	Elvis Macas	Urología
\.


--
-- TOC entry 5517 (class 0 OID 41179)
-- Dependencies: 250
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	qwqmz9puns9hx0ofykw2in0t	news	news	\N	2025-07-11 14:34:01.307	2025-07-11 14:34:01.307	2025-07-11 14:34:01.301	\N	\N	\N
2	vdpe7iyoi4s90h0jcbxvj4ia	tech	tech	\N	2025-07-11 14:34:01.318	2025-07-11 14:34:01.318	2025-07-11 14:34:01.312	\N	\N	\N
3	penwo4tpjcqgvjnv70suwvrp	food	food	\N	2025-07-11 14:34:01.324	2025-07-11 14:34:01.324	2025-07-11 14:34:01.323	\N	\N	\N
4	sc6787y7k4s79fhtnsiwohh3	nature	nature	\N	2025-07-11 14:34:01.33	2025-07-11 14:34:01.33	2025-07-11 14:34:01.327	\N	\N	\N
5	g17nhcll17gsy3ev2jczaruj	story	story	\N	2025-07-11 14:34:01.341	2025-07-11 14:34:01.341	2025-07-11 14:34:01.34	\N	\N	\N
\.


--
-- TOC entry 5583 (class 0 OID 49184)
-- Dependencies: 316
-- Data for Name: categories_labs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories_labs (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, nombre, slug) FROM stdin;
1	wu4sac0kd2pp4xsdl0rsli3s	2025-07-29 16:49:13.273	2025-07-29 16:49:13.273	\N	1	1	\N	Algo	Examen
2	wu4sac0kd2pp4xsdl0rsli3s	2025-07-29 16:49:13.273	2025-07-29 16:49:13.273	2025-07-29 16:49:13.394	1	1	\N	Algo	Examen
3	o3b4zmjgqes8ay2voup0jkug	2025-08-01 16:20:57.672	2025-08-01 16:20:57.672	\N	1	1	\N	Exámenes de Laboratorio	Sangre y Bioquímica
4	o3b4zmjgqes8ay2voup0jkug	2025-08-01 16:20:57.672	2025-08-01 16:20:57.672	2025-08-01 16:20:57.72	1	1	\N	Exámenes de Laboratorio	Sangre y Bioquímica
\.


--
-- TOC entry 5543 (class 0 OID 41347)
-- Dependencies: 276
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_shared_media (id) FROM stdin;
\.


--
-- TOC entry 5541 (class 0 OID 41338)
-- Dependencies: 274
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_shared_quotes (id, title, body) FROM stdin;
\.


--
-- TOC entry 5539 (class 0 OID 41329)
-- Dependencies: 272
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_shared_rich_texts (id, body) FROM stdin;
\.


--
-- TOC entry 5537 (class 0 OID 41320)
-- Dependencies: 270
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- TOC entry 5535 (class 0 OID 41313)
-- Dependencies: 268
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_shared_sliders (id) FROM stdin;
\.


--
-- TOC entry 5593 (class 0 OID 49365)
-- Dependencies: 326
-- Data for Name: despistajes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.despistajes (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, title, description) FROM stdin;
3	llx7wm04nrd391zkrabvq1tn	2025-08-01 16:34:02.81	2025-08-05 14:59:15.56	\N	1	1	\N	Chequeo médico anual	Revisión general para detectar enfermedades silenciosas.
12	llx7wm04nrd391zkrabvq1tn	2025-08-01 16:34:02.81	2025-08-05 14:59:15.56	2025-08-05 14:59:15.586	1	1	\N	Chequeo médico anual	Revisión general para detectar enfermedades silenciosas.
5	kaoei4bmpbxnloxve7bd6jjr	2025-08-01 16:35:29.935	2025-08-05 14:59:39.011	\N	1	1	\N	Despistaje de diabetes	Detección temprana de alteraciones en el azúcar.
13	kaoei4bmpbxnloxve7bd6jjr	2025-08-01 16:35:29.935	2025-08-05 14:59:39.011	2025-08-05 14:59:39.028	1	1	\N	Despistaje de diabetes	Detección temprana de alteraciones en el azúcar.
7	nvzwnad2ykoip10wa6kaezu6	2025-08-01 16:36:49.131	2025-08-05 14:59:53.28	\N	1	1	\N	Papanicolaou	Detecta cáncer de cuello uterino.
14	nvzwnad2ykoip10wa6kaezu6	2025-08-01 16:36:49.131	2025-08-05 14:59:53.28	2025-08-05 14:59:53.294	1	1	\N	Papanicolaou	Detecta cáncer de cuello uterino.
\.


--
-- TOC entry 5589 (class 0 OID 49286)
-- Dependencies: 322
-- Data for Name: especialidades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.especialidades (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, nombre, rating, min_lead_time, max_lead_time, lead_time_unit, description, specialists_count, estado, icon_name) FROM stdin;
4	x8pxgndikgotre3apoljwy2g	2025-08-01 16:38:32.355	2025-08-05 12:16:24.88	\N	1	1	\N	Cardiología	5	\N	\N	\N	Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.	2	Disponible	\N
13	x8pxgndikgotre3apoljwy2g	2025-08-01 16:38:32.355	2025-08-05 12:16:24.88	2025-08-05 12:16:24.911	1	1	\N	Cardiología	5	\N	\N	\N	Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.	2	Disponible	\N
6	ws17vo9pimv0vr6b2xawztrs	2025-08-01 16:39:23.803	2025-08-05 12:17:04.585	\N	1	1	\N	Neumología	5	\N	\N	\N	Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\n\n	3	Disponible	\N
14	ws17vo9pimv0vr6b2xawztrs	2025-08-01 16:39:23.803	2025-08-05 12:17:04.585	2025-08-05 12:17:04.606	1	1	\N	Neumología	5	\N	\N	\N	Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\n\n	3	Disponible	\N
8	gxeo4p8zlbjag8gb78ik8rok	2025-08-01 16:42:07.377	2025-08-05 12:17:34.286	\N	1	1	\N	Gastroenterología	5	\N	\N	\N	Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.	2	Disponible	\N
15	gxeo4p8zlbjag8gb78ik8rok	2025-08-01 16:42:07.377	2025-08-05 12:17:34.286	2025-08-05 12:17:34.323	1	1	\N	Gastroenterología	5	\N	\N	\N	Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.	2	Disponible	\N
\.


--
-- TOC entry 5491 (class 0 OID 40985)
-- Dependencies: 224
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	s89vcvu7i1791f7ae4xkvml0	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	2418	2711	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_26da52263d.jpeg", "hash": "large_daviddoe_strapi_26da52263d", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 74.82, "width": 892, "height": 1000, "sizeInBytes": 74823}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_26da52263d.jpeg", "hash": "small_daviddoe_strapi_26da52263d", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 22.43, "width": 446, "height": 500, "sizeInBytes": 22427}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_26da52263d.jpeg", "hash": "medium_daviddoe_strapi_26da52263d", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 44.32, "width": 669, "height": 750, "sizeInBytes": 44315}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_26da52263d.jpeg", "hash": "thumbnail_daviddoe_strapi_26da52263d", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.2, "width": 139, "height": 156, "sizeInBytes": 4201}}	daviddoe_strapi_26da52263d	.jpeg	image/jpeg	587.69	/uploads/daviddoe_strapi_26da52263d.jpeg	\N	local	\N	/	2025-07-11 14:34:01.709	2025-07-11 14:34:01.709	2025-07-11 14:34:01.711	\N	\N	\N
3	j3noq7y5a81ow78402ik8e0d	3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png	\N	\N	400	400	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_3d_happy_cartoon_doctor_cartoon_doctor_on_transparent_background_generative_ai_png_151b068730.png", "hash": "thumbnail_3d_happy_cartoon_doctor_cartoon_doctor_on_transparent_background_generative_ai_png_151b068730", "mime": "image/png", "name": "thumbnail_3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png", "path": null, "size": 24.88, "width": 156, "height": 156, "sizeInBytes": 24883}}	3d_happy_cartoon_doctor_cartoon_doctor_on_transparent_background_generative_ai_png_151b068730	.png	image/png	29.43	/uploads/3d_happy_cartoon_doctor_cartoon_doctor_on_transparent_background_generative_ai_png_151b068730.png	\N	local	\N	/	2025-07-12 12:08:06.633	2025-07-12 12:08:18.913	2025-07-12 12:08:06.633	1	1	\N
4	u8orccj3ase97kf1uo44o5gd	medico-controlando-presion-arterial.jpg	\N	\N	900	600	{"small": {"ext": ".jpg", "url": "/uploads/small_medico_controlando_presion_arterial_a547986a5a.jpg", "hash": "small_medico_controlando_presion_arterial_a547986a5a", "mime": "image/jpeg", "name": "small_medico-controlando-presion-arterial.jpg", "path": null, "size": 27.25, "width": 500, "height": 333, "sizeInBytes": 27252}, "medium": {"ext": ".jpg", "url": "/uploads/medium_medico_controlando_presion_arterial_a547986a5a.jpg", "hash": "medium_medico_controlando_presion_arterial_a547986a5a", "mime": "image/jpeg", "name": "medium_medico-controlando-presion-arterial.jpg", "path": null, "size": 52.24, "width": 750, "height": 500, "sizeInBytes": 52237}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_medico_controlando_presion_arterial_a547986a5a.jpg", "hash": "thumbnail_medico_controlando_presion_arterial_a547986a5a", "mime": "image/jpeg", "name": "thumbnail_medico-controlando-presion-arterial.jpg", "path": null, "size": 8.44, "width": 234, "height": 156, "sizeInBytes": 8435}}	medico_controlando_presion_arterial_a547986a5a	.jpg	image/jpeg	68.17	/uploads/medico_controlando_presion_arterial_a547986a5a.jpg	\N	local	\N	/	2025-07-12 12:10:41.218	2025-07-12 12:10:41.218	2025-07-12 12:10:41.218	1	1	\N
5	vnbgkbbltxrberytiotsr3c1	Hemograma-completo-precio.webp	\N	\N	802	500	{"small": {"ext": ".webp", "url": "/uploads/small_Hemograma_completo_precio_c41587df21.webp", "hash": "small_Hemograma_completo_precio_c41587df21", "mime": "image/webp", "name": "small_Hemograma-completo-precio.webp", "path": null, "size": 12.55, "width": 500, "height": 312, "sizeInBytes": 12552}, "medium": {"ext": ".webp", "url": "/uploads/medium_Hemograma_completo_precio_c41587df21.webp", "hash": "medium_Hemograma_completo_precio_c41587df21", "mime": "image/webp", "name": "medium_Hemograma-completo-precio.webp", "path": null, "size": 19.32, "width": 750, "height": 468, "sizeInBytes": 19316}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_Hemograma_completo_precio_c41587df21.webp", "hash": "thumbnail_Hemograma_completo_precio_c41587df21", "mime": "image/webp", "name": "thumbnail_Hemograma-completo-precio.webp", "path": null, "size": 5.29, "width": 245, "height": 153, "sizeInBytes": 5286}}	Hemograma_completo_precio_c41587df21	.webp	image/webp	21.53	/uploads/Hemograma_completo_precio_c41587df21.webp	\N	local	\N	/	2025-08-01 16:21:56.295	2025-08-01 16:21:56.295	2025-08-01 16:21:56.296	1	1	\N
6	jvsyei9dsrk86t8smf1stqru	Captura-de-pantalla-de-2023-04-27-16-36-11.png	\N	\N	425	282	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Captura_de_pantalla_de_2023_04_27_16_36_11_18fb10903e.png", "hash": "thumbnail_Captura_de_pantalla_de_2023_04_27_16_36_11_18fb10903e", "mime": "image/png", "name": "thumbnail_Captura-de-pantalla-de-2023-04-27-16-36-11.png", "path": null, "size": 63.69, "width": 235, "height": 156, "sizeInBytes": 63691}}	Captura_de_pantalla_de_2023_04_27_16_36_11_18fb10903e	.png	image/png	47.19	/uploads/Captura_de_pantalla_de_2023_04_27_16_36_11_18fb10903e.png	\N	local	\N	/	2025-08-01 16:22:46.659	2025-08-01 16:22:46.659	2025-08-01 16:22:46.659	1	1	\N
7	v1v5bku2kmw4t68pd641n7sb	prediabetes-glucosa-alterada-ayunas.jpg	\N	\N	640	400	{"small": {"ext": ".jpg", "url": "/uploads/small_prediabetes_glucosa_alterada_ayunas_3290d6e4ad.jpg", "hash": "small_prediabetes_glucosa_alterada_ayunas_3290d6e4ad", "mime": "image/jpeg", "name": "small_prediabetes-glucosa-alterada-ayunas.jpg", "path": null, "size": 19.67, "width": 500, "height": 313, "sizeInBytes": 19665}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_prediabetes_glucosa_alterada_ayunas_3290d6e4ad.jpg", "hash": "thumbnail_prediabetes_glucosa_alterada_ayunas_3290d6e4ad", "mime": "image/jpeg", "name": "thumbnail_prediabetes-glucosa-alterada-ayunas.jpg", "path": null, "size": 7.27, "width": 245, "height": 153, "sizeInBytes": 7266}}	prediabetes_glucosa_alterada_ayunas_3290d6e4ad	.jpg	image/jpeg	25.67	/uploads/prediabetes_glucosa_alterada_ayunas_3290d6e4ad.jpg	\N	local	\N	/	2025-08-01 16:29:28.355	2025-08-01 16:29:28.355	2025-08-01 16:29:28.355	1	1	\N
8	o18u42vewga94q90tbi355w8	chequeo.jpg	\N	\N	480	270	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_chequeo_ebd825edd9.jpg", "hash": "thumbnail_chequeo_ebd825edd9", "mime": "image/jpeg", "name": "thumbnail_chequeo.jpg", "path": null, "size": 4.68, "width": 245, "height": 138, "sizeInBytes": 4685}}	chequeo_ebd825edd9	.jpg	image/jpeg	11.75	/uploads/chequeo_ebd825edd9.jpg	\N	local	\N	/	2025-08-01 16:33:56.177	2025-08-01 16:33:56.177	2025-08-01 16:33:56.177	1	1	\N
9	d6qj09o5im66tixpozycqvgx	000330094W.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_000330094_W_f9d2938c2b.jpg", "hash": "large_000330094_W_f9d2938c2b", "mime": "image/jpeg", "name": "large_000330094W.jpg", "path": null, "size": 60.34, "width": 1000, "height": 667, "sizeInBytes": 60338}, "small": {"ext": ".jpg", "url": "/uploads/small_000330094_W_f9d2938c2b.jpg", "hash": "small_000330094_W_f9d2938c2b", "mime": "image/jpeg", "name": "small_000330094W.jpg", "path": null, "size": 21.95, "width": 500, "height": 333, "sizeInBytes": 21949}, "medium": {"ext": ".jpg", "url": "/uploads/medium_000330094_W_f9d2938c2b.jpg", "hash": "medium_000330094_W_f9d2938c2b", "mime": "image/jpeg", "name": "medium_000330094W.jpg", "path": null, "size": 39.88, "width": 750, "height": 500, "sizeInBytes": 39876}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_000330094_W_f9d2938c2b.jpg", "hash": "thumbnail_000330094_W_f9d2938c2b", "mime": "image/jpeg", "name": "thumbnail_000330094W.jpg", "path": null, "size": 7.47, "width": 234, "height": 156, "sizeInBytes": 7471}}	000330094_W_f9d2938c2b	.jpg	image/jpeg	134.68	/uploads/000330094_W_f9d2938c2b.jpg	\N	local	\N	/	2025-08-01 16:35:22.695	2025-08-01 16:35:22.695	2025-08-01 16:35:22.695	1	1	\N
10	zcklx94klb6yksa0f4aikxh3	PapHPV-Test1.jpg	\N	\N	800	533	{"small": {"ext": ".jpg", "url": "/uploads/small_Pap_HPV_Test1_56abfa0860.jpg", "hash": "small_Pap_HPV_Test1_56abfa0860", "mime": "image/jpeg", "name": "small_PapHPV-Test1.jpg", "path": null, "size": 17.75, "width": 500, "height": 333, "sizeInBytes": 17745}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Pap_HPV_Test1_56abfa0860.jpg", "hash": "medium_Pap_HPV_Test1_56abfa0860", "mime": "image/jpeg", "name": "medium_PapHPV-Test1.jpg", "path": null, "size": 32.06, "width": 750, "height": 500, "sizeInBytes": 32060}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Pap_HPV_Test1_56abfa0860.jpg", "hash": "thumbnail_Pap_HPV_Test1_56abfa0860", "mime": "image/jpeg", "name": "thumbnail_PapHPV-Test1.jpg", "path": null, "size": 6.07, "width": 235, "height": 156, "sizeInBytes": 6071}}	Pap_HPV_Test1_56abfa0860	.jpg	image/jpeg	33.63	/uploads/Pap_HPV_Test1_56abfa0860.jpg	\N	local	\N	/	2025-08-01 16:36:42.874	2025-08-01 16:36:42.874	2025-08-01 16:36:42.874	1	1	\N
11	bop4fzza9r5b4m43wte2y6nf	Cardiologia-1024x576.png	\N	\N	1024	576	{"large": {"ext": ".png", "url": "/uploads/large_Cardiologia_1024x576_ac77f1d2d4.png", "hash": "large_Cardiologia_1024x576_ac77f1d2d4", "mime": "image/png", "name": "large_Cardiologia-1024x576.png", "path": null, "size": 1005.7, "width": 1000, "height": 563, "sizeInBytes": 1005700}, "small": {"ext": ".png", "url": "/uploads/small_Cardiologia_1024x576_ac77f1d2d4.png", "hash": "small_Cardiologia_1024x576_ac77f1d2d4", "mime": "image/png", "name": "small_Cardiologia-1024x576.png", "path": null, "size": 264.88, "width": 500, "height": 281, "sizeInBytes": 264881}, "medium": {"ext": ".png", "url": "/uploads/medium_Cardiologia_1024x576_ac77f1d2d4.png", "hash": "medium_Cardiologia_1024x576_ac77f1d2d4", "mime": "image/png", "name": "medium_Cardiologia-1024x576.png", "path": null, "size": 588.66, "width": 750, "height": 422, "sizeInBytes": 588664}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Cardiologia_1024x576_ac77f1d2d4.png", "hash": "thumbnail_Cardiologia_1024x576_ac77f1d2d4", "mime": "image/png", "name": "thumbnail_Cardiologia-1024x576.png", "path": null, "size": 69.46, "width": 245, "height": 138, "sizeInBytes": 69460}}	Cardiologia_1024x576_ac77f1d2d4	.png	image/png	329.74	/uploads/Cardiologia_1024x576_ac77f1d2d4.png	\N	local	\N	/	2025-08-01 16:38:20.974	2025-08-01 16:38:20.974	2025-08-01 16:38:20.974	1	1	\N
12	ac8q2r4wdp4aoy7yanxxmj24	neumologia-1024x576-1.jpg	\N	\N	1024	576	{"large": {"ext": ".jpg", "url": "/uploads/large_neumologia_1024x576_1_58dd7004e5.jpg", "hash": "large_neumologia_1024x576_1_58dd7004e5", "mime": "image/jpeg", "name": "large_neumologia-1024x576-1.jpg", "path": null, "size": 48.61, "width": 1000, "height": 563, "sizeInBytes": 48611}, "small": {"ext": ".jpg", "url": "/uploads/small_neumologia_1024x576_1_58dd7004e5.jpg", "hash": "small_neumologia_1024x576_1_58dd7004e5", "mime": "image/jpeg", "name": "small_neumologia-1024x576-1.jpg", "path": null, "size": 18.07, "width": 500, "height": 281, "sizeInBytes": 18069}, "medium": {"ext": ".jpg", "url": "/uploads/medium_neumologia_1024x576_1_58dd7004e5.jpg", "hash": "medium_neumologia_1024x576_1_58dd7004e5", "mime": "image/jpeg", "name": "medium_neumologia-1024x576-1.jpg", "path": null, "size": 32.38, "width": 750, "height": 422, "sizeInBytes": 32384}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_neumologia_1024x576_1_58dd7004e5.jpg", "hash": "thumbnail_neumologia_1024x576_1_58dd7004e5", "mime": "image/jpeg", "name": "thumbnail_neumologia-1024x576-1.jpg", "path": null, "size": 6.61, "width": 245, "height": 138, "sizeInBytes": 6609}}	neumologia_1024x576_1_58dd7004e5	.jpg	image/jpeg	50.03	/uploads/neumologia_1024x576_1_58dd7004e5.jpg	\N	local	\N	/	2025-08-01 16:39:18.46	2025-08-01 16:39:18.46	2025-08-01 16:39:18.46	1	1	\N
13	jq5l8l707xpuziqmba4cscba	gastroenterologia.jpg.webp	\N	\N	1000	571	{"small": {"ext": ".webp", "url": "/uploads/small_gastroenterologia_jpg_c929b063ef.webp", "hash": "small_gastroenterologia_jpg_c929b063ef", "mime": "image/webp", "name": "small_gastroenterologia.jpg.webp", "path": null, "size": 14.6, "width": 500, "height": 286, "sizeInBytes": 14602}, "medium": {"ext": ".webp", "url": "/uploads/medium_gastroenterologia_jpg_c929b063ef.webp", "hash": "medium_gastroenterologia_jpg_c929b063ef", "mime": "image/webp", "name": "medium_gastroenterologia.jpg.webp", "path": null, "size": 23.25, "width": 750, "height": 428, "sizeInBytes": 23246}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_gastroenterologia_jpg_c929b063ef.webp", "hash": "thumbnail_gastroenterologia_jpg_c929b063ef", "mime": "image/webp", "name": "thumbnail_gastroenterologia.jpg.webp", "path": null, "size": 5.39, "width": 245, "height": 140, "sizeInBytes": 5392}}	gastroenterologia_jpg_c929b063ef	.webp	image/webp	38.32	/uploads/gastroenterologia_jpg_c929b063ef.webp	\N	local	\N	/	2025-08-01 16:42:01.771	2025-08-01 16:42:01.771	2025-08-01 16:42:01.771	1	1	\N
14	z01y995jphvf34d9627klyhl	Alzheimer prueba de sangre 937414952.webp	\N	\N	2384	1788	{"large": {"ext": ".webp", "url": "/uploads/large_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7.webp", "hash": "large_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7", "mime": "image/webp", "name": "large_Alzheimer prueba de sangre 937414952.webp", "path": null, "size": 31.37, "width": 1000, "height": 750, "sizeInBytes": 31372}, "small": {"ext": ".webp", "url": "/uploads/small_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7.webp", "hash": "small_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7", "mime": "image/webp", "name": "small_Alzheimer prueba de sangre 937414952.webp", "path": null, "size": 14.08, "width": 500, "height": 375, "sizeInBytes": 14084}, "medium": {"ext": ".webp", "url": "/uploads/medium_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7.webp", "hash": "medium_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7", "mime": "image/webp", "name": "medium_Alzheimer prueba de sangre 937414952.webp", "path": null, "size": 22.58, "width": 750, "height": 562, "sizeInBytes": 22584}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7.webp", "hash": "thumbnail_Alzheimer_prueba_de_sangre_937414952_76b6e44bd7", "mime": "image/webp", "name": "thumbnail_Alzheimer prueba de sangre 937414952.webp", "path": null, "size": 4.91, "width": 208, "height": 156, "sizeInBytes": 4912}}	Alzheimer_prueba_de_sangre_937414952_76b6e44bd7	.webp	image/webp	88.89	/uploads/Alzheimer_prueba_de_sangre_937414952_76b6e44bd7.webp	\N	local	\N	/	2025-08-01 16:44:50.063	2025-08-01 16:44:50.063	2025-08-01 16:44:50.063	1	1	\N
15	wdvsitg6t52bgbu0uoa5tsd1	trombofilia_20160923105335.jpg	\N	\N	1000	750	{"small": {"ext": ".jpg", "url": "/uploads/small_trombofilia_20160923105335_bda8c559f2.jpg", "hash": "small_trombofilia_20160923105335_bda8c559f2", "mime": "image/jpeg", "name": "small_trombofilia_20160923105335.jpg", "path": null, "size": 25.39, "width": 500, "height": 375, "sizeInBytes": 25389}, "medium": {"ext": ".jpg", "url": "/uploads/medium_trombofilia_20160923105335_bda8c559f2.jpg", "hash": "medium_trombofilia_20160923105335_bda8c559f2", "mime": "image/jpeg", "name": "medium_trombofilia_20160923105335.jpg", "path": null, "size": 46.21, "width": 750, "height": 563, "sizeInBytes": 46208}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_trombofilia_20160923105335_bda8c559f2.jpg", "hash": "thumbnail_trombofilia_20160923105335_bda8c559f2", "mime": "image/jpeg", "name": "thumbnail_trombofilia_20160923105335.jpg", "path": null, "size": 6.88, "width": 208, "height": 156, "sizeInBytes": 6884}}	trombofilia_20160923105335_bda8c559f2	.jpg	image/jpeg	70.48	/uploads/trombofilia_20160923105335_bda8c559f2.jpg	\N	local	\N	/	2025-08-01 16:45:38.037	2025-08-01 16:45:38.037	2025-08-01 16:45:38.037	1	1	\N
16	qa8ehglk87vbpmessf9ais72	_106743410_gettyimages-862400928.jpg	\N	\N	976	549	{"small": {"ext": ".jpg", "url": "/uploads/small_106743410_gettyimages_862400928_09d066dd1b.jpg", "hash": "small_106743410_gettyimages_862400928_09d066dd1b", "mime": "image/jpeg", "name": "small__106743410_gettyimages-862400928.jpg", "path": null, "size": 20.47, "width": 500, "height": 281, "sizeInBytes": 20473}, "medium": {"ext": ".jpg", "url": "/uploads/medium_106743410_gettyimages_862400928_09d066dd1b.jpg", "hash": "medium_106743410_gettyimages_862400928_09d066dd1b", "mime": "image/jpeg", "name": "medium__106743410_gettyimages-862400928.jpg", "path": null, "size": 36.66, "width": 750, "height": 422, "sizeInBytes": 36655}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_106743410_gettyimages_862400928_09d066dd1b.jpg", "hash": "thumbnail_106743410_gettyimages_862400928_09d066dd1b", "mime": "image/jpeg", "name": "thumbnail__106743410_gettyimages-862400928.jpg", "path": null, "size": 7.37, "width": 245, "height": 138, "sizeInBytes": 7367}}	106743410_gettyimages_862400928_09d066dd1b	.jpg	image/jpeg	56.58	/uploads/106743410_gettyimages_862400928_09d066dd1b.jpg	\N	local	\N	/	2025-08-01 16:46:28.688	2025-08-01 16:46:32.482	2025-08-01 16:46:28.689	1	1	\N
17	dc0ih4hxdladjjmtubqyme5o	examen-1.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_examen_1_7d0ae6e263.png", "hash": "large_examen_1_7d0ae6e263", "mime": "image/png", "name": "large_examen-1.png", "path": null, "size": 1236.31, "width": 667, "height": 1000, "sizeInBytes": 1236309}, "small": {"ext": ".png", "url": "/uploads/small_examen_1_7d0ae6e263.png", "hash": "small_examen_1_7d0ae6e263", "mime": "image/png", "name": "small_examen-1.png", "path": null, "size": 321.43, "width": 333, "height": 500, "sizeInBytes": 321428}, "medium": {"ext": ".png", "url": "/uploads/medium_examen_1_7d0ae6e263.png", "hash": "medium_examen_1_7d0ae6e263", "mime": "image/png", "name": "medium_examen-1.png", "path": null, "size": 703.11, "width": 500, "height": 750, "sizeInBytes": 703108}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_examen_1_7d0ae6e263.png", "hash": "thumbnail_examen_1_7d0ae6e263", "mime": "image/png", "name": "thumbnail_examen-1.png", "path": null, "size": 39.77, "width": 104, "height": 156, "sizeInBytes": 39766}}	examen_1_7d0ae6e263	.png	image/png	597.30	/uploads/examen_1_7d0ae6e263.png	\N	local	\N	/	2025-08-04 14:48:41.236	2025-08-04 14:48:41.236	2025-08-04 14:48:41.236	1	1	\N
18	nzz4ikpcs0qvqihhwal15rgd	examen-1.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_examen_1_b7dd1a40fa.png", "hash": "large_examen_1_b7dd1a40fa", "mime": "image/png", "name": "large_examen-1.png", "path": null, "size": 1236.31, "width": 667, "height": 1000, "sizeInBytes": 1236309}, "small": {"ext": ".png", "url": "/uploads/small_examen_1_b7dd1a40fa.png", "hash": "small_examen_1_b7dd1a40fa", "mime": "image/png", "name": "small_examen-1.png", "path": null, "size": 321.43, "width": 333, "height": 500, "sizeInBytes": 321428}, "medium": {"ext": ".png", "url": "/uploads/medium_examen_1_b7dd1a40fa.png", "hash": "medium_examen_1_b7dd1a40fa", "mime": "image/png", "name": "medium_examen-1.png", "path": null, "size": 703.11, "width": 500, "height": 750, "sizeInBytes": 703108}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_examen_1_b7dd1a40fa.png", "hash": "thumbnail_examen_1_b7dd1a40fa", "mime": "image/png", "name": "thumbnail_examen-1.png", "path": null, "size": 39.77, "width": 104, "height": 156, "sizeInBytes": 39766}}	examen_1_b7dd1a40fa	.png	image/png	597.30	/uploads/examen_1_b7dd1a40fa.png	\N	local	\N	/	2025-08-04 14:49:15.287	2025-08-04 14:49:15.287	2025-08-04 14:49:15.287	1	1	\N
19	acjrsrf7627tnrrssoxkg6up	examen2.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_examen2_b8c24ee360.png", "hash": "large_examen2_b8c24ee360", "mime": "image/png", "name": "large_examen2.png", "path": null, "size": 1245.69, "width": 667, "height": 1000, "sizeInBytes": 1245691}, "small": {"ext": ".png", "url": "/uploads/small_examen2_b8c24ee360.png", "hash": "small_examen2_b8c24ee360", "mime": "image/png", "name": "small_examen2.png", "path": null, "size": 316.51, "width": 333, "height": 500, "sizeInBytes": 316514}, "medium": {"ext": ".png", "url": "/uploads/medium_examen2_b8c24ee360.png", "hash": "medium_examen2_b8c24ee360", "mime": "image/png", "name": "medium_examen2.png", "path": null, "size": 702.87, "width": 500, "height": 750, "sizeInBytes": 702865}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_examen2_b8c24ee360.png", "hash": "thumbnail_examen2_b8c24ee360", "mime": "image/png", "name": "thumbnail_examen2.png", "path": null, "size": 37.71, "width": 104, "height": 156, "sizeInBytes": 37711}}	examen2_b8c24ee360	.png	image/png	614.02	/uploads/examen2_b8c24ee360.png	\N	local	\N	/	2025-08-04 14:49:56.692	2025-08-04 14:49:56.692	2025-08-04 14:49:56.692	1	1	\N
20	s26i12bveep7bznvwcsstkyv	examen-3.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_examen_3_182cbcf12f.png", "hash": "large_examen_3_182cbcf12f", "mime": "image/png", "name": "large_examen-3.png", "path": null, "size": 1155.56, "width": 667, "height": 1000, "sizeInBytes": 1155555}, "small": {"ext": ".png", "url": "/uploads/small_examen_3_182cbcf12f.png", "hash": "small_examen_3_182cbcf12f", "mime": "image/png", "name": "small_examen-3.png", "path": null, "size": 298.26, "width": 333, "height": 500, "sizeInBytes": 298257}, "medium": {"ext": ".png", "url": "/uploads/medium_examen_3_182cbcf12f.png", "hash": "medium_examen_3_182cbcf12f", "mime": "image/png", "name": "medium_examen-3.png", "path": null, "size": 656.29, "width": 500, "height": 750, "sizeInBytes": 656291}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_examen_3_182cbcf12f.png", "hash": "thumbnail_examen_3_182cbcf12f", "mime": "image/png", "name": "thumbnail_examen-3.png", "path": null, "size": 37.27, "width": 104, "height": 156, "sizeInBytes": 37269}}	examen_3_182cbcf12f	.png	image/png	550.28	/uploads/examen_3_182cbcf12f.png	\N	local	\N	/	2025-08-04 14:50:32.089	2025-08-04 14:50:32.089	2025-08-04 14:50:32.089	1	1	\N
21	rfn1omi5646hq3bncbzy6y93	ChatGPT Image Aug 4, 2025, 10_04_01 AM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 10_04_01 AM.png", "path": null, "size": 1250.58, "width": 667, "height": 1000, "sizeInBytes": 1250576}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 10_04_01 AM.png", "path": null, "size": 325.89, "width": 333, "height": 500, "sizeInBytes": 325894}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 10_04_01 AM.png", "path": null, "size": 711.37, "width": 500, "height": 750, "sizeInBytes": 711371}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 10_04_01 AM.png", "path": null, "size": 40.54, "width": 104, "height": 156, "sizeInBytes": 40541}}	Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5	.png	image/png	613.50	/uploads/Chat_GPT_Image_Aug_4_2025_10_04_01_AM_92487f5bb5.png	\N	local	\N	/	2025-08-04 15:00:59.918	2025-08-04 15:00:59.918	2025-08-04 15:00:59.918	1	1	\N
22	cdjop6zyx92huaticlicf60j	ChatGPT Image Aug 4, 2025, 09_56_47 AM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 09_56_47 AM.png", "path": null, "size": 1346.36, "width": 667, "height": 1000, "sizeInBytes": 1346357}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 09_56_47 AM.png", "path": null, "size": 348.44, "width": 333, "height": 500, "sizeInBytes": 348437}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 09_56_47 AM.png", "path": null, "size": 763.01, "width": 500, "height": 750, "sizeInBytes": 763008}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 09_56_47 AM.png", "path": null, "size": 41.75, "width": 104, "height": 156, "sizeInBytes": 41749}}	Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd	.png	image/png	622.05	/uploads/Chat_GPT_Image_Aug_4_2025_09_56_47_AM_e8b43c48fd.png	\N	local	\N	/	2025-08-04 15:01:32.383	2025-08-04 15:01:32.383	2025-08-04 15:01:32.383	1	1	\N
23	zk0r68oayhb1wgzhdhb2gnov	ChatGPT Image Aug 4, 2025, 10_01_06 AM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 10_01_06 AM.png", "path": null, "size": 1213.91, "width": 667, "height": 1000, "sizeInBytes": 1213914}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 10_01_06 AM.png", "path": null, "size": 306.68, "width": 333, "height": 500, "sizeInBytes": 306676}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 10_01_06 AM.png", "path": null, "size": 682.43, "width": 500, "height": 750, "sizeInBytes": 682428}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 10_01_06 AM.png", "path": null, "size": 36.69, "width": 104, "height": 156, "sizeInBytes": 36693}}	Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02	.png	image/png	626.17	/uploads/Chat_GPT_Image_Aug_4_2025_10_01_06_AM_0feccc7f02.png	\N	local	\N	/	2025-08-04 15:01:54.056	2025-08-04 15:01:54.056	2025-08-04 15:01:54.056	1	1	\N
24	waxmmmnyjhkj58igtm02a66d	ChatGPT Image Aug 4, 2025, 03_06_22 PM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 03_06_22 PM.png", "path": null, "size": 1271.16, "width": 667, "height": 1000, "sizeInBytes": 1271157}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 03_06_22 PM.png", "path": null, "size": 330.33, "width": 333, "height": 500, "sizeInBytes": 330325}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 03_06_22 PM.png", "path": null, "size": 723.18, "width": 500, "height": 750, "sizeInBytes": 723178}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 03_06_22 PM.png", "path": null, "size": 40.15, "width": 104, "height": 156, "sizeInBytes": 40148}}	Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f	.png	image/png	769.46	/uploads/Chat_GPT_Image_Aug_4_2025_03_06_22_PM_08dedaff7f.png	\N	local	\N	/	2025-08-04 15:06:35.059	2025-08-04 15:06:35.059	2025-08-04 15:06:35.059	1	1	\N
25	ofagn82sc5jkrv5um5y31bfa	ChatGPT Image Aug 4, 2025, 03_11_34 PM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 03_11_34 PM.png", "path": null, "size": 1278.79, "width": 667, "height": 1000, "sizeInBytes": 1278791}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 03_11_34 PM.png", "path": null, "size": 313.96, "width": 333, "height": 500, "sizeInBytes": 313959}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 03_11_34 PM.png", "path": null, "size": 707.66, "width": 500, "height": 750, "sizeInBytes": 707657}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 03_11_34 PM.png", "path": null, "size": 37.21, "width": 104, "height": 156, "sizeInBytes": 37214}}	Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c	.png	image/png	899.30	/uploads/Chat_GPT_Image_Aug_4_2025_03_11_34_PM_cb4bd37d2c.png	\N	local	\N	/	2025-08-04 15:12:12.844	2025-08-04 15:12:12.844	2025-08-04 15:12:12.844	1	1	\N
26	nf5l0281pmraltfoguiip8p2	ChatGPT Image Aug 4, 2025, 04_13_04 PM (1).png	\N	\N	1024	1024	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 04_13_04 PM (1).png", "path": null, "size": 1901.72, "width": 1000, "height": 1000, "sizeInBytes": 1901719}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 04_13_04 PM (1).png", "path": null, "size": 526.86, "width": 500, "height": 500, "sizeInBytes": 526860}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 04_13_04 PM (1).png", "path": null, "size": 1153.09, "width": 750, "height": 750, "sizeInBytes": 1153090}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 04_13_04 PM (1).png", "path": null, "size": 59.93, "width": 156, "height": 156, "sizeInBytes": 59926}}	Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef	.png	image/png	432.07	/uploads/Chat_GPT_Image_Aug_4_2025_04_13_04_PM_1_2079f3eaef.png	\N	local	\N	/	2025-08-04 16:13:41.555	2025-08-04 16:13:41.555	2025-08-04 16:13:41.555	1	1	\N
27	sq9qw3h69i4m5mwrrnpjrwne	ChatGPT Image Aug 4, 2025, 04_20_59 PM (1).png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 04_20_59 PM (1).png", "path": null, "size": 1290.9, "width": 667, "height": 1000, "sizeInBytes": 1290901}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 04_20_59 PM (1).png", "path": null, "size": 327.96, "width": 333, "height": 500, "sizeInBytes": 327960}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 04_20_59 PM (1).png", "path": null, "size": 728.16, "width": 500, "height": 750, "sizeInBytes": 728157}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 04_20_59 PM (1).png", "path": null, "size": 38.57, "width": 104, "height": 156, "sizeInBytes": 38572}}	Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088	.png	image/png	654.71	/uploads/Chat_GPT_Image_Aug_4_2025_04_20_59_PM_1_fc23d5b088.png	\N	local	\N	/	2025-08-04 16:22:45.443	2025-08-04 16:22:45.443	2025-08-04 16:22:45.443	1	1	\N
28	wk50m896uyhyehi86v9vz077	ChatGPT Image Aug 4, 2025, 04_25_21 PM (1).png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 04_25_21 PM (1).png", "path": null, "size": 1342.87, "width": 667, "height": 1000, "sizeInBytes": 1342865}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 04_25_21 PM (1).png", "path": null, "size": 332.12, "width": 333, "height": 500, "sizeInBytes": 332124}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 04_25_21 PM (1).png", "path": null, "size": 747.01, "width": 500, "height": 750, "sizeInBytes": 747013}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 04_25_21 PM (1).png", "path": null, "size": 38.79, "width": 104, "height": 156, "sizeInBytes": 38791}}	Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e	.png	image/png	718.55	/uploads/Chat_GPT_Image_Aug_4_2025_04_25_21_PM_1_190ee11d6e.png	\N	local	\N	/	2025-08-04 16:26:07.123	2025-08-04 16:26:07.123	2025-08-04 16:26:07.124	1	1	\N
29	r02lc70izekwhk865c6of7c2	ChatGPT Image Aug 4, 2025, 04_32_19 PM (1).png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 04_32_19 PM (1).png", "path": null, "size": 1379.11, "width": 667, "height": 1000, "sizeInBytes": 1379114}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 04_32_19 PM (1).png", "path": null, "size": 330.46, "width": 333, "height": 500, "sizeInBytes": 330455}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 04_32_19 PM (1).png", "path": null, "size": 757.33, "width": 500, "height": 750, "sizeInBytes": 757328}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 04_32_19 PM (1).png", "path": null, "size": 37.6, "width": 104, "height": 156, "sizeInBytes": 37597}}	Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d	.png	image/png	770.83	/uploads/Chat_GPT_Image_Aug_4_2025_04_32_19_PM_1_c6577e350d.png	\N	local	\N	/	2025-08-04 16:33:01.933	2025-08-04 16:33:44.966	2025-08-04 16:33:01.933	1	1	\N
30	fn3u9p53ab4v6pgvru240egl	ChatGPT Image Aug 4, 2025, 05_03_53 PM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 05_03_53 PM.png", "path": null, "size": 1459.64, "width": 667, "height": 1000, "sizeInBytes": 1459642}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 05_03_53 PM.png", "path": null, "size": 354.75, "width": 333, "height": 500, "sizeInBytes": 354752}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 05_03_53 PM.png", "path": null, "size": 806.26, "width": 500, "height": 750, "sizeInBytes": 806260}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 05_03_53 PM.png", "path": null, "size": 40.82, "width": 104, "height": 156, "sizeInBytes": 40821}}	Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0	.png	image/png	761.19	/uploads/Chat_GPT_Image_Aug_4_2025_05_03_53_PM_d747332ca0.png	\N	local	\N	/	2025-08-04 17:04:45.896	2025-08-04 17:04:45.896	2025-08-04 17:04:45.897	1	1	\N
31	en1eewil2qpd47kz2g2wjic0	ChatGPT Image Aug 4, 2025, 04_49_07 PM (1).png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 04_49_07 PM (1).png", "path": null, "size": 1320.84, "width": 667, "height": 1000, "sizeInBytes": 1320843}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 04_49_07 PM (1).png", "path": null, "size": 336.64, "width": 333, "height": 500, "sizeInBytes": 336636}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 04_49_07 PM (1).png", "path": null, "size": 744.65, "width": 500, "height": 750, "sizeInBytes": 744647}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 04_49_07 PM (1).png", "path": null, "size": 40.39, "width": 104, "height": 156, "sizeInBytes": 40394}}	Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258	.png	image/png	607.59	/uploads/Chat_GPT_Image_Aug_4_2025_04_49_07_PM_1_59a1cb7258.png	\N	local	\N	/	2025-08-04 17:05:04.872	2025-08-04 17:05:04.872	2025-08-04 17:05:04.872	1	1	\N
32	apquh9ffp9yt8qscxwson7m8	ChatGPT Image Aug 4, 2025, 05_00_15 PM.png	\N	\N	1024	1536	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19.png", "hash": "large_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19", "mime": "image/png", "name": "large_ChatGPT Image Aug 4, 2025, 05_00_15 PM.png", "path": null, "size": 1375.87, "width": 667, "height": 1000, "sizeInBytes": 1375868}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19.png", "hash": "small_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19", "mime": "image/png", "name": "small_ChatGPT Image Aug 4, 2025, 05_00_15 PM.png", "path": null, "size": 342.65, "width": 333, "height": 500, "sizeInBytes": 342649}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19.png", "hash": "medium_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19", "mime": "image/png", "name": "medium_ChatGPT Image Aug 4, 2025, 05_00_15 PM.png", "path": null, "size": 768.86, "width": 500, "height": 750, "sizeInBytes": 768861}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19.png", "hash": "thumbnail_Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19", "mime": "image/png", "name": "thumbnail_ChatGPT Image Aug 4, 2025, 05_00_15 PM.png", "path": null, "size": 39.67, "width": 104, "height": 156, "sizeInBytes": 39670}}	Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19	.png	image/png	682.82	/uploads/Chat_GPT_Image_Aug_4_2025_05_00_15_PM_1e42272e19.png	\N	local	\N	/	2025-08-04 17:05:21.419	2025-08-04 17:05:21.419	2025-08-04 17:05:21.419	1	1	\N
33	wiogjzlt4dls2fzvksy5jmv8	acompanamiento-durante-el-proceso-de-aborto.jpg	\N	\N	3819	5740	{"large": {"ext": ".jpg", "url": "/uploads/large_acompanamiento_durante_el_proceso_de_aborto_3683d15b80.jpg", "hash": "large_acompanamiento_durante_el_proceso_de_aborto_3683d15b80", "mime": "image/jpeg", "name": "large_acompanamiento-durante-el-proceso-de-aborto.jpg", "path": null, "size": 60.11, "width": 665, "height": 1000, "sizeInBytes": 60109}, "small": {"ext": ".jpg", "url": "/uploads/small_acompanamiento_durante_el_proceso_de_aborto_3683d15b80.jpg", "hash": "small_acompanamiento_durante_el_proceso_de_aborto_3683d15b80", "mime": "image/jpeg", "name": "small_acompanamiento-durante-el-proceso-de-aborto.jpg", "path": null, "size": 22.19, "width": 333, "height": 500, "sizeInBytes": 22186}, "medium": {"ext": ".jpg", "url": "/uploads/medium_acompanamiento_durante_el_proceso_de_aborto_3683d15b80.jpg", "hash": "medium_acompanamiento_durante_el_proceso_de_aborto_3683d15b80", "mime": "image/jpeg", "name": "medium_acompanamiento-durante-el-proceso-de-aborto.jpg", "path": null, "size": 39.8, "width": 499, "height": 750, "sizeInBytes": 39802}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_acompanamiento_durante_el_proceso_de_aborto_3683d15b80.jpg", "hash": "thumbnail_acompanamiento_durante_el_proceso_de_aborto_3683d15b80", "mime": "image/jpeg", "name": "thumbnail_acompanamiento-durante-el-proceso-de-aborto.jpg", "path": null, "size": 4.32, "width": 104, "height": 156, "sizeInBytes": 4324}}	acompanamiento_durante_el_proceso_de_aborto_3683d15b80	.jpg	image/jpeg	1627.25	/uploads/acompanamiento_durante_el_proceso_de_aborto_3683d15b80.jpg	\N	local	\N	/	2025-08-05 12:16:00.031	2025-08-05 12:16:00.031	2025-08-05 12:16:00.032	1	1	\N
34	wughbkfh1opc4y6vkhbrtb4n	doctores-de-vista-lateral-charlando-en-el-trabajo.jpg	\N	\N	4016	6016	{"large": {"ext": ".jpg", "url": "/uploads/large_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50.jpg", "hash": "large_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50", "mime": "image/jpeg", "name": "large_doctores-de-vista-lateral-charlando-en-el-trabajo.jpg", "path": null, "size": 59.25, "width": 668, "height": 1000, "sizeInBytes": 59249}, "small": {"ext": ".jpg", "url": "/uploads/small_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50.jpg", "hash": "small_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50", "mime": "image/jpeg", "name": "small_doctores-de-vista-lateral-charlando-en-el-trabajo.jpg", "path": null, "size": 22.24, "width": 334, "height": 500, "sizeInBytes": 22235}, "medium": {"ext": ".jpg", "url": "/uploads/medium_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50.jpg", "hash": "medium_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50", "mime": "image/jpeg", "name": "medium_doctores-de-vista-lateral-charlando-en-el-trabajo.jpg", "path": null, "size": 39.5, "width": 501, "height": 750, "sizeInBytes": 39496}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50.jpg", "hash": "thumbnail_doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50", "mime": "image/jpeg", "name": "thumbnail_doctores-de-vista-lateral-charlando-en-el-trabajo.jpg", "path": null, "size": 4.36, "width": 104, "height": 156, "sizeInBytes": 4361}}	doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50	.jpg	image/jpeg	1040.39	/uploads/doctores_de_vista_lateral_charlando_en_el_trabajo_31d048ef50.jpg	\N	local	\N	/	2025-08-05 12:16:57.64	2025-08-05 12:16:57.64	2025-08-05 12:16:57.64	1	1	\N
35	d6i7e4pkwdqvodht9anqzzib	equipo-clinico-que-monitorea-al-paciente-poniendo-mascara-de-oxigeno-analizando-la-condicion-respiratoria-durante-una-emergencia-respiratoria-en-la-sala-del-hospital.jpg	\N	\N	2160	3840	{"large": {"ext": ".jpg", "url": "/uploads/large_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188.jpg", "hash": "large_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188", "mime": "image/jpeg", "name": "large_equipo-clinico-que-monitorea-al-paciente-poniendo-mascara-de-oxigeno-analizando-la-condicion-respiratoria-durante-una-emergencia-respiratoria-en-la-sala-del-hospital.jpg", "path": null, "size": 59.95, "width": 563, "height": 1000, "sizeInBytes": 59951}, "small": {"ext": ".jpg", "url": "/uploads/small_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188.jpg", "hash": "small_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188", "mime": "image/jpeg", "name": "small_equipo-clinico-que-monitorea-al-paciente-poniendo-mascara-de-oxigeno-analizando-la-condicion-respiratoria-durante-una-emergencia-respiratoria-en-la-sala-del-hospital.jpg", "path": null, "size": 22.28, "width": 281, "height": 500, "sizeInBytes": 22284}, "medium": {"ext": ".jpg", "url": "/uploads/medium_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188.jpg", "hash": "medium_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188", "mime": "image/jpeg", "name": "medium_equipo-clinico-que-monitorea-al-paciente-poniendo-mascara-de-oxigeno-analizando-la-condicion-respiratoria-durante-una-emergencia-respiratoria-en-la-sala-del-hospital.jpg", "path": null, "size": 39.36, "width": 422, "height": 750, "sizeInBytes": 39358}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188.jpg", "hash": "thumbnail_equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188", "mime": "image/jpeg", "name": "thumbnail_equipo-clinico-que-monitorea-al-paciente-poniendo-mascara-de-oxigeno-analizando-la-condicion-respiratoria-durante-una-emergencia-respiratoria-en-la-sala-del-hospital.jpg", "path": null, "size": 3.96, "width": 88, "height": 156, "sizeInBytes": 3963}}	equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188	.jpg	image/jpeg	362.29	/uploads/equipo_clinico_que_monitorea_al_paciente_poniendo_mascara_de_oxigeno_analizando_la_condicion_respiratoria_durante_una_emergencia_respiratoria_en_la_sala_del_hospital_92524d8188.jpg	\N	local	\N	/	2025-08-05 12:17:27.942	2025-08-05 12:17:27.942	2025-08-05 12:17:27.942	1	1	\N
36	v5gd20al14dg41l8gv5uj33a	mujer-tiro-medio-laboratorio_23-2148970018 (1).jpg	\N	\N	1333	2000	{"large": {"ext": ".jpg", "url": "/uploads/large_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a.jpg", "hash": "large_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a", "mime": "image/jpeg", "name": "large_mujer-tiro-medio-laboratorio_23-2148970018 (1).jpg", "path": null, "size": 59.83, "width": 667, "height": 1000, "sizeInBytes": 59829}, "small": {"ext": ".jpg", "url": "/uploads/small_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a.jpg", "hash": "small_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a", "mime": "image/jpeg", "name": "small_mujer-tiro-medio-laboratorio_23-2148970018 (1).jpg", "path": null, "size": 21.63, "width": 333, "height": 500, "sizeInBytes": 21634}, "medium": {"ext": ".jpg", "url": "/uploads/medium_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a.jpg", "hash": "medium_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a", "mime": "image/jpeg", "name": "medium_mujer-tiro-medio-laboratorio_23-2148970018 (1).jpg", "path": null, "size": 39.42, "width": 500, "height": 750, "sizeInBytes": 39415}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a.jpg", "hash": "thumbnail_mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a", "mime": "image/jpeg", "name": "thumbnail_mujer-tiro-medio-laboratorio_23-2148970018 (1).jpg", "path": null, "size": 3.97, "width": 104, "height": 156, "sizeInBytes": 3965}}	mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a	.jpg	image/jpeg	131.75	/uploads/mujer_tiro_medio_laboratorio_23_2148970018_1_1c69316d2a.jpg	\N	local	\N	/	2025-08-05 14:41:31.42	2025-08-05 14:41:31.42	2025-08-05 14:41:31.42	1	1	\N
37	zqpbnb3lrrzmf7l9jci0kyd9	vista-frontal-mujer-cientifica-guantes-quirurgicos-posando-laboratorio_23-2148491979 (1).jpg	\N	\N	1480	1600	{"large": {"ext": ".jpg", "url": "/uploads/large_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b.jpg", "hash": "large_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b", "mime": "image/jpeg", "name": "large_vista-frontal-mujer-cientifica-guantes-quirurgicos-posando-laboratorio_23-2148491979 (1).jpg", "path": null, "size": 66.57, "width": 925, "height": 1000, "sizeInBytes": 66567}, "small": {"ext": ".jpg", "url": "/uploads/small_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b.jpg", "hash": "small_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b", "mime": "image/jpeg", "name": "small_vista-frontal-mujer-cientifica-guantes-quirurgicos-posando-laboratorio_23-2148491979 (1).jpg", "path": null, "size": 23.64, "width": 463, "height": 500, "sizeInBytes": 23637}, "medium": {"ext": ".jpg", "url": "/uploads/medium_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b.jpg", "hash": "medium_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b", "mime": "image/jpeg", "name": "medium_vista-frontal-mujer-cientifica-guantes-quirurgicos-posando-laboratorio_23-2148491979 (1).jpg", "path": null, "size": 43.45, "width": 694, "height": 750, "sizeInBytes": 43451}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b.jpg", "hash": "thumbnail_vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b", "mime": "image/jpeg", "name": "thumbnail_vista-frontal-mujer-cientifica-guantes-quirurgicos-posando-laboratorio_23-2148491979 (1).jpg", "path": null, "size": 4.25, "width": 144, "height": 156, "sizeInBytes": 4245}}	vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b	.jpg	image/jpeg	97.63	/uploads/vista_frontal_mujer_cientifica_guantes_quirurgicos_posando_laboratorio_23_2148491979_1_96b3af0f3b.jpg	\N	local	\N	/	2025-08-05 14:42:09.167	2025-08-05 14:42:09.167	2025-08-05 14:42:09.167	1	1	\N
38	gbshu1pqcqhzq8wiz1qw90pj	mujer-sonriente-microscopio-tiro-medio_23-2148969928 (1).jpg	\N	\N	1333	2000	{"large": {"ext": ".jpg", "url": "/uploads/large_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e.jpg", "hash": "large_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e", "mime": "image/jpeg", "name": "large_mujer-sonriente-microscopio-tiro-medio_23-2148969928 (1).jpg", "path": null, "size": 57.74, "width": 667, "height": 1000, "sizeInBytes": 57743}, "small": {"ext": ".jpg", "url": "/uploads/small_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e.jpg", "hash": "small_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e", "mime": "image/jpeg", "name": "small_mujer-sonriente-microscopio-tiro-medio_23-2148969928 (1).jpg", "path": null, "size": 21.61, "width": 333, "height": 500, "sizeInBytes": 21605}, "medium": {"ext": ".jpg", "url": "/uploads/medium_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e.jpg", "hash": "medium_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e", "mime": "image/jpeg", "name": "medium_mujer-sonriente-microscopio-tiro-medio_23-2148969928 (1).jpg", "path": null, "size": 38.2, "width": 500, "height": 750, "sizeInBytes": 38204}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e.jpg", "hash": "thumbnail_mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e", "mime": "image/jpeg", "name": "thumbnail_mujer-sonriente-microscopio-tiro-medio_23-2148969928 (1).jpg", "path": null, "size": 4.21, "width": 104, "height": 156, "sizeInBytes": 4207}}	mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e	.jpg	image/jpeg	112.48	/uploads/mujer_sonriente_microscopio_tiro_medio_23_2148969928_1_f8c057536e.jpg	\N	local	\N	/	2025-08-05 14:42:41.484	2025-08-05 14:42:41.484	2025-08-05 14:42:41.484	1	1	\N
39	mawo6931ojcgg6z2xeeosc9x	hombre-alto-angulo-terapia_23-2150229954 (1).png	\N	\N	740	925	{"small": {"ext": ".png", "url": "/uploads/small_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a.png", "hash": "small_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a", "mime": "image/png", "name": "small_hombre-alto-angulo-terapia_23-2150229954 (1).png", "path": null, "size": 362.86, "width": 400, "height": 500, "sizeInBytes": 362857}, "medium": {"ext": ".png", "url": "/uploads/medium_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a.png", "hash": "medium_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a", "mime": "image/png", "name": "medium_hombre-alto-angulo-terapia_23-2150229954 (1).png", "path": null, "size": 768.91, "width": 600, "height": 750, "sizeInBytes": 768909}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a.png", "hash": "thumbnail_hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a", "mime": "image/png", "name": "thumbnail_hombre-alto-angulo-terapia_23-2150229954 (1).png", "path": null, "size": 45.95, "width": 125, "height": 156, "sizeInBytes": 45947}}	hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a	.png	image/png	219.92	/uploads/hombre_alto_angulo_terapia_23_2150229954_1_a415ef892a.png	\N	local	\N	/	2025-08-05 14:54:28.779	2025-08-05 14:54:28.779	2025-08-05 14:54:28.779	1	1	\N
40	rpspve3jjjxoqzs91tehv55e	medico-quimico-cientifico-analizando-enfermedad-virus-que-desarrolla-tratamiento-infeccion_482257-21979.png	\N	\N	740	1016	{"large": {"ext": ".png", "url": "/uploads/large_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0.png", "hash": "large_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0", "mime": "image/png", "name": "large_medico-quimico-cientifico-analizando-enfermedad-virus-que-desarrolla-tratamiento-infeccion_482257-21979.png", "path": null, "size": 1233.7, "width": 728, "height": 1000, "sizeInBytes": 1233695}, "small": {"ext": ".png", "url": "/uploads/small_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0.png", "hash": "small_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0", "mime": "image/png", "name": "small_medico-quimico-cientifico-analizando-enfermedad-virus-que-desarrolla-tratamiento-infeccion_482257-21979.png", "path": null, "size": 345.32, "width": 364, "height": 500, "sizeInBytes": 345320}, "medium": {"ext": ".png", "url": "/uploads/medium_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0.png", "hash": "medium_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0", "mime": "image/png", "name": "medium_medico-quimico-cientifico-analizando-enfermedad-virus-que-desarrolla-tratamiento-infeccion_482257-21979.png", "path": null, "size": 756.01, "width": 546, "height": 750, "sizeInBytes": 756009}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0.png", "hash": "thumbnail_medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0", "mime": "image/png", "name": "thumbnail_medico-quimico-cientifico-analizando-enfermedad-virus-que-desarrolla-tratamiento-infeccion_482257-21979.png", "path": null, "size": 42.03, "width": 114, "height": 156, "sizeInBytes": 42025}}	medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0	.png	image/png	245.22	/uploads/medico_quimico_cientifico_analizando_enfermedad_virus_que_desarrolla_tratamiento_infeccion_482257_21979_9e673459a0.png	\N	local	\N	/	2025-08-05 14:54:40.625	2025-08-05 14:54:40.625	2025-08-05 14:54:40.626	1	1	\N
41	ynlg7s4dr0i3psut0l8rzrgi	acompanamiento-proceso-aborto_23-2149656041.png	\N	\N	740	1112	{"large": {"ext": ".png", "url": "/uploads/large_acompanamiento_proceso_aborto_23_2149656041_133ba3f803.png", "hash": "large_acompanamiento_proceso_aborto_23_2149656041_133ba3f803", "mime": "image/png", "name": "large_acompanamiento-proceso-aborto_23-2149656041.png", "path": null, "size": 830.85, "width": 665, "height": 1000, "sizeInBytes": 830848}, "small": {"ext": ".png", "url": "/uploads/small_acompanamiento_proceso_aborto_23_2149656041_133ba3f803.png", "hash": "small_acompanamiento_proceso_aborto_23_2149656041_133ba3f803", "mime": "image/png", "name": "small_acompanamiento-proceso-aborto_23-2149656041.png", "path": null, "size": 229.52, "width": 333, "height": 500, "sizeInBytes": 229519}, "medium": {"ext": ".png", "url": "/uploads/medium_acompanamiento_proceso_aborto_23_2149656041_133ba3f803.png", "hash": "medium_acompanamiento_proceso_aborto_23_2149656041_133ba3f803", "mime": "image/png", "name": "medium_acompanamiento-proceso-aborto_23-2149656041.png", "path": null, "size": 484.58, "width": 499, "height": 750, "sizeInBytes": 484576}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_acompanamiento_proceso_aborto_23_2149656041_133ba3f803.png", "hash": "thumbnail_acompanamiento_proceso_aborto_23_2149656041_133ba3f803", "mime": "image/png", "name": "thumbnail_acompanamiento-proceso-aborto_23-2149656041.png", "path": null, "size": 31.69, "width": 104, "height": 156, "sizeInBytes": 31691}}	acompanamiento_proceso_aborto_23_2149656041_133ba3f803	.png	image/png	231.43	/uploads/acompanamiento_proceso_aborto_23_2149656041_133ba3f803.png	\N	local	\N	/	2025-08-05 14:59:13.419	2025-08-05 14:59:13.419	2025-08-05 14:59:13.42	1	1	\N
42	z8ikxfu1ch85w2szwrt60wlb	mujer-diabetica-tiro-medio-comprobando-su-nivel-glucosa_23-2150756394.png	\N	\N	740	1112	{"large": {"ext": ".png", "url": "/uploads/large_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5.png", "hash": "large_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5", "mime": "image/png", "name": "large_mujer-diabetica-tiro-medio-comprobando-su-nivel-glucosa_23-2150756394.png", "path": null, "size": 1180.12, "width": 665, "height": 1000, "sizeInBytes": 1180116}, "small": {"ext": ".png", "url": "/uploads/small_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5.png", "hash": "small_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5", "mime": "image/png", "name": "small_mujer-diabetica-tiro-medio-comprobando-su-nivel-glucosa_23-2150756394.png", "path": null, "size": 333.77, "width": 333, "height": 500, "sizeInBytes": 333774}, "medium": {"ext": ".png", "url": "/uploads/medium_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5.png", "hash": "medium_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5", "mime": "image/png", "name": "medium_mujer-diabetica-tiro-medio-comprobando-su-nivel-glucosa_23-2150756394.png", "path": null, "size": 700.74, "width": 499, "height": 750, "sizeInBytes": 700742}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5.png", "hash": "thumbnail_mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5", "mime": "image/png", "name": "thumbnail_mujer-diabetica-tiro-medio-comprobando-su-nivel-glucosa_23-2150756394.png", "path": null, "size": 41.52, "width": 104, "height": 156, "sizeInBytes": 41523}}	mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5	.png	image/png	321.34	/uploads/mujer_diabetica_tiro_medio_comprobando_su_nivel_glucosa_23_2150756394_0d9b7311e5.png	\N	local	\N	/	2025-08-05 14:59:36.602	2025-08-05 14:59:36.602	2025-08-05 14:59:36.602	1	1	\N
43	b5tspz03zonng9kexfhqw9km	medico-laboratorio-que-realiza-examen-medico-orina_23-2149372018.jpg	\N	\N	1428	2000	{"large": {"ext": ".jpg", "url": "/uploads/large_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2.jpg", "hash": "large_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2", "mime": "image/jpeg", "name": "large_medico-laboratorio-que-realiza-examen-medico-orina_23-2149372018.jpg", "path": null, "size": 80.73, "width": 714, "height": 1000, "sizeInBytes": 80734}, "small": {"ext": ".jpg", "url": "/uploads/small_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2.jpg", "hash": "small_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2", "mime": "image/jpeg", "name": "small_medico-laboratorio-que-realiza-examen-medico-orina_23-2149372018.jpg", "path": null, "size": 25.08, "width": 357, "height": 500, "sizeInBytes": 25081}, "medium": {"ext": ".jpg", "url": "/uploads/medium_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2.jpg", "hash": "medium_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2", "mime": "image/jpeg", "name": "medium_medico-laboratorio-que-realiza-examen-medico-orina_23-2149372018.jpg", "path": null, "size": 49.74, "width": 536, "height": 750, "sizeInBytes": 49743}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2.jpg", "hash": "thumbnail_medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2", "mime": "image/jpeg", "name": "thumbnail_medico-laboratorio-que-realiza-examen-medico-orina_23-2149372018.jpg", "path": null, "size": 3.83, "width": 111, "height": 156, "sizeInBytes": 3826}}	medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2	.jpg	image/jpeg	276.25	/uploads/medico_laboratorio_que_realiza_examen_medico_orina_23_2149372018_b166f19ef2.jpg	\N	local	\N	/	2025-08-05 14:59:48.427	2025-08-05 14:59:48.427	2025-08-05 14:59:48.428	1	1	\N
\.


--
-- TOC entry 5553 (class 0 OID 41394)
-- Dependencies: 286
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- TOC entry 5551 (class 0 OID 41382)
-- Dependencies: 284
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	3	1	api::author.author	avatar	1
5	3	3	api::analyses-lab.analyses-lab	cover	1
12	4	1	api::article.article	cover	1
13	4	5	api::article.article	cover	1
14	3	1	api::analyses-lab.analyses-lab	cover	1
15	3	4	api::analyses-lab.analyses-lab	cover	1
17	5	6	api::analyses-lab.analyses-lab	cover	1
19	6	8	api::analyses-lab.analyses-lab	cover	1
21	7	10	api::analyses-lab.analyses-lab	cover	1
41	18	11	api::analyses-lab.analyses-lab	cover	1
43	19	12	api::analyses-lab.analyses-lab	cover	1
45	20	13	api::analyses-lab.analyses-lab	cover	1
74	33	4	api::especialidad.especialidad	cover	1
75	33	13	api::especialidad.especialidad	cover	1
76	34	6	api::especialidad.especialidad	cover	1
77	34	14	api::especialidad.especialidad	cover	1
78	35	8	api::especialidad.especialidad	cover	1
79	35	15	api::especialidad.especialidad	cover	1
80	36	5	api::analyses-lab.analyses-lab	cover	1
81	36	14	api::analyses-lab.analyses-lab	cover	1
82	37	7	api::analyses-lab.analyses-lab	cover	1
83	37	15	api::analyses-lab.analyses-lab	cover	1
84	38	9	api::analyses-lab.analyses-lab	cover	1
85	38	16	api::analyses-lab.analyses-lab	cover	1
86	39	3	api::pruebas-genetica.pruebas-genetica	cover	1
87	39	18	api::pruebas-genetica.pruebas-genetica	cover	1
88	40	5	api::pruebas-genetica.pruebas-genetica	cover	1
89	40	19	api::pruebas-genetica.pruebas-genetica	cover	1
90	38	7	api::pruebas-genetica.pruebas-genetica	cover	1
91	38	20	api::pruebas-genetica.pruebas-genetica	cover	1
92	41	3	api::despistaje.despistaje	cover	1
93	41	12	api::despistaje.despistaje	cover	1
94	42	5	api::despistaje.despistaje	cover	1
95	42	13	api::despistaje.despistaje	cover	1
96	43	7	api::despistaje.despistaje	cover	1
97	43	14	api::despistaje.despistaje	cover	1
\.


--
-- TOC entry 5495 (class 0 OID 41019)
-- Dependencies: 228
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	uoliqu9pmz8myb563klxweep	Spanish (Peru) (es-PE)	es-PE	2025-07-12 12:57:29.63	2025-07-12 12:58:52.783	2025-07-12 12:57:29.631	1	1	\N
\.


--
-- TOC entry 5591 (class 0 OID 49339)
-- Dependencies: 324
-- Data for Name: pruebas_geneticas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pruebas_geneticas (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, tittle, description) FROM stdin;
3	j3l497hkiwc862qjckakk259	2025-08-01 16:44:55.867	2025-08-05 14:54:31.142	\N	1	1	\N	Test para enfermedad de Alzheimer	Evalúa susceptibilidad genética, aunque no es determinante.
18	j3l497hkiwc862qjckakk259	2025-08-01 16:44:55.867	2025-08-05 14:54:31.142	2025-08-05 14:54:31.159	1	1	\N	Test para enfermedad de Alzheimer	Evalúa susceptibilidad genética, aunque no es determinante.
5	s3q8egashmo4sqdskpkwtstk	2025-08-01 16:45:43.55	2025-08-05 14:54:43.058	\N	1	1	\N	Test genético para trombofilia (Factor V Leiden, protrombina)	Evalúa riesgo de trombosis.
19	s3q8egashmo4sqdskpkwtstk	2025-08-01 16:45:43.55	2025-08-05 14:54:43.058	2025-08-05 14:54:43.076	1	1	\N	Test genético para trombofilia (Factor V Leiden, protrombina)	Evalúa riesgo de trombosis.
7	vij146hgat4zsqdyo3bxkye8	2025-08-01 16:46:36.955	2025-08-05 14:54:52.306	\N	1	1	\N	Test de genealogía (ancestralidad)	Informa sobre el origen étnico y linajes familiares.
20	vij146hgat4zsqdyo3bxkye8	2025-08-01 16:46:36.955	2025-08-05 14:54:52.306	2025-08-05 14:54:52.329	1	1	\N	Test de genealogía (ancestralidad)	Informa sobre el origen étnico y linajes familiares.
\.


--
-- TOC entry 5527 (class 0 OID 41265)
-- Dependencies: 260
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5573 (class 0 OID 41538)
-- Dependencies: 306
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5525 (class 0 OID 41253)
-- Dependencies: 258
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	dolj7hq0h1x0pb9hu4hqthiv	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	e3f8ff1ef03cfc467243e5536e2b1929ee8d264d19ea93b576ebcd31c29fe2d12a5dbbe2f012e5c281ebaa24cd8af83311b838f18cbe6c207d67d4d1d10ccd3f	v1:785f443894050afe4434996bc0cc834f:43d581585e2fb619720ac410a4873b14fc1f2fea44c7f6fd41a42fbe60a905555d9af265716e453841c3b96bb77d4cccfaf14abca0c881f2ed862225e064889b696574583fcf11080878c178923d0611049d5e9047c8e5ee4911eefdb98c415f2ef99f6714fa0edc653a6272e47897e355d667ec42832fb2db5acedc28e07aba30b45686d000ba0b272b8a7b4808f70d8953394a128a204e0db458df8ac19676a96d9708fc5c66584abdd6628b6b6580564409953af960e325548a88108cf0c15eae3bc9849d287654d6116b25d53b8ad6651971037451b64c04c910efc85e0e041ef0e05a8ced788e89e7d84eef5a344a80b869ddbc25b73c1fbc704e339836:8c88af65f0b8042375ccf0e1763ef71d	\N	\N	\N	2025-07-11 14:34:01.256	2025-07-11 14:34:01.256	2025-07-11 14:34:01.256	\N	\N	\N
1	ixuph5vo8qry2ty0390grnsp	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	db2e085b602cceee261674e0e2633a48894568e49755fa6ff0e4bbb1fc9de606fad7dc99c528b62e91d99bea7bbf12a388ef3f3f163b925760f566173482aaed	v1:5b58091349319e99c004a0493cfd4ae0:ea6a9c3d5698e8e3a6766765a7b3cd6f36b84bfe696a56e957055407d705311565b97815b38009762e0ecb4c7c2f949c2c7524fd34bf836567b954006ab4eaaf9105d3cb5bd3344acc0358001db8945d11c928af0dbdcaf61d2d5af2fd734a7e29b8b251feb92e5c74026155b7dc41c042a0cd10e8fccf453e63577dce90166f08f6983c1cc2e14c0fa386070b6168adb8a9964e6a0fce94f4d816301bae298ee4fdf80d2226072bac30c44a23c2a16b39f06571fec8323b6ec3865d4fe35fc7738d09b28e51563fbd96d7c47548a78f9671220021b1334fdb2b924ec7918ab3a70a860ce5ec60c426a99ea5bbf1d94cdbe116fb42135f1fa4c0670f0e5806b4:2b393c8214dfb08b2d3b18b8fdcf28b1	2025-08-09 12:47:26.152	\N	\N	2025-07-11 14:34:01.248	2025-08-09 12:47:26.152	2025-07-11 14:34:01.249	\N	\N	\N
\.


--
-- TOC entry 5533 (class 0 OID 41301)
-- Dependencies: 266
-- Data for Name: strapi_audit_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_audit_logs (id, document_id, action, date, payload, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5577 (class 0 OID 41562)
-- Dependencies: 310
-- Data for Name: strapi_audit_logs_user_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_audit_logs_user_lnk (id, audit_log_id, user_id) FROM stdin;
\.


--
-- TOC entry 5545 (class 0 OID 41354)
-- Dependencies: 278
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
8	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
2	strapi_content_types_schema	{"api::analyses-lab.analyses-lab":{"kind":"collectionType","collectionName":"analyses_labs","info":{"singularName":"analyses-lab","pluralName":"analyses-labs","displayName":"Análisis"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"precio":{"type":"integer","required":true},"category_id":{"type":"relation","relation":"manyToOne","target":"api::categories-lab.categories-lab","inversedBy":"analyses_labs"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::analyses-lab.analyses-lab","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"analyses_labs"}}},"apiName":"analyses-lab","globalId":"AnalysesLab","uid":"api::analyses-lab.analyses-lab","modelType":"contentType","__schema__":{"collectionName":"analyses_labs","info":{"singularName":"analyses-lab","pluralName":"analyses-labs","displayName":"Análisis"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"precio":{"type":"integer","required":true},"category_id":{"type":"relation","relation":"manyToOne","target":"api::categories-lab.categories-lab","inversedBy":"analyses_labs"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]}},"kind":"collectionType"},"modelName":"analyses-lab","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Artículos","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"titulo":{"type":"string"},"descripcion":{"type":"text","maxLength":80},"contenido":{"type":"richtext"},"slug":{"type":"uid"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"autor":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articulos"},"categoria":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Artículos","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"titulo":{"type":"string"},"descripcion":{"type":"text","maxLength":80},"contenido":{"type":"richtext"},"slug":{"type":"uid"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"autor":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articulos"},"categoria":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Autores","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"nombre":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articulos":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"autor"},"especialidad":{"type":"enumeration","enum":["Alergología e Inmunología Clínica","Anatomía Patológica","Anestesiología y Reanimación","Cardiología","Cirugía Cardiovascular","Cirugía General y del Aparato Digestivo","Cirugía Maxilofacial","Cirugía Ortopédica y Traumatología","Cirugía Pediátrica","Dermatología Médico-Quirúrgica y Venereología","Endocrinología y Nutrición","Gastroenterología","Geriatría","Ginecología y Obstetricia","Hematología y Hemoterapia","Medicina de Familia y Comunitaria","Medicina Intensiva","Medicina Interna","Medicina Preventiva y Salud Pública","Nefrología","Neumología","Neurología","Neurocirugía","Oftalmología","Oncología Médica","Oncología Radioterápica","Otorrinolaringología","Pediatría","Psiquiatría","Radiodiagnóstico","Rehabilitación","Reumatología","Urología"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Autores","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"nombre":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articulos":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"autor"},"especialidad":{"type":"enumeration","enum":["Alergología e Inmunología Clínica","Anatomía Patológica","Anestesiología y Reanimación","Cardiología","Cirugía Cardiovascular","Cirugía General y del Aparato Digestivo","Cirugía Maxilofacial","Cirugía Ortopédica y Traumatología","Cirugía Pediátrica","Dermatología Médico-Quirúrgica y Venereología","Endocrinología y Nutrición","Gastroenterología","Geriatría","Ginecología y Obstetricia","Hematología y Hemoterapia","Medicina de Familia y Comunitaria","Medicina Intensiva","Medicina Interna","Medicina Preventiva y Salud Pública","Nefrología","Neumología","Neurología","Neurocirugía","Oftalmología","Oncología Médica","Oncología Radioterápica","Otorrinolaringología","Pediatría","Psiquiatría","Radiodiagnóstico","Rehabilitación","Reumatología","Urología"]}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::categories-lab.categories-lab":{"kind":"collectionType","collectionName":"categories_labs","info":{"singularName":"categories-lab","pluralName":"categories-labs","displayName":"Categorías laboratorios"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"slug":{"type":"string","required":false},"analyses_labs":{"type":"relation","relation":"oneToMany","target":"api::analyses-lab.analyses-lab","mappedBy":"category_id"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::categories-lab.categories-lab","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories_labs"}}},"apiName":"categories-lab","globalId":"CategoriesLab","uid":"api::categories-lab.categories-lab","modelType":"contentType","__schema__":{"collectionName":"categories_labs","info":{"singularName":"categories-lab","pluralName":"categories-labs","displayName":"Categorías laboratorios"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"slug":{"type":"string","required":false},"analyses_labs":{"type":"relation","relation":"oneToMany","target":"api::analyses-lab.analyses-lab","mappedBy":"category_id"}},"kind":"collectionType"},"modelName":"categories-lab","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Categorías","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"categoria"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Categorías","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"categoria"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::despistaje.despistaje":{"kind":"collectionType","collectionName":"despistajes","info":{"singularName":"despistaje","pluralName":"despistajes","displayName":"Despistajes"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::despistaje.despistaje","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"despistajes"}}},"apiName":"despistaje","globalId":"Despistaje","uid":"api::despistaje.despistaje","modelType":"contentType","__schema__":{"collectionName":"despistajes","info":{"singularName":"despistaje","pluralName":"despistajes","displayName":"Despistajes"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]}},"kind":"collectionType"},"modelName":"despistaje","actions":{},"lifecycles":{}},"api::especialidad.especialidad":{"kind":"collectionType","collectionName":"especialidades","info":{"singularName":"especialidad","pluralName":"especialidades","displayName":"Especialidades"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"rating":{"type":"integer"},"min_lead_time":{"type":"integer"},"max_lead_time":{"type":"integer"},"lead_time_unit":{"type":"enumeration","enum":["días","semanas"]},"description":{"type":"text"},"specialists_count":{"type":"integer"},"estado":{"type":"enumeration","enum":["Disponible","No disponible"]},"icon_name":{"type":"string"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::especialidad.especialidad","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"especialidades"}}},"apiName":"especialidad","globalId":"Especialidad","uid":"api::especialidad.especialidad","modelType":"contentType","__schema__":{"collectionName":"especialidades","info":{"singularName":"especialidad","pluralName":"especialidades","displayName":"Especialidades"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nombre":{"type":"string","required":true},"rating":{"type":"integer"},"min_lead_time":{"type":"integer"},"max_lead_time":{"type":"integer"},"lead_time_unit":{"type":"enumeration","enum":["días","semanas"]},"description":{"type":"text"},"specialists_count":{"type":"integer"},"estado":{"type":"enumeration","enum":["Disponible","No disponible"]},"icon_name":{"type":"string"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]}},"kind":"collectionType"},"modelName":"especialidad","actions":{},"lifecycles":{}},"api::pruebas-genetica.pruebas-genetica":{"kind":"collectionType","collectionName":"pruebas_geneticas","info":{"singularName":"pruebas-genetica","pluralName":"pruebas-geneticas","displayName":"Pruebas genéticas"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tittle":{"type":"string"},"description":{"type":"text"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pruebas-genetica.pruebas-genetica","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pruebas_geneticas"}}},"apiName":"pruebas-genetica","globalId":"PruebasGenetica","uid":"api::pruebas-genetica.pruebas-genetica","modelType":"contentType","__schema__":{"collectionName":"pruebas_geneticas","info":{"singularName":"pruebas-genetica","pluralName":"pruebas-geneticas","displayName":"Pruebas genéticas"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tittle":{"type":"string"},"description":{"type":"text"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files"]}},"kind":"collectionType"},"modelName":"pruebas-genetica","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::audit-log":{"kind":"collectionType","collectionName":"strapi_audit_logs","info":{"singularName":"audit-log","pluralName":"audit-logs","displayName":"Audit Log"},"options":{"timestamps":false,"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true},"date":{"type":"datetime","required":true},"user":{"type":"relation","relation":"oneToOne","target":"admin::user"},"payload":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::audit-log","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_audit_logs"}}},"plugin":"admin","globalId":"AdminAuditLog","uid":"admin::audit-log","modelType":"contentType","__schema__":{"collectionName":"strapi_audit_logs","info":{"singularName":"audit-log","pluralName":"audit-logs","displayName":"Audit Log"},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true},"date":{"type":"datetime","required":true},"user":{"type":"relation","relation":"oneToOne","target":"admin::user"},"payload":{"type":"json"}},"kind":"collectionType"},"modelName":"audit-log"}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
35	plugin_i18n_default_locale	"es-PE"	string	\N	\N
43	plugin_content_manager_configuration_content_types::api::categories-lab.categories-lab	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"createdAt","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nombre":{"edit":{"label":"Nombres","description":"","placeholder":"nombres","visible":true,"editable":true},"list":{"label":"nombre","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"slug","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"analyses_labs":{"edit":{"label":"Análisis relacionados","description":"","placeholder":"seleccionar","visible":true,"editable":true,"mainField":"nombre"},"list":{"label":"analyses_labs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"nombre","size":6},{"name":"slug","size":6}],[{"name":"analyses_labs","size":12}]],"list":["id","nombre","slug","createdBy","createdAt","updatedAt"]},"uid":"api::categories-lab.categories-lab"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
32	core_persisted_tables	[{"name":"strapi_history_versions"}]	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::despistaje.despistaje	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"createdAt","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Título","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Descripción","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Imagen","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"cover","size":6}]],"list":["id","cover","title","description","createdAt","updatedAt","createdBy"]},"uid":"api::despistaje.despistaje"}	object	\N	\N
47	core_content-releases_settings	{"defaultTimezone":"UTC-05:00&America/Guayaquil"}	object	\N	\N
1	ee_information	{"lastCheckAt":1755003997231,"error":"The associated subscription is cancelled.","license":null}	\N	\N	\N
21	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::analyses-lab.analyses-lab	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"createdAt","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nombre":{"edit":{"label":"Nombre","description":"","placeholder":"nombre","visible":true,"editable":true},"list":{"label":"nombre","searchable":true,"sortable":true}},"precio":{"edit":{"label":"Precio","description":"","placeholder":"precio","visible":true,"editable":true},"list":{"label":"precio","searchable":true,"sortable":true}},"category_id":{"edit":{"label":"Categoría","description":"","placeholder":"seleccionar","visible":true,"editable":true,"mainField":"nombre"},"list":{"label":"category_id","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"nombre","size":4},{"name":"precio","size":4},{"name":"category_id","size":4}],[{"name":"cover","size":6}]],"list":["id","createdAt","updatedAt","createdBy","precio","nombre","cover"]},"uid":"api::analyses-lab.analyses-lab"}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::pruebas-genetica.pruebas-genetica	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"createdAt","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"Título","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"description":{"edit":{"label":"Descripción","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Imagen","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"tittle","size":6},{"name":"description","size":6}],[{"name":"cover","size":6}]],"list":["id","tittle","cover","description","updatedAt","createdAt","createdBy"]},"uid":"api::pruebas-genetica.pruebas-genetica"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
31	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
33	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
36	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
37	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
38	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
34	plugin_upload_metrics	{"weeklySchedule":"38 41 16 * * 5","lastWeeklyUpdate":1754689298252}	object	\N	\N
24	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
41	type_setup_initHasRun	true	boolean	development	\N
39	ee_disabled_users	[]	object	\N	\N
40	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::audit-log	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"user","searchable":true,"sortable":true}},"payload":{"edit":{"label":"payload","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"payload","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","date","user"],"edit":[[{"name":"action","size":6},{"name":"date","size":6}],[{"name":"user","size":6}],[{"name":"payload","size":12}]]},"uid":"admin::audit-log"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"titulo","defaultSortBy":"titulo","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"titulo":{"edit":{"label":"Título","description":"","placeholder":"título","visible":true,"editable":true},"list":{"label":"titulo","searchable":true,"sortable":true}},"descripcion":{"edit":{"label":"Descripción","description":"","placeholder":"descripción","visible":true,"editable":true},"list":{"label":"descripcion","searchable":true,"sortable":true}},"contenido":{"edit":{"label":"contenido","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contenido","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"slug","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Imagen de portada","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"autor":{"edit":{"label":"Autor","description":"","placeholder":"autor","visible":true,"editable":true,"mainField":"nombre"},"list":{"label":"autor","searchable":true,"sortable":true}},"categoria":{"edit":{"label":"Categoría","description":"","placeholder":"seleccionar","visible":true,"editable":true,"mainField":"name"},"list":{"label":"categoria","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"Bloques","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","titulo","descripcion","cover","autor","categoria"],"edit":[[{"name":"titulo","size":6},{"name":"slug","size":6},{"name":"cover","size":12}],[{"name":"autor","size":6},{"name":"categoria","size":6}],[{"name":"descripcion","size":12}],[{"name":"blocks","size":12}],[{"name":"contenido","size":12}]]},"uid":"api::article.article"}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nombre","defaultSortBy":"nombre","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nombre":{"edit":{"label":"Nombres","description":"","placeholder":"nombres","visible":true,"editable":true},"list":{"label":"nombre","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"Imagen de perfil","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"Email","description":"","placeholder":"email","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articulos":{"edit":{"label":"Artículos","description":"","placeholder":"artículos","visible":true,"editable":true,"mainField":"titulo"},"list":{"label":"articulos","searchable":false,"sortable":false}},"especialidad":{"edit":{"label":"Especialidad","description":"","placeholder":"especialidad","visible":true,"editable":true},"list":{"label":"especialidad","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"nombre","size":6},{"name":"email","size":6},{"name":"avatar","size":12}],[{"name":"especialidad","size":6},{"name":"articulos","size":6}]],"list":["id","avatar","email","nombre"]},"uid":"api::author.author"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Nombres","description":"","placeholder":"nombres","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"slug","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"Artículos","description":"","placeholder":"artículos","visible":true,"editable":true,"mainField":"titulo"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"Descripción","description":"","placeholder":"descripción","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":4},{"name":"slug","size":4},{"name":"articles","size":4}],[{"name":"description","size":12}]],"list":["id","name","slug","articles"]},"uid":"api::category.category"}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::especialidad.especialidad	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"createdAt","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nombre":{"edit":{"label":"Nombres","description":"","placeholder":"nombres","visible":true,"editable":true},"list":{"label":"nombre","searchable":true,"sortable":true}},"rating":{"edit":{"label":"Valoración","description":"","placeholder":"valoración","visible":true,"editable":true},"list":{"label":"rating","searchable":true,"sortable":true}},"min_lead_time":{"edit":{"label":"min_lead_time","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"min_lead_time","searchable":true,"sortable":true}},"max_lead_time":{"edit":{"label":"max_lead_time","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"max_lead_time","searchable":true,"sortable":true}},"lead_time_unit":{"edit":{"label":"lead_time_unit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lead_time_unit","searchable":true,"sortable":true}},"description":{"edit":{"label":"Descripción","description":"","placeholder":"descripción","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"specialists_count":{"edit":{"label":"Especialistas disponibles","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"specialists_count","searchable":true,"sortable":true}},"estado":{"edit":{"label":"Estado","description":"","placeholder":"estado","visible":true,"editable":true},"list":{"label":"estado","searchable":true,"sortable":true}},"icon_name":{"edit":{"label":"Icono","description":"","placeholder":"nombre del ícono","visible":true,"editable":true},"list":{"label":"icon_name","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"nombre","size":4},{"name":"rating","size":4},{"name":"estado","size":4}],[{"name":"specialists_count","size":6},{"name":"icon_name","size":6}],[{"name":"description","size":12}],[{"name":"cover","size":6}]],"list":["id","createdAt","updatedAt","createdBy","nombre","estado","icon_name","rating","min_lead_time","max_lead_time","lead_time_unit","description","specialists_count","cover"]},"uid":"api::especialidad.especialidad"}	object	\N	\N
\.


--
-- TOC entry 5489 (class 0 OID 40976)
-- Dependencies: 222
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
27	{"tables":[{"name":"analyses_labs","indexes":[{"name":"analyses_labs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"analyses_labs_created_by_id_fk","columns":["created_by_id"]},{"name":"analyses_labs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"analyses_labs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"analyses_labs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nombre","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"precio","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"titulo","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"descripcion","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contenido","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nombre","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"especialidad","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories_labs","indexes":[{"name":"categories_labs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_labs_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_labs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_labs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_labs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nombre","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"despistajes","indexes":[{"name":"despistajes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"despistajes_created_by_id_fk","columns":["created_by_id"]},{"name":"despistajes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"despistajes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"despistajes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"especialidades","indexes":[{"name":"especialidades_documents_idx","columns":["document_id","locale","published_at"]},{"name":"especialidades_created_by_id_fk","columns":["created_by_id"]},{"name":"especialidades_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"especialidades_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"especialidades_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nombre","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rating","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"min_lead_time","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_lead_time","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lead_time_unit","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"specialists_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"estado","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"icon_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pruebas_geneticas","indexes":[{"name":"pruebas_geneticas_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pruebas_geneticas_created_by_id_fk","columns":["created_by_id"]},{"name":"pruebas_geneticas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pruebas_geneticas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pruebas_geneticas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_audit_logs","indexes":[{"name":"strapi_audit_logs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_audit_logs_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_audit_logs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_audit_logs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_audit_logs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"payload","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"analyses_labs_category_id_lnk","indexes":[{"name":"analyses_labs_category_id_lnk_fk","columns":["analyses_lab_id"]},{"name":"analyses_labs_category_id_lnk_ifk","columns":["categories_lab_id"]},{"name":"analyses_labs_category_id_lnk_uq","columns":["analyses_lab_id","categories_lab_id"],"type":"unique"},{"name":"analyses_labs_category_id_lnk_oifk","columns":["analyses_lab_ord"]}],"foreignKeys":[{"name":"analyses_labs_category_id_lnk_fk","columns":["analyses_lab_id"],"referencedColumns":["id"],"referencedTable":"analyses_labs","onDelete":"CASCADE"},{"name":"analyses_labs_category_id_lnk_ifk","columns":["categories_lab_id"],"referencedColumns":["id"],"referencedTable":"categories_labs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"analyses_lab_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"categories_lab_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"analyses_lab_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_autor_lnk","indexes":[{"name":"articles_autor_lnk_fk","columns":["article_id"]},{"name":"articles_autor_lnk_ifk","columns":["author_id"]},{"name":"articles_autor_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_autor_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_autor_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_autor_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_categoria_lnk","indexes":[{"name":"articles_categoria_lnk_fk","columns":["article_id"]},{"name":"articles_categoria_lnk_ifk","columns":["category_id"]},{"name":"articles_categoria_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_categoria_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_categoria_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_categoria_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_audit_logs_user_lnk","indexes":[{"name":"strapi_audit_logs_user_lnk_fk","columns":["audit_log_id"]},{"name":"strapi_audit_logs_user_lnk_ifk","columns":["user_id"]},{"name":"strapi_audit_logs_user_lnk_uq","columns":["audit_log_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_audit_logs_user_lnk_fk","columns":["audit_log_id"],"referencedColumns":["id"],"referencedTable":"strapi_audit_logs","onDelete":"CASCADE"},{"name":"strapi_audit_logs_user_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"audit_log_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-08-02 09:30:13.567	269478f504d06b116ce9028f3dcecde78bd6d1a5a5c6ed350789433fc5c70f8d
\.


--
-- TOC entry 5549 (class 0 OID 41372)
-- Dependencies: 282
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
1	api::author.author	pn7vscp685baiqvmepqqqukc	\N	published	{"id": 1, "email": "elvis@hotmail.com", "avatar": {"id": 3}, "locale": null, "nombre": "Elvis Macas", "articulos": [], "documentId": "pn7vscp685baiqvmepqqqukc", "especialidad": "Urología"}	{"email": {"type": "string"}, "avatar": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string"}, "articulos": {"type": "relation", "target": "api::article.article", "mappedBy": "autor", "relation": "oneToMany"}, "especialidad": {"enum": ["Alergología e Inmunología Clínica", "Anatomía Patológica", "Anestesiología y Reanimación", "Cardiología", "Cirugía Cardiovascular", "Cirugía General y del Aparato Digestivo", "Cirugía Maxilofacial", "Cirugía Ortopédica y Traumatología", "Cirugía Pediátrica", "Dermatología Médico-Quirúrgica y Venereología", "Endocrinología y Nutrición", "Gastroenterología", "Geriatría", "Ginecología y Obstetricia", "Hematología y Hemoterapia", "Medicina de Familia y Comunitaria", "Medicina Intensiva", "Medicina Interna", "Medicina Preventiva y Salud Pública", "Nefrología", "Neumología", "Neurología", "Neurocirugía", "Oftalmología", "Oncología Médica", "Oncología Radioterápica", "Otorrinolaringología", "Pediatría", "Psiquiatría", "Radiodiagnóstico", "Rehabilitación", "Reumatología", "Urología"], "type": "enumeration"}, "localizations": {"type": "relation", "target": "api::author.author", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "authors", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-12 12:08:25.17	1
2	api::article.article	qmhbu1xvpo7kaggtu4he3izy	\N	published	{"id": 1, "slug": null, "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": {"id": 4}, "blocks": [], "locale": null, "titulo": "Nuevos avances en cardiología preventiva", "categoria": {"locale": null, "documentId": "vdpe7iyoi4s90h0jcbxvj4ia", "publishedAt": "2025-07-11T19:34:01.312Z"}, "documentId": "qmhbu1xvpo7kaggtu4he3izy", "descripcion": "Descubre las últimas investigaciones sobre prevención de enfermedades."}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-12 12:11:15.519	1
3	api::article.article	qmhbu1xvpo7kaggtu4he3izy	\N	published	{"id": 1, "slug": null, "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": {"id": 4}, "blocks": [], "locale": null, "titulo": "Nuevos avances en cardiología preventiva", "categoria": {"locale": null, "documentId": "vdpe7iyoi4s90h0jcbxvj4ia", "publishedAt": "2025-07-11T19:34:01.312Z"}, "documentId": "qmhbu1xvpo7kaggtu4he3izy", "descripcion": "Descubre las últimas investigaciones sobre prevención de enfermedades."}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-12 12:11:15.52	1
4	api::categories-lab.categories-lab	wu4sac0kd2pp4xsdl0rsli3s	\N	published	{"id": 1, "slug": "Examen", "locale": null, "nombre": "Algo", "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "analyses_labs": []}	{"slug": {"type": "string", "required": false}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "analyses_labs": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "mappedBy": "category_id", "relation": "oneToMany"}, "localizations": {"type": "relation", "target": "api::categories-lab.categories-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "categories_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-29 16:49:13.424	1
5	api::categories-lab.categories-lab	wu4sac0kd2pp4xsdl0rsli3s	\N	published	{"id": 1, "slug": "Examen", "locale": null, "nombre": "Algo", "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "analyses_labs": []}	{"slug": {"type": "string", "required": false}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "analyses_labs": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "mappedBy": "category_id", "relation": "oneToMany"}, "localizations": {"type": "relation", "target": "api::categories-lab.categories-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "categories_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-29 16:49:13.426	1
6	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-29 16:49:18.764	1
7	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-29 16:49:18.77	1
8	api::especialidad.especialidad	h6cscaaqcql3v9kcrcuqtrks	\N	published	{"id": 1, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "h6cscaaqcql3v9kcrcuqtrks", "description": "Esto descripción", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-07-29 16:53:02.442	1
9	api::especialidad.especialidad	h6cscaaqcql3v9kcrcuqtrks	\N	published	{"id": 1, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "h6cscaaqcql3v9kcrcuqtrks", "description": "Esto descripción", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-07-29 16:53:02.443	1
10	api::article.article	c6wy39ug0p7xp3mrfdpqnk8b	\N	published	{"id": 3, "slug": "ESTR", "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": null, "blocks": [], "locale": null, "titulo": "tEST", "categoria": {"locale": null, "documentId": "qwqmz9puns9hx0ofykw2in0t", "publishedAt": "2025-07-11T19:34:01.301Z"}, "documentId": "c6wy39ug0p7xp3mrfdpqnk8b", "descripcion": "aLGO"}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-30 16:13:08.013	1
11	api::article.article	c6wy39ug0p7xp3mrfdpqnk8b	\N	published	{"id": 3, "slug": "ESTR", "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": null, "blocks": [], "locale": null, "titulo": "tEST", "categoria": {"locale": null, "documentId": "qwqmz9puns9hx0ofykw2in0t", "publishedAt": "2025-07-11T19:34:01.301Z"}, "documentId": "c6wy39ug0p7xp3mrfdpqnk8b", "descripcion": "aLGO"}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-30 16:13:08.015	1
12	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "cover": {"id": 3}, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-30 16:31:43.393	1
13	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "cover": {"id": 3}, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-30 16:31:43.394	1
14	api::especialidad.especialidad	h6cscaaqcql3v9kcrcuqtrks	\N	published	{"id": 1, "cover": {"id": 1}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "h6cscaaqcql3v9kcrcuqtrks", "description": "Esto descripción", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-07-30 16:56:40.755	1
15	api::especialidad.especialidad	h6cscaaqcql3v9kcrcuqtrks	\N	published	{"id": 1, "cover": {"id": 1}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "h6cscaaqcql3v9kcrcuqtrks", "description": "Esto descripción", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-07-30 16:56:40.758	1
16	api::pruebas-genetica.pruebas-genetica	h675fzvpm8tv2jh3e1pms818	\N	published	{"id": 1, "cover": {"id": 4}, "locale": null, "tittle": "Test", "documentId": "h675fzvpm8tv2jh3e1pms818", "description": "Esto es una prueba"}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-31 11:33:59.909	1
17	api::pruebas-genetica.pruebas-genetica	h675fzvpm8tv2jh3e1pms818	\N	published	{"id": 1, "cover": {"id": 4}, "locale": null, "tittle": "Test", "documentId": "h675fzvpm8tv2jh3e1pms818", "description": "Esto es una prueba"}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-31 11:33:59.914	1
18	api::despistaje.despistaje	b3j6vog6e35j9uwwy7ycb4iw	\N	published	{"id": 1, "cover": {"id": 3}, "title": "Test", "locale": null, "documentId": "b3j6vog6e35j9uwwy7ycb4iw", "description": "tewst"}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-31 11:41:53.005	1
19	api::despistaje.despistaje	b3j6vog6e35j9uwwy7ycb4iw	\N	published	{"id": 1, "cover": {"id": 3}, "title": "Test", "locale": null, "documentId": "b3j6vog6e35j9uwwy7ycb4iw", "description": "tewst"}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-07-31 11:41:53.014	1
20	api::article.article	qmhbu1xvpo7kaggtu4he3izy	\N	published	{"id": 1, "slug": null, "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": {"id": 4}, "blocks": [], "locale": null, "titulo": "Nuevos avances en cardiología preventiva", "categoria": {"locale": null, "documentId": "vdpe7iyoi4s90h0jcbxvj4ia", "publishedAt": "2025-07-11T19:34:01.312Z"}, "contenido": "Prueba", "documentId": "qmhbu1xvpo7kaggtu4he3izy", "descripcion": "Descubre las últimas investigaciones sobre prevención de enfermedades."}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "contenido": {"type": "richtext"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 10:53:45.537	1
21	api::article.article	qmhbu1xvpo7kaggtu4he3izy	\N	published	{"id": 1, "slug": null, "autor": {"locale": null, "documentId": "pn7vscp685baiqvmepqqqukc", "publishedAt": "2025-07-12T17:08:25.096Z"}, "cover": {"id": 4}, "blocks": [], "locale": null, "titulo": "Nuevos avances en cardiología preventiva", "categoria": {"locale": null, "documentId": "vdpe7iyoi4s90h0jcbxvj4ia", "publishedAt": "2025-07-11T19:34:01.312Z"}, "contenido": "Prueba", "documentId": "qmhbu1xvpo7kaggtu4he3izy", "descripcion": "Descubre las últimas investigaciones sobre prevención de enfermedades."}	{"slug": {"type": "uid"}, "autor": {"type": "relation", "target": "api::author.author", "relation": "manyToOne", "inversedBy": "articulos"}, "cover": {"type": "media", "multiple": false, "required": false, "allowedTypes": ["images", "files", "videos"]}, "blocks": {"type": "dynamiczone", "components": ["shared.media", "shared.quote", "shared.rich-text", "shared.slider"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "titulo": {"type": "string"}, "categoria": {"type": "relation", "target": "api::category.category", "relation": "manyToOne", "inversedBy": "articles"}, "contenido": {"type": "richtext"}, "descripcion": {"type": "text", "maxLength": 80}, "localizations": {"type": "relation", "target": "api::article.article", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "articles", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 10:53:45.53	1
22	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "cover": {"id": 3}, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 11:30:04.225	1
23	api::analyses-lab.analyses-lab	jzck2pxpddhmudffi63ukl1w	\N	published	{"id": 1, "cover": {"id": 3}, "locale": null, "nombre": "Test de orina", "precio": 15, "documentId": "jzck2pxpddhmudffi63ukl1w", "category_id": {"locale": null, "documentId": "wu4sac0kd2pp4xsdl0rsli3s", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 11:30:04.226	1
24	api::categories-lab.categories-lab	o3b4zmjgqes8ay2voup0jkug	\N	published	{"id": 3, "slug": "Sangre y Bioquímica", "locale": null, "nombre": "Exámenes de Laboratorio", "documentId": "o3b4zmjgqes8ay2voup0jkug", "analyses_labs": []}	{"slug": {"type": "string", "required": false}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "analyses_labs": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "mappedBy": "category_id", "relation": "oneToMany"}, "localizations": {"type": "relation", "target": "api::categories-lab.categories-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "categories_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:20:57.75	1
25	api::categories-lab.categories-lab	o3b4zmjgqes8ay2voup0jkug	\N	published	{"id": 3, "slug": "Sangre y Bioquímica", "locale": null, "nombre": "Exámenes de Laboratorio", "documentId": "o3b4zmjgqes8ay2voup0jkug", "analyses_labs": []}	{"slug": {"type": "string", "required": false}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "analyses_labs": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "mappedBy": "category_id", "relation": "oneToMany"}, "localizations": {"type": "relation", "target": "api::categories-lab.categories-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "categories_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:20:57.751	1
26	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 5}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:22:08.145	1
27	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 5}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:22:08.147	1
28	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 6}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:22:54.567	1
29	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 6}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:22:54.568	1
30	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 7}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:29:49.857	1
31	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 7}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:29:49.861	1
32	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 8}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:34:02.853	1
33	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 8}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:34:02.855	1
34	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 9}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:35:29.975	1
35	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 9}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:35:29.978	1
36	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 10}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:36:49.167	1
37	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 10}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:36:49.168	1
38	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 11}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:38:32.392	1
39	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 11}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:38:32.397	1
49	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 16}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:46:36.992	1
40	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 12}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:39:23.844	1
42	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 13}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:42:07.433	1
41	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 12}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:39:23.846	1
43	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 13}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-01 16:42:07.434	1
44	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 14}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:44:55.9	1
45	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 14}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:44:55.902	1
46	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 15}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:45:43.591	1
47	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 15}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:45:43.592	1
48	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 16}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-01 16:46:36.99	1
50	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 18}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:49:20.339	1
52	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 19}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:50:03.752	1
54	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 20}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:50:35.511	1
51	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 18}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:49:20.34	1
53	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 19}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:50:03.754	1
55	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 20}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 14:50:35.512	1
56	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 21}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:02.978	1
57	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 21}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:02.979	1
63	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 24}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:06:38.111	1
58	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 22}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:36.186	1
59	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 22}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:36.187	1
61	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 23}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:57.149	1
60	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 23}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-04 15:01:57.148	1
62	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 24}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:06:38.11	1
80	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 30}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:04:48.663	1
64	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 25}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:12:15.966	1
65	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 25}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:12:15.969	1
66	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": null, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:15:33.2	1
67	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": null, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 15:15:33.201	1
68	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 26}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:13:44.163	1
69	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 26}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:13:44.168	1
70	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 27}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:22:48.545	1
71	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 27}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:22:48.546	1
72	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 28}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:26:10.135	1
73	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 28}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:26:10.136	1
74	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 29}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:04.129	1
75	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 29}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:04.13	1
76	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 28}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:29.287	1
77	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 28}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:29.291	1
78	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 29}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:48.7	1
79	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 29}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 16:33:48.703	1
81	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 30}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:04:48.664	1
82	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 31}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:05:07.051	1
83	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 31}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:05:07.052	1
84	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 32}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:05:23.555	1
85	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 32}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-04 17:05:23.556	1
86	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 33}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:16:24.965	1
87	api::especialidad.especialidad	x8pxgndikgotre3apoljwy2g	\N	published	{"id": 4, "cover": {"id": 33}, "estado": "Disponible", "locale": null, "nombre": "Cardiología", "rating": 5, "icon_name": null, "documentId": "x8pxgndikgotre3apoljwy2g", "description": "Diagnóstico y tratamiento de enfermedades del corazón y vasos sanguíneos.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:16:24.97	1
88	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 34}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:17:04.629	1
89	api::especialidad.especialidad	ws17vo9pimv0vr6b2xawztrs	\N	published	{"id": 6, "cover": {"id": 34}, "estado": "Disponible", "locale": null, "nombre": "Neumología", "rating": 5, "icon_name": null, "documentId": "ws17vo9pimv0vr6b2xawztrs", "description": "Especialista en enfermedades respiratorias como asma, bronquitis o EPOC.\\n\\n", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 3}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:17:04.634	1
90	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 35}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:17:34.348	1
91	api::especialidad.especialidad	gxeo4p8zlbjag8gb78ik8rok	\N	published	{"id": 8, "cover": {"id": 35}, "estado": "Disponible", "locale": null, "nombre": "Gastroenterología", "rating": 5, "icon_name": null, "documentId": "gxeo4p8zlbjag8gb78ik8rok", "description": "Problemas del aparato digestivo: estómago, hígado, intestinos, páncreas.", "max_lead_time": null, "min_lead_time": null, "lead_time_unit": null, "specialists_count": 2}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "estado": {"enum": ["Disponible", "No disponible"], "type": "enumeration"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "rating": {"type": "integer"}, "icon_name": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::especialidad.especialidad", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "especialidades", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}, "max_lead_time": {"type": "integer"}, "min_lead_time": {"type": "integer"}, "lead_time_unit": {"enum": ["días", "semanas"], "type": "enumeration"}, "specialists_count": {"type": "integer"}}	2025-08-05 12:17:34.349	1
92	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 36}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:41:38.244	1
93	api::analyses-lab.analyses-lab	orp11ugufrk55odbk7xa1scw	\N	published	{"id": 5, "cover": {"id": 36}, "locale": null, "nombre": "Hemograma completo", "precio": 15, "documentId": "orp11ugufrk55odbk7xa1scw", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:41:38.251	1
94	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 37}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:42:15.985	1
95	api::analyses-lab.analyses-lab	agmwrp9x7dg9ahb9klylmgke	\N	published	{"id": 7, "cover": {"id": 37}, "locale": null, "nombre": "Perfil lipídico", "precio": 25, "documentId": "agmwrp9x7dg9ahb9klylmgke", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:42:15.987	1
96	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 38}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:42:48.109	1
97	api::analyses-lab.analyses-lab	zub9u4abcta2052bufy63bvb	\N	published	{"id": 9, "cover": {"id": 38}, "locale": null, "nombre": "Glucosa en sangre", "precio": 40, "documentId": "zub9u4abcta2052bufy63bvb", "category_id": {"locale": null, "documentId": "o3b4zmjgqes8ay2voup0jkug", "publishedAt": null}}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "nombre": {"type": "string", "required": true}, "precio": {"type": "integer", "required": true}, "category_id": {"type": "relation", "target": "api::categories-lab.categories-lab", "relation": "manyToOne", "inversedBy": "analyses_labs"}, "localizations": {"type": "relation", "target": "api::analyses-lab.analyses-lab", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "analyses_labs", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:42:48.11	1
98	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 39}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:31.184	1
99	api::pruebas-genetica.pruebas-genetica	j3l497hkiwc862qjckakk259	\N	published	{"id": 3, "cover": {"id": 39}, "locale": null, "tittle": "Test para enfermedad de Alzheimer", "documentId": "j3l497hkiwc862qjckakk259", "description": "Evalúa susceptibilidad genética, aunque no es determinante."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:31.187	1
100	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 40}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:43.096	1
101	api::pruebas-genetica.pruebas-genetica	s3q8egashmo4sqdskpkwtstk	\N	published	{"id": 5, "cover": {"id": 40}, "locale": null, "tittle": "Test genético para trombofilia (Factor V Leiden, protrombina)", "documentId": "s3q8egashmo4sqdskpkwtstk", "description": "Evalúa riesgo de trombosis."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:43.097	1
103	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 38}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:52.349	1
104	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 41}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:15.608	1
102	api::pruebas-genetica.pruebas-genetica	vij146hgat4zsqdyo3bxkye8	\N	published	{"id": 7, "cover": {"id": 38}, "locale": null, "tittle": "Test de genealogía (ancestralidad)", "documentId": "vij146hgat4zsqdyo3bxkye8", "description": "Informa sobre el origen étnico y linajes familiares."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "tittle": {"type": "string"}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::pruebas-genetica.pruebas-genetica", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "pruebas_geneticas", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:54:52.348	1
105	api::despistaje.despistaje	llx7wm04nrd391zkrabvq1tn	\N	published	{"id": 3, "cover": {"id": 41}, "title": "Chequeo médico anual", "locale": null, "documentId": "llx7wm04nrd391zkrabvq1tn", "description": "Revisión general para detectar enfermedades silenciosas."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:15.614	1
106	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 42}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:39.052	1
107	api::despistaje.despistaje	kaoei4bmpbxnloxve7bd6jjr	\N	published	{"id": 5, "cover": {"id": 42}, "title": "Despistaje de diabetes", "locale": null, "documentId": "kaoei4bmpbxnloxve7bd6jjr", "description": "Detección temprana de alteraciones en el azúcar."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:39.055	1
109	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 43}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:53.312	1
108	api::despistaje.despistaje	nvzwnad2ykoip10wa6kaezu6	\N	published	{"id": 7, "cover": {"id": 43}, "title": "Papanicolaou", "locale": null, "documentId": "nvzwnad2ykoip10wa6kaezu6", "description": "Detecta cáncer de cuello uterino."}	{"cover": {"type": "media", "multiple": false, "allowedTypes": ["images", "files"]}, "title": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "description": {"type": "text"}, "localizations": {"type": "relation", "target": "api::despistaje.despistaje", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "despistajes", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2025-08-05 14:59:53.311	1
\.


--
-- TOC entry 5485 (class 0 OID 40962)
-- Dependencies: 218
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 5487 (class 0 OID 40969)
-- Dependencies: 220
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-07-11 14:33:58.551
2	5.0.0-02-created-document-id	2025-07-11 14:33:58.592
3	5.0.0-03-created-locale	2025-07-11 14:33:58.628
4	5.0.0-04-created-published-at	2025-07-11 14:33:58.664
5	5.0.0-05-drop-slug-fields-index	2025-07-11 14:33:58.702
6	core::5.0.0-discard-drafts	2025-07-11 14:33:58.743
7	content-releases::5.0.0-add-entry-document-id-to-release-actions	2025-07-11 14:33:58.745
\.


--
-- TOC entry 5499 (class 0 OID 41043)
-- Dependencies: 232
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5557 (class 0 OID 41418)
-- Dependencies: 290
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 5497 (class 0 OID 41031)
-- Dependencies: 230
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5531 (class 0 OID 41289)
-- Dependencies: 264
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5575 (class 0 OID 41550)
-- Dependencies: 308
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5529 (class 0 OID 41277)
-- Dependencies: 262
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5547 (class 0 OID 41363)
-- Dependencies: 280
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 5501 (class 0 OID 41055)
-- Dependencies: 234
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5559 (class 0 OID 41430)
-- Dependencies: 292
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 5503 (class 0 OID 41067)
-- Dependencies: 236
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5563 (class 0 OID 41453)
-- Dependencies: 296
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 5561 (class 0 OID 41441)
-- Dependencies: 294
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 5505 (class 0 OID 41079)
-- Dependencies: 238
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	s372iavremcgcb9eftdrrm3x	plugin::users-permissions.user.me	2025-07-11 14:34:00.621	2025-07-11 14:34:00.621	2025-07-11 14:34:00.622	\N	\N	\N
2	lv29ii5edss7o9596bqhji11	plugin::users-permissions.auth.changePassword	2025-07-11 14:34:00.621	2025-07-11 14:34:00.621	2025-07-11 14:34:00.622	\N	\N	\N
3	p9fdpj2j52nql6utqftk65j5	plugin::users-permissions.auth.callback	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	\N	\N	\N
4	tff8zhm2ivin0tc98vspgo9o	plugin::users-permissions.auth.connect	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	\N	\N	\N
5	ctazq125hgf9k9ljgh680wvr	plugin::users-permissions.auth.forgotPassword	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	\N	\N	\N
7	kd7tpl23j9vvo7x5jepue925	plugin::users-permissions.auth.register	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	\N	\N	\N
9	fhs16nnigx0ycrpb4k3dyhvp	plugin::users-permissions.auth.sendEmailConfirmation	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.64	\N	\N	\N
6	e71fjnmjz9jwezh407wb4vp3	plugin::users-permissions.auth.resetPassword	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	\N	\N	\N
8	ze3ttpuwco22xnzvksss07xt	plugin::users-permissions.auth.emailConfirmation	2025-07-11 14:34:00.639	2025-07-11 14:34:00.639	2025-07-11 14:34:00.64	\N	\N	\N
10	dhz4o3czzgvo6we1aaholqu6	api::article.article.find	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
11	vz3cveu1hkftuqyt2f5c4s1i	api::article.article.findOne	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
12	bkj4m5y50jx38bznair40aez	api::category.category.find	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
13	hmxp6lqq7q05y3vtntd5oys7	api::category.category.findOne	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
14	huyt6z79mx510ohe7mdz6i1z	api::author.author.find	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
15	z47eios8xx0yv4bp4ny91tlf	api::author.author.findOne	2025-07-11 14:34:01.281	2025-07-11 14:34:01.281	2025-07-11 14:34:01.282	\N	\N	\N
\.


--
-- TOC entry 5565 (class 0 OID 41465)
-- Dependencies: 298
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	7	2	1
6	9	2	1
7	5	2	2
8	6	2	2
9	8	2	2
10	10	2	3
11	12	2	3
12	11	2	3
13	13	2	3
14	14	2	3
15	15	2	3
\.


--
-- TOC entry 5507 (class 0 OID 41091)
-- Dependencies: 240
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	rixrl0505gr683t9avm8fgvu	Authenticated	Default role given to authenticated user.	authenticated	2025-07-11 14:34:00.61	2025-07-11 14:34:00.61	2025-07-11 14:34:00.61	\N	\N	\N
2	qbaea2azquowax9y3282cf6j	Public	Default role given to unauthenticated user.	public	2025-07-11 14:34:00.613	2025-07-11 14:34:00.613	2025-07-11 14:34:00.613	\N	\N	\N
\.


--
-- TOC entry 5509 (class 0 OID 41103)
-- Dependencies: 242
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5567 (class 0 OID 41477)
-- Dependencies: 300
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- TOC entry 5493 (class 0 OID 41003)
-- Dependencies: 226
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5555 (class 0 OID 41406)
-- Dependencies: 288
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- TOC entry 5654 (class 0 OID 0)
-- Dependencies: 251
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 228, true);


--
-- TOC entry 5655 (class 0 OID 0)
-- Dependencies: 301
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 228, true);


--
-- TOC entry 5656 (class 0 OID 0)
-- Dependencies: 255
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 5657 (class 0 OID 0)
-- Dependencies: 253
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- TOC entry 5658 (class 0 OID 0)
-- Dependencies: 303
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- TOC entry 5659 (class 0 OID 0)
-- Dependencies: 319
-- Name: analyses_labs_category_id_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.analyses_labs_category_id_lnk_id_seq', 17, true);


--
-- TOC entry 5660 (class 0 OID 0)
-- Dependencies: 317
-- Name: analyses_labs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.analyses_labs_id_seq', 16, true);


--
-- TOC entry 5661 (class 0 OID 0)
-- Dependencies: 311
-- Name: articles_autor_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_autor_lnk_id_seq', 5, true);


--
-- TOC entry 5662 (class 0 OID 0)
-- Dependencies: 313
-- Name: articles_categoria_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_categoria_lnk_id_seq', 5, true);


--
-- TOC entry 5663 (class 0 OID 0)
-- Dependencies: 243
-- Name: articles_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_cmps_id_seq', 1, false);


--
-- TOC entry 5664 (class 0 OID 0)
-- Dependencies: 245
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_id_seq', 5, true);


--
-- TOC entry 5665 (class 0 OID 0)
-- Dependencies: 247
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, true);


--
-- TOC entry 5666 (class 0 OID 0)
-- Dependencies: 249
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- TOC entry 5667 (class 0 OID 0)
-- Dependencies: 315
-- Name: categories_labs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_labs_id_seq', 4, true);


--
-- TOC entry 5668 (class 0 OID 0)
-- Dependencies: 275
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, false);


--
-- TOC entry 5669 (class 0 OID 0)
-- Dependencies: 273
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);


--
-- TOC entry 5670 (class 0 OID 0)
-- Dependencies: 271
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, false);


--
-- TOC entry 5671 (class 0 OID 0)
-- Dependencies: 269
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- TOC entry 5672 (class 0 OID 0)
-- Dependencies: 267
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);


--
-- TOC entry 5673 (class 0 OID 0)
-- Dependencies: 325
-- Name: despistajes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.despistajes_id_seq', 14, true);


--
-- TOC entry 5674 (class 0 OID 0)
-- Dependencies: 321
-- Name: especialidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.especialidades_id_seq', 15, true);


--
-- TOC entry 5675 (class 0 OID 0)
-- Dependencies: 285
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- TOC entry 5676 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_id_seq', 43, true);


--
-- TOC entry 5677 (class 0 OID 0)
-- Dependencies: 283
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 97, true);


--
-- TOC entry 5678 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);


--
-- TOC entry 5679 (class 0 OID 0)
-- Dependencies: 323
-- Name: pruebas_geneticas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pruebas_geneticas_id_seq', 20, true);


--
-- TOC entry 5680 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 5681 (class 0 OID 0)
-- Dependencies: 305
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 5682 (class 0 OID 0)
-- Dependencies: 257
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- TOC entry 5683 (class 0 OID 0)
-- Dependencies: 265
-- Name: strapi_audit_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_audit_logs_id_seq', 1, false);


--
-- TOC entry 5684 (class 0 OID 0)
-- Dependencies: 309
-- Name: strapi_audit_logs_user_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_audit_logs_user_lnk_id_seq', 1, false);


--
-- TOC entry 5685 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 49, true);


--
-- TOC entry 5686 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 27, true);


--
-- TOC entry 5687 (class 0 OID 0)
-- Dependencies: 281
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 109, true);


--
-- TOC entry 5688 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 5689 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- TOC entry 5690 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 5691 (class 0 OID 0)
-- Dependencies: 289
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 5692 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 5693 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 5694 (class 0 OID 0)
-- Dependencies: 307
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 5695 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 5696 (class 0 OID 0)
-- Dependencies: 279
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 5697 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 5698 (class 0 OID 0)
-- Dependencies: 291
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 5699 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 5700 (class 0 OID 0)
-- Dependencies: 295
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 5701 (class 0 OID 0)
-- Dependencies: 293
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 5702 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 19, true);


--
-- TOC entry 5703 (class 0 OID 0)
-- Dependencies: 297
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 19, true);


--
-- TOC entry 5704 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 5705 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 5706 (class 0 OID 0)
-- Dependencies: 299
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- TOC entry 5707 (class 0 OID 0)
-- Dependencies: 225
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- TOC entry 5708 (class 0 OID 0)
-- Dependencies: 287
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- TOC entry 5057 (class 2606 OID 41224)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5175 (class 2606 OID 41518)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5177 (class 2606 OID 41522)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5067 (class 2606 OID 41248)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5062 (class 2606 OID 41236)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5183 (class 2606 OID 41530)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5185 (class 2606 OID 41534)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5234 (class 2606 OID 49242)
-- Name: analyses_labs_category_id_lnk analyses_labs_category_id_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs_category_id_lnk
    ADD CONSTRAINT analyses_labs_category_id_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5236 (class 2606 OID 49246)
-- Name: analyses_labs_category_id_lnk analyses_labs_category_id_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs_category_id_lnk
    ADD CONSTRAINT analyses_labs_category_id_lnk_uq UNIQUE (analyses_lab_id, categories_lab_id);


--
-- TOC entry 5228 (class 2606 OID 49215)
-- Name: analyses_labs analyses_labs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs
    ADD CONSTRAINT analyses_labs_pkey PRIMARY KEY (id);


--
-- TOC entry 5210 (class 2606 OID 41989)
-- Name: articles_autor_lnk articles_autor_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_autor_lnk
    ADD CONSTRAINT articles_autor_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5212 (class 2606 OID 41993)
-- Name: articles_autor_lnk articles_autor_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_autor_lnk
    ADD CONSTRAINT articles_autor_lnk_uq UNIQUE (article_id, author_id);


--
-- TOC entry 5217 (class 2606 OID 42001)
-- Name: articles_categoria_lnk articles_categoria_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_categoria_lnk
    ADD CONSTRAINT articles_categoria_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5219 (class 2606 OID 42005)
-- Name: articles_categoria_lnk articles_categoria_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_categoria_lnk
    ADD CONSTRAINT articles_categoria_lnk_uq UNIQUE (article_id, category_id);


--
-- TOC entry 5033 (class 2606 OID 41148)
-- Name: articles_cmps articles_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 5042 (class 2606 OID 41162)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 5038 (class 2606 OID 41153)
-- Name: articles_cmps articles_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 5047 (class 2606 OID 41174)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 5223 (class 2606 OID 49191)
-- Name: categories_labs categories_labs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_labs
    ADD CONSTRAINT categories_labs_pkey PRIMARY KEY (id);


--
-- TOC entry 5052 (class 2606 OID 41186)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 5103 (class 2606 OID 41352)
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- TOC entry 5101 (class 2606 OID 41345)
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- TOC entry 5099 (class 2606 OID 41336)
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- TOC entry 5097 (class 2606 OID 41327)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 5095 (class 2606 OID 41318)
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- TOC entry 5250 (class 2606 OID 49372)
-- Name: despistajes despistajes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despistajes
    ADD CONSTRAINT despistajes_pkey PRIMARY KEY (id);


--
-- TOC entry 5240 (class 2606 OID 49293)
-- Name: especialidades especialidades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (id);


--
-- TOC entry 5120 (class 2606 OID 41399)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5122 (class 2606 OID 41403)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 4975 (class 2606 OID 40992)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 5115 (class 2606 OID 41389)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 4995 (class 2606 OID 41026)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 5245 (class 2606 OID 49346)
-- Name: pruebas_geneticas pruebas_geneticas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pruebas_geneticas
    ADD CONSTRAINT pruebas_geneticas_pkey PRIMARY KEY (id);


--
-- TOC entry 5077 (class 2606 OID 41272)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5190 (class 2606 OID 41543)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5192 (class 2606 OID 41547)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 5072 (class 2606 OID 41260)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5092 (class 2606 OID 41308)
-- Name: strapi_audit_logs strapi_audit_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs
    ADD CONSTRAINT strapi_audit_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 5203 (class 2606 OID 41567)
-- Name: strapi_audit_logs_user_lnk strapi_audit_logs_user_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs_user_lnk
    ADD CONSTRAINT strapi_audit_logs_user_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5205 (class 2606 OID 41571)
-- Name: strapi_audit_logs_user_lnk strapi_audit_logs_user_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs_user_lnk
    ADD CONSTRAINT strapi_audit_logs_user_lnk_uq UNIQUE (audit_log_id, user_id);


--
-- TOC entry 5105 (class 2606 OID 41361)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4971 (class 2606 OID 40983)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 5110 (class 2606 OID 41379)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 4969 (class 2606 OID 40974)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 4967 (class 2606 OID 40967)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5005 (class 2606 OID 41050)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5134 (class 2606 OID 41423)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5136 (class 2606 OID 41427)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 5000 (class 2606 OID 41038)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 5087 (class 2606 OID 41296)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5197 (class 2606 OID 41555)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5199 (class 2606 OID 41559)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 5082 (class 2606 OID 41284)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5107 (class 2606 OID 41370)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 5010 (class 2606 OID 41062)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 5140 (class 2606 OID 41435)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5142 (class 2606 OID 41439)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 5154 (class 2606 OID 41458)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5156 (class 2606 OID 41462)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 5015 (class 2606 OID 41074)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 5147 (class 2606 OID 41446)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5149 (class 2606 OID 41450)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 5020 (class 2606 OID 41086)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5161 (class 2606 OID 41470)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5163 (class 2606 OID 41474)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5025 (class 2606 OID 41098)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5030 (class 2606 OID 41110)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5168 (class 2606 OID 41482)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5170 (class 2606 OID 41486)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5127 (class 2606 OID 41411)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5129 (class 2606 OID 41415)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 4986 (class 2606 OID 41012)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 4988 (class 2606 OID 41014)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 4990 (class 2606 OID 41010)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 5054 (class 1259 OID 41226)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 5055 (class 1259 OID 41225)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5171 (class 1259 OID 41519)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5172 (class 1259 OID 41520)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5173 (class 1259 OID 41523)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5058 (class 1259 OID 41227)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 5064 (class 1259 OID 41250)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 5065 (class 1259 OID 41249)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5068 (class 1259 OID 41251)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 5059 (class 1259 OID 41238)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 5060 (class 1259 OID 41237)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5178 (class 1259 OID 41531)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 5179 (class 1259 OID 41532)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 5180 (class 1259 OID 41535)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 5181 (class 1259 OID 41536)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 5063 (class 1259 OID 41239)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 5230 (class 1259 OID 49243)
-- Name: analyses_labs_category_id_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_category_id_lnk_fk ON public.analyses_labs_category_id_lnk USING btree (analyses_lab_id);


--
-- TOC entry 5231 (class 1259 OID 49244)
-- Name: analyses_labs_category_id_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_category_id_lnk_ifk ON public.analyses_labs_category_id_lnk USING btree (categories_lab_id);


--
-- TOC entry 5232 (class 1259 OID 49247)
-- Name: analyses_labs_category_id_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_category_id_lnk_oifk ON public.analyses_labs_category_id_lnk USING btree (analyses_lab_ord);


--
-- TOC entry 5225 (class 1259 OID 49217)
-- Name: analyses_labs_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_created_by_id_fk ON public.analyses_labs USING btree (created_by_id);


--
-- TOC entry 5226 (class 1259 OID 49216)
-- Name: analyses_labs_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_documents_idx ON public.analyses_labs USING btree (document_id, locale, published_at);


--
-- TOC entry 5229 (class 1259 OID 49218)
-- Name: analyses_labs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX analyses_labs_updated_by_id_fk ON public.analyses_labs USING btree (updated_by_id);


--
-- TOC entry 5206 (class 1259 OID 41990)
-- Name: articles_autor_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_autor_lnk_fk ON public.articles_autor_lnk USING btree (article_id);


--
-- TOC entry 5207 (class 1259 OID 41991)
-- Name: articles_autor_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_autor_lnk_ifk ON public.articles_autor_lnk USING btree (author_id);


--
-- TOC entry 5208 (class 1259 OID 41994)
-- Name: articles_autor_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_autor_lnk_oifk ON public.articles_autor_lnk USING btree (article_ord);


--
-- TOC entry 5213 (class 1259 OID 42002)
-- Name: articles_categoria_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_categoria_lnk_fk ON public.articles_categoria_lnk USING btree (article_id);


--
-- TOC entry 5214 (class 1259 OID 42003)
-- Name: articles_categoria_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_categoria_lnk_ifk ON public.articles_categoria_lnk USING btree (category_id);


--
-- TOC entry 5215 (class 1259 OID 42006)
-- Name: articles_categoria_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_categoria_lnk_oifk ON public.articles_categoria_lnk USING btree (article_ord);


--
-- TOC entry 5034 (class 1259 OID 41150)
-- Name: articles_component_type_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_component_type_idx ON public.articles_cmps USING btree (component_type);


--
-- TOC entry 5039 (class 1259 OID 41164)
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- TOC entry 5040 (class 1259 OID 41163)
-- Name: articles_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_documents_idx ON public.articles USING btree (document_id, locale, published_at);


--
-- TOC entry 5035 (class 1259 OID 41151)
-- Name: articles_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_entity_fk ON public.articles_cmps USING btree (entity_id);


--
-- TOC entry 5036 (class 1259 OID 41149)
-- Name: articles_field_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_field_idx ON public.articles_cmps USING btree (field);


--
-- TOC entry 5043 (class 1259 OID 41165)
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- TOC entry 5044 (class 1259 OID 41176)
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- TOC entry 5045 (class 1259 OID 41175)
-- Name: authors_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX authors_documents_idx ON public.authors USING btree (document_id, locale, published_at);


--
-- TOC entry 5048 (class 1259 OID 41177)
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- TOC entry 5049 (class 1259 OID 41188)
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- TOC entry 5050 (class 1259 OID 41187)
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- TOC entry 5220 (class 1259 OID 49193)
-- Name: categories_labs_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_labs_created_by_id_fk ON public.categories_labs USING btree (created_by_id);


--
-- TOC entry 5221 (class 1259 OID 49192)
-- Name: categories_labs_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_labs_documents_idx ON public.categories_labs USING btree (document_id, locale, published_at);


--
-- TOC entry 5224 (class 1259 OID 49194)
-- Name: categories_labs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_labs_updated_by_id_fk ON public.categories_labs USING btree (updated_by_id);


--
-- TOC entry 5053 (class 1259 OID 41189)
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- TOC entry 5247 (class 1259 OID 49374)
-- Name: despistajes_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX despistajes_created_by_id_fk ON public.despistajes USING btree (created_by_id);


--
-- TOC entry 5248 (class 1259 OID 49373)
-- Name: despistajes_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX despistajes_documents_idx ON public.despistajes USING btree (document_id, locale, published_at);


--
-- TOC entry 5251 (class 1259 OID 49375)
-- Name: despistajes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX despistajes_updated_by_id_fk ON public.despistajes USING btree (updated_by_id);


--
-- TOC entry 5237 (class 1259 OID 49295)
-- Name: especialidades_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX especialidades_created_by_id_fk ON public.especialidades USING btree (created_by_id);


--
-- TOC entry 5238 (class 1259 OID 49294)
-- Name: especialidades_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX especialidades_documents_idx ON public.especialidades USING btree (document_id, locale, published_at);


--
-- TOC entry 5241 (class 1259 OID 49296)
-- Name: especialidades_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX especialidades_updated_by_id_fk ON public.especialidades USING btree (updated_by_id);


--
-- TOC entry 4972 (class 1259 OID 41000)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 4973 (class 1259 OID 40999)
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- TOC entry 5116 (class 1259 OID 41400)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- TOC entry 5117 (class 1259 OID 41401)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 5118 (class 1259 OID 41404)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 5111 (class 1259 OID 41390)
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- TOC entry 5112 (class 1259 OID 41392)
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- TOC entry 5113 (class 1259 OID 41391)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- TOC entry 4976 (class 1259 OID 41001)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 4992 (class 1259 OID 41028)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 4993 (class 1259 OID 41027)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 4996 (class 1259 OID 41029)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 5242 (class 1259 OID 49348)
-- Name: pruebas_geneticas_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pruebas_geneticas_created_by_id_fk ON public.pruebas_geneticas USING btree (created_by_id);


--
-- TOC entry 5243 (class 1259 OID 49347)
-- Name: pruebas_geneticas_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pruebas_geneticas_documents_idx ON public.pruebas_geneticas USING btree (document_id, locale, published_at);


--
-- TOC entry 5246 (class 1259 OID 49349)
-- Name: pruebas_geneticas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pruebas_geneticas_updated_by_id_fk ON public.pruebas_geneticas USING btree (updated_by_id);


--
-- TOC entry 5074 (class 1259 OID 41274)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 5075 (class 1259 OID 41273)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5186 (class 1259 OID 41544)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 5187 (class 1259 OID 41545)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 5188 (class 1259 OID 41548)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 5078 (class 1259 OID 41275)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5069 (class 1259 OID 41262)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 5070 (class 1259 OID 41261)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5073 (class 1259 OID 41263)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 5089 (class 1259 OID 41310)
-- Name: strapi_audit_logs_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_audit_logs_created_by_id_fk ON public.strapi_audit_logs USING btree (created_by_id);


--
-- TOC entry 5090 (class 1259 OID 41309)
-- Name: strapi_audit_logs_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_audit_logs_documents_idx ON public.strapi_audit_logs USING btree (document_id, locale, published_at);


--
-- TOC entry 5093 (class 1259 OID 41311)
-- Name: strapi_audit_logs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_audit_logs_updated_by_id_fk ON public.strapi_audit_logs USING btree (updated_by_id);


--
-- TOC entry 5200 (class 1259 OID 41568)
-- Name: strapi_audit_logs_user_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_audit_logs_user_lnk_fk ON public.strapi_audit_logs_user_lnk USING btree (audit_log_id);


--
-- TOC entry 5201 (class 1259 OID 41569)
-- Name: strapi_audit_logs_user_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_audit_logs_user_lnk_ifk ON public.strapi_audit_logs_user_lnk USING btree (user_id);


--
-- TOC entry 5108 (class 1259 OID 41380)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 5002 (class 1259 OID 41052)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 5003 (class 1259 OID 41051)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 5130 (class 1259 OID 41424)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 5131 (class 1259 OID 41425)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 5132 (class 1259 OID 41428)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 5006 (class 1259 OID 41053)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 4997 (class 1259 OID 41040)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 4998 (class 1259 OID 41039)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 5001 (class 1259 OID 41041)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 5084 (class 1259 OID 41298)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 5085 (class 1259 OID 41297)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5193 (class 1259 OID 41556)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 5194 (class 1259 OID 41557)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 5195 (class 1259 OID 41560)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 5088 (class 1259 OID 41299)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5079 (class 1259 OID 41286)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 5080 (class 1259 OID 41285)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5083 (class 1259 OID 41287)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 5007 (class 1259 OID 41064)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 5008 (class 1259 OID 41063)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 5137 (class 1259 OID 41436)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 5138 (class 1259 OID 41437)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5012 (class 1259 OID 41076)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 5013 (class 1259 OID 41075)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 5150 (class 1259 OID 41459)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5151 (class 1259 OID 41460)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 5152 (class 1259 OID 41463)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 5016 (class 1259 OID 41077)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 5143 (class 1259 OID 41447)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5144 (class 1259 OID 41448)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 5145 (class 1259 OID 41451)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 5011 (class 1259 OID 41065)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 5017 (class 1259 OID 41088)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 5018 (class 1259 OID 41087)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5157 (class 1259 OID 41471)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5158 (class 1259 OID 41472)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5159 (class 1259 OID 41475)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5021 (class 1259 OID 41089)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 5022 (class 1259 OID 41100)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 5023 (class 1259 OID 41099)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5026 (class 1259 OID 41101)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 5027 (class 1259 OID 41112)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 5028 (class 1259 OID 41111)
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5164 (class 1259 OID 41483)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 5165 (class 1259 OID 41484)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 5166 (class 1259 OID 41487)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 5031 (class 1259 OID 41113)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 4977 (class 1259 OID 40994)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 4978 (class 1259 OID 40998)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 4979 (class 1259 OID 40993)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 4980 (class 1259 OID 40996)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 4981 (class 1259 OID 40997)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 4982 (class 1259 OID 40995)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 4983 (class 1259 OID 41016)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 4984 (class 1259 OID 41015)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 5123 (class 1259 OID 41412)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 5124 (class 1259 OID 41413)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 5125 (class 1259 OID 41416)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 4991 (class 1259 OID 41017)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 5279 (class 2606 OID 41737)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5313 (class 2606 OID 41927)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5314 (class 2606 OID 41932)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5280 (class 2606 OID 41742)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5283 (class 2606 OID 41757)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5284 (class 2606 OID 41762)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5281 (class 2606 OID 41747)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5315 (class 2606 OID 41937)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5316 (class 2606 OID 41942)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5282 (class 2606 OID 41752)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5331 (class 2606 OID 49248)
-- Name: analyses_labs_category_id_lnk analyses_labs_category_id_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs_category_id_lnk
    ADD CONSTRAINT analyses_labs_category_id_lnk_fk FOREIGN KEY (analyses_lab_id) REFERENCES public.analyses_labs(id) ON DELETE CASCADE;


--
-- TOC entry 5332 (class 2606 OID 49253)
-- Name: analyses_labs_category_id_lnk analyses_labs_category_id_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs_category_id_lnk
    ADD CONSTRAINT analyses_labs_category_id_lnk_ifk FOREIGN KEY (categories_lab_id) REFERENCES public.categories_labs(id) ON DELETE CASCADE;


--
-- TOC entry 5329 (class 2606 OID 49219)
-- Name: analyses_labs analyses_labs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs
    ADD CONSTRAINT analyses_labs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5330 (class 2606 OID 49224)
-- Name: analyses_labs analyses_labs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.analyses_labs
    ADD CONSTRAINT analyses_labs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5323 (class 2606 OID 42007)
-- Name: articles_autor_lnk articles_autor_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_autor_lnk
    ADD CONSTRAINT articles_autor_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- TOC entry 5324 (class 2606 OID 42012)
-- Name: articles_autor_lnk articles_autor_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_autor_lnk
    ADD CONSTRAINT articles_autor_lnk_ifk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- TOC entry 5325 (class 2606 OID 42017)
-- Name: articles_categoria_lnk articles_categoria_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_categoria_lnk
    ADD CONSTRAINT articles_categoria_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- TOC entry 5326 (class 2606 OID 42022)
-- Name: articles_categoria_lnk articles_categoria_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_categoria_lnk
    ADD CONSTRAINT articles_categoria_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 5273 (class 2606 OID 41692)
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5272 (class 2606 OID 41687)
-- Name: articles_cmps articles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- TOC entry 5274 (class 2606 OID 41697)
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5275 (class 2606 OID 41702)
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5276 (class 2606 OID 41707)
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5277 (class 2606 OID 41712)
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5327 (class 2606 OID 49195)
-- Name: categories_labs categories_labs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_labs
    ADD CONSTRAINT categories_labs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5328 (class 2606 OID 49200)
-- Name: categories_labs categories_labs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_labs
    ADD CONSTRAINT categories_labs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5278 (class 2606 OID 41717)
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5337 (class 2606 OID 49376)
-- Name: despistajes despistajes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despistajes
    ADD CONSTRAINT despistajes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5338 (class 2606 OID 49381)
-- Name: despistajes despistajes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.despistajes
    ADD CONSTRAINT despistajes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5333 (class 2606 OID 49297)
-- Name: especialidades especialidades_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5334 (class 2606 OID 49302)
-- Name: especialidades especialidades_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5252 (class 2606 OID 41572)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5297 (class 2606 OID 41827)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5298 (class 2606 OID 41832)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5296 (class 2606 OID 41822)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 5253 (class 2606 OID 41577)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5256 (class 2606 OID 41592)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5257 (class 2606 OID 41597)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5335 (class 2606 OID 49350)
-- Name: pruebas_geneticas pruebas_geneticas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pruebas_geneticas
    ADD CONSTRAINT pruebas_geneticas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5336 (class 2606 OID 49355)
-- Name: pruebas_geneticas pruebas_geneticas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pruebas_geneticas
    ADD CONSTRAINT pruebas_geneticas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5287 (class 2606 OID 41777)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5317 (class 2606 OID 41947)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5318 (class 2606 OID 41952)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5288 (class 2606 OID 41782)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5285 (class 2606 OID 41767)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5286 (class 2606 OID 41772)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5293 (class 2606 OID 41807)
-- Name: strapi_audit_logs strapi_audit_logs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs
    ADD CONSTRAINT strapi_audit_logs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5294 (class 2606 OID 41812)
-- Name: strapi_audit_logs strapi_audit_logs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs
    ADD CONSTRAINT strapi_audit_logs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5321 (class 2606 OID 41967)
-- Name: strapi_audit_logs_user_lnk strapi_audit_logs_user_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs_user_lnk
    ADD CONSTRAINT strapi_audit_logs_user_lnk_fk FOREIGN KEY (audit_log_id) REFERENCES public.strapi_audit_logs(id) ON DELETE CASCADE;


--
-- TOC entry 5322 (class 2606 OID 41972)
-- Name: strapi_audit_logs_user_lnk strapi_audit_logs_user_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_audit_logs_user_lnk
    ADD CONSTRAINT strapi_audit_logs_user_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5295 (class 2606 OID 41817)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5260 (class 2606 OID 41612)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5301 (class 2606 OID 41847)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 5302 (class 2606 OID 41852)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 5261 (class 2606 OID 41617)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5258 (class 2606 OID 41602)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5259 (class 2606 OID 41607)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5291 (class 2606 OID 41797)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5319 (class 2606 OID 41957)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5320 (class 2606 OID 41962)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5292 (class 2606 OID 41802)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5289 (class 2606 OID 41787)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5290 (class 2606 OID 41792)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5262 (class 2606 OID 41622)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5303 (class 2606 OID 41857)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5304 (class 2606 OID 41862)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5264 (class 2606 OID 41632)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5307 (class 2606 OID 41877)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5308 (class 2606 OID 41882)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5265 (class 2606 OID 41637)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5305 (class 2606 OID 41867)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5306 (class 2606 OID 41872)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5263 (class 2606 OID 41627)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5266 (class 2606 OID 41642)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5309 (class 2606 OID 41887)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5310 (class 2606 OID 41892)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5267 (class 2606 OID 41647)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5268 (class 2606 OID 41652)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5269 (class 2606 OID 41657)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5270 (class 2606 OID 41662)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5311 (class 2606 OID 41897)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5312 (class 2606 OID 41902)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5271 (class 2606 OID 41667)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5254 (class 2606 OID 41582)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5299 (class 2606 OID 41837)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5300 (class 2606 OID 41842)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5255 (class 2606 OID 41587)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2025-08-14 14:23:18

--
-- PostgreSQL database dump complete
--

