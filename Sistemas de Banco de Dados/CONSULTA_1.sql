--Consultas--

--Consulta 1--

-- (Inicial)

SELECT nome_mus AS Nome_do_museu, nome_col AS Nome_coleção, tipo_col AS Tipo_coleção, idioma AS Idioma, preco_ent AS Preço_entrada
FROM museu AS m, colecao AS c 
WHERE tipo_col ILIKE 'b%' AND m.cod_mus = c.cod_mus;

-- (Otimizada)
SELECT m.cod_mus AS Codigo_do_museu, nome_col AS Nome_coleção, tipo_col AS Tipo_coleção, idioma AS Idioma, preco_ent AS Preço_entrada
FROM colecao as c LEFT OUTER JOIN museu as m ON (tipo_col LIKE 'b%')
WHERE m.cod_mus = c.cod_mus;

--Índice do tipo de coleção
CREATE INDEX IX_tipo_col
ON COLECAO(tipo_col);

--Índice de código do museu e código de coleção
CREATE INDEX IX_cod_mus_cod_col
ON COLECAO(cod_mus, cod_col);
