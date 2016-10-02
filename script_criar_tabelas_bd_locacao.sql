DROP TABLE IF EXISTS categoria CASCADE;
CREATE TABLE categoria
(
  cod_categoria serial NOT NULL,
  dsc_categoria character varying(45) NOT NULL,
  vl_categoria numeric(10,2) NOT NULL,
  CONSTRAINT categoria_pkey PRIMARY KEY (cod_categoria)
);

DROP TABLE IF EXISTS clientes CASCADE;

CREATE TABLE IF NOT EXISTS clientes 
(
  cod_cliente integer NOT NULL,
  nome_cliente character varying(45),
  dat_nascimento date,
  sexo character(1),
  CONSTRAINT clientes_pkey PRIMARY KEY (cod_cliente)
);

DROP TABLE IF EXISTS filmes CASCADE;

CREATE TABLE IF NOT EXISTS filmes
(
  cod_filme serial NOT NULL,
  nome_filme character varying(50) NOT NULL,
  dt_compra date,
  vl_filme numeric(10,2),
  ind_pais integer,
  cod_categoria integer NOT NULL,
  CONSTRAINT filmes_pkey PRIMARY KEY (cod_filme),
  CONSTRAINT chave_filmes_categoria FOREIGN KEY (cod_categoria)
      REFERENCES categoria (cod_categoria) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


DROP TABLE IF EXISTS locacao CASCADE;  

CREATE TABLE IF NOT EXISTS locacao 
(
  cod_locacao serial NOT NULL,
  dat_inilocacao date NOT NULL,
  dat_fimlocacao date,
  vl_multa double precision,
  cod_filme integer NOT NULL,
  cod_cliente integer NOT NULL,
  CONSTRAINT locacao_pkey PRIMARY KEY (cod_locacao),
  CONSTRAINT chave_locacao_clientes FOREIGN KEY (cod_cliente)
      REFERENCES clientes (cod_cliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT chave_locacao_filmes FOREIGN KEY (cod_filme)
      REFERENCES filmes (cod_filme) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);