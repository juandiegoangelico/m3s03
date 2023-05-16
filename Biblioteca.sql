--------------------------
-- Criar Banco de Dados --
--------------------------

CREATE DATABASE biblioteca_revisao;


-------------------
-- Criar Tabelas --
-------------------

CREATE TABLE autor (
  autor_id bigserial PRIMARY KEY,
  nome varchar(20) NOT NULL,
  sobrenome varchar(50) NOT NULL
);

CREATE TABLE usuario (
  usuario_id bigserial PRIMARY KEY,
  nome varchar(120) NOT NULL,
  documento varchar(20) NOT NULL,
  email varchar(120) NOT NULL,
  telefone varchar(16),
  bloqueado boolean NOT NULL DEFAULT false
);

CREATE TABLE livro (
  livro_id bigserial PRIMARY KEY,
  titulo varchar(50) NOT NULL,
  subtitulo varchar(150),
  autor_id bigint NOT NULL REFERENCES autor(autor_id),
  categoria varchar(20) NOT NULL,
  editora varchar(20) NOT NULL,
  exemplares int NOT NULL DEFAULT 0,
  disponibilidade boolean NOT NULL DEFAULT false
);








