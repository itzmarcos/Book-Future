CREATE TABLE IF NOT EXISTS "Produto" (
	"id" int NOT NULL UNIQUE,
	"categoria" int NOT NULL UNIQUE,
	"titulo" string NOT NULL,
	"autor" string NOT NULL,
	"ano_versao" int NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Categoria" (
	"id" int NOT NULL UNIQUE,
	"genero" string NOT NULL,
	"classificacao" int NOT NULL,
	"tipo" int NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Usuario" (
	"id" int NOT NULL UNIQUE,
	"nome" string NOT NULL,
	"email" string NOT NULL,
	"data_nasc" date NOT NULL,
	"senha" int NOT NULL,
	PRIMARY KEY ("id")
);

ALTER TABLE "Produto" ADD CONSTRAINT "Produto_fk1" FOREIGN KEY ("categoria") REFERENCES "Categoria"("id");

