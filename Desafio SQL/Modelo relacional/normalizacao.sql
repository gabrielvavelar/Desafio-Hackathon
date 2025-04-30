CREATE TABLE tb_pais (
    idPais INTEGER PRIMARY KEY,
    nomePais TEXT NOT NULL
);

CREATE TABLE tb_estado (
    idEstado INTEGER PRIMARY KEY,
    nomeEstado TEXT NOT NULL,
    idPais INTEGER,
    FOREIGN KEY (idPais) REFERENCES tb_pais(idPais)
);

CREATE TABLE tb_cidade (
    idCidade INTEGER PRIMARY KEY,
    nomeCidade TEXT NOT NULL,
    idEstado INTEGER,
    FOREIGN KEY (idEstado) REFERENCES tb_estado(idEstado)
);

CREATE TABLE tb_cliente_nor (
    idCliente INTEGER PRIMARY KEY,
    nomeCliente TEXT NOT NULL,
    idCidade INTEGER,
    FOREIGN KEY (idCidade) REFERENCES tb_cidade(idCidade)
);

CREATE TABLE tb_marca (
    idMarca INTEGER PRIMARY KEY,
    nomeMarca TEXT NOT NULL
);

CREATE TABLE tb_modelo (
    idModelo INTEGER PRIMARY KEY,
    nomeModelo TEXT NOT NULL,
    idMarca INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    combCarro INTEGER,
    FOREIGN KEY (idMarca) REFERENCES tb_marca(idMarca),
    FOREIGN KEY (combCarro) REFERENCES tb_combustivel(idCombustivel),
    UNIQUE (nomeModelo, idMarca, ano)
);

CREATE TABLE tb_carro_nor (
    idCarro INTEGER PRIMARY KEY,
    kmCarro INTEGER NOT NULL,
    chassiCarro TEXT NOT NULL, 
    idModelo INTEGER,
    idCliente INTEGER,
    FOREIGN KEY (idModelo) REFERENCES tb_modelo(idModelo),
    FOREIGN KEY (idCliente) REFERENCES tb_cliente_nor(idCliente)
);
