-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
  id integer NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  fullname character varying(255),
  email character varying(255),
  password character varying(255),
  isroot boolean,
  email_token character varying(255),
  email_token_expiratedat timestamp without time zone,
  password_token character varying(255),
  password_token_expiratedat timestamp without time zone,
  email_validate timestamp without time zone,
  createdat timestamp without time zone,
  updatedat timestamp without time zone,
  deletedat timestamp without time zone,
  CONSTRAINT users_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.users
  OWNER TO postgres;
