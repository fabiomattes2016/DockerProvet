-- Database: provet

-- CREATE DATABASE provet
--     WITH 
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;

-- Table: public.__EFMigrationsHistory

CREATE TABLE IF NOT EXISTS public."__EFMigrationsHistory"
(
    "MigrationId" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    "ProductVersion" character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
)

TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."__EFMigrationsHistory"
    OWNER to postgres;


-- Table: public.Users

CREATE TABLE IF NOT EXISTS public."Users"
(
    "Id" uuid NOT NULL,
    "Name" text COLLATE pg_catalog."default" NOT NULL,
    "Username" text COLLATE pg_catalog."default" NOT NULL,
    "Password" text COLLATE pg_catalog."default" NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    CONSTRAINT "PK_Users" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Users"
    OWNER to postgres;

INSERT INTO public."Users" ("Id","Name","Username","Password","CreatedAt","UpdatedAt") VALUES
	 ('21e21785-af09-444b-b633-0430f230a3b0','Administrador do Sistema','admin','$2a$11$od1VYBBXtxfmW2e1lVBySus59hfeHWqUTwNR1tu2cjAxKPXUg09MG','2022-03-27 15:26:46.567742-03',NULL);

CREATE TABLE IF NOT EXISTS public."Clientes"
(
    "Id" uuid NOT NULL,
    "NomeRazaoSocial" text COLLATE pg_catalog."default" NOT NULL,
    "CpfCnpj" text COLLATE pg_catalog."default",
    "RgInscEst" text COLLATE pg_catalog."default",
    "Logradouro" text COLLATE pg_catalog."default" NOT NULL,
    "Numero" text COLLATE pg_catalog."default",
    "Complemento" text COLLATE pg_catalog."default",
    "Bairro" text COLLATE pg_catalog."default" NOT NULL,
    "Cidade" text COLLATE pg_catalog."default" NOT NULL,
    "Cep" text COLLATE pg_catalog."default" NOT NULL,
    "Estado" text COLLATE pg_catalog."default" NOT NULL,
    "Telefone" text COLLATE pg_catalog."default",
    "Celular" text COLLATE pg_catalog."default" NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    CONSTRAINT "PK_Clientes" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Clientes"
    OWNER to postgres;