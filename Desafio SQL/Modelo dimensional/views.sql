CREATE VIEW vw_dim_cliente AS
SELECT 
    c.idCliente,
    c.nomeCliente,
    ci.nomeCidade,
    e.nomeEstado,
    p.nomePais
FROM tb_cliente_nor c
JOIN tb_cidade ci ON c.idCidade = ci.idCidade
JOIN tb_estado e ON ci.idEstado = e.idEstado
JOIN tb_pais p ON e.idPais = p.idPais;

CREATE VIEW vw_dim_carro AS
SELECT 
    ca.idCarro,
    mo.nomeModelo,
    mo.ano,
    ma.nomeMarca,
    co.tipoCombustivel,
    ca.kmCarro,
    ca.chassiCarro
FROM tb_carro_nor ca
JOIN tb_modelo mo ON ca.idModelo = mo.idModelo
JOIN tb_marca ma ON mo.idMarca = ma.idMarca
JOIN tb_combustivel co ON mo.combCarro = co.idCombustivel;

CREATE VIEW vw_dim_tempo AS
SELECT 
    idTempo,
    dataHoraCompleta,
    dataCompleta,
    horaCompleta,
    dia
    mes
    ano
    hora
FROM tb_tempo;

CREATE VIEW vw_dim_vendedor AS
SELECT 
    idVendedor,
    nomeVendedor
    estadoVendedor
    sexoVendedor
FROM tb_vendedor;

CREATE VIEW vw_fato_locacao AS
SELECT 
    l.idLocacao,
    l.datalocacao,
    l.horaLocacao,
    l.qtdDiaria,
    l.vlrDiaria,
    l.dataEntrega
    l.horaEntrega,
    l.cliente
    l.carro,
    l.vendedor
FROM tb_locacao_nor l;

