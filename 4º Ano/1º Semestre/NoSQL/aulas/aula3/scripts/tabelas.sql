CREATE TABLE AUTOR (
    "ID_AUTOR" NUMBER(3,0) NOT NULL ENABLE,
    "NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONSTRAINT "AUTOR_PK" PRIMARY KEY ("ID_AUTOR")
);

CREATE TABLE EDITORA (
    "ID_EDITORA" NUMBER(3,0) NOT NULL ENABLE,
    "NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONSTRAINT "EDITORA_PK" PRIMARY KEY ("ID_EDITORA")
);

CREATE TABLE GENERO (
    "ID_GENERO" NUMBER(3,0) NOT NULL ENABLE,
    "NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONSTRAINT "GENERO_PK" PRIMARY KEY ("ID_GENERO")
);

CREATE TABLE SUPORTE (
    "ID_SUPORTE" NUMBER(3,0) NOT NULL ENABLE,
    "NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONSTRAINT "SUPORTE_PK" PRIMARY KEY ("ID_SUPORTE")
);

CREATE TABLE TITULO (
    "ID_TITULO" NUMBER(3,0) NOT NULL ENABLE,
    "TITULO" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    "PRECO" NUMBER(5,2) NOT NULL ENABLE,
    "DATA_COMPRA" DATE NOT NULL ENABLE,
    "ID_EDITORA" NUMBER(3,0) NOT NULL ENABLE,
    "ID_SUPORTE" NUMBER(3,0) NOT NULL ENABLE,
    "ID_GENERO" NUMBER(3,0) NOT NULL ENABLE,
    "ID_AUTOR" NUMBER(3,0) NOT NULL ENABLE,
    CONSTRAINT "TITULO_PK" PRIMARY KEY ("ID_TITULO"),
    CONSTRAINT "EDITORA_FK" FOREIGN KEY ("ID_EDITORA") REFERENCES EDITORA(ID_EDITORA),
    CONSTRAINT "SUPORTE_FK" FOREIGN KEY ("ID_SUPORTE") REFERENCES SUPORTE(ID_SUPORTE),
    CONSTRAINT "GENERO_FK" FOREIGN KEY ("ID_GENERO") REFERENCES GENERO(id_GENERO),
    CONSTRAINT "AUTOR_FK" FOREIGN KEY ("ID_AUTOR") REFERENCES AUTOR(ID_AUTOR)
);

CREATE TABLE MUSICA (
    "ID_MUSICA" NUMBER(3,0) NOT NULL ENABLE,
    "NOME" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    "ID_AUTOR" NUMBER(3,0) NOT NULL ENABLE,
    "ID_TITULO" NUMBER(3,0) NOT NULL ENABLE,
    CONSTRAINT "MUSICA_PK" PRIMARY KEY ("ID_MUSICA"),
    CONSTRAINT "AUTOR2_FK" FOREIGN KEY ("ID_AUTOR") REFERENCES AUTOR(ID_AUTOR),
    CONSTRAINT "TITULO2_FK" FOREIGN KEY ("ID_TITULO") REFERENCES TITULO(ID_TITULO)
);

CREATE TABLE REVIEW (
    "ID_REVIEW" NUMBER(3,0) NOT NULL ENABLE,
    "ID_TITULO" NUMBER(3,0) NOT NULL ENABLE,
    "DATA_REVIEW" DATE NOT NULL ENABLE,
    "CONTEUDO" VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONSTRAINT "REVIEW_PK" PRIMARY KEY ("ID_REVIEW"),
    CONSTRAINT "TITULO_FK" FOREIGN KEY ("ID_TITULO") REFERENCES TITULO(ID_TITULO)
);
