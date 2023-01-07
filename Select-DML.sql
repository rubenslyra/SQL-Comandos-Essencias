-- UTILIZANDO O COMANDO SELECT

-- Ainda temos as combinações de <>(diferente), <=. >=, JOINS mas faremos isso no início do projeto com PHP e C#


-- SELECIONADO E ORDENANDO POR: ASCENDENTE E DESCENDENTE

SELECT Nome FROM db_escola.alunos ORDER BY idAluno ASC;

SELECT Nome FROM db_escola.alunos ORDER BY idAluno DESC;

SELECT Nome FROM db_escola.alunos;



SELECT * FROM db_escola.alunos;

-- Vamos procurar um nome, mas não temos ideia do nome completo. 
-- Então, podemos usar o LIKE para buscar com mais precisão. 
-- Cuidado com o uso do LIKE em produção! Pode consumir muita memória.
-- Por enqunato, use a vontade.


-- OBS: quebramos a linha com múltiplos comandos para manter o código
-- organizado e legível
-- AS (selecione como "apelido") AS - alias para a nova coluna da consulta

SELECT 
	*
FROM 
	db_escola.alunos  
WHERE idAluno=5
 LIKE "%mp%";





SELECT * FROM db_escola.alunos, db_escola.professores;


-- Primeiro filtro: WHERE com AND, um dos operadores lógicos presentes na linguagem
SELECT 
	db_escola.alunos.Nome, db_escola.alunos.Email,
    db_escola.professores.Nome, db_escola.professores.Email
  FROM db_escola.alunos, db_escola.professores
  WHERE idAluno=5 AND idProfessor=5;


-- agora, vamos pegar somento os campos nome e email de cada tabela


-- Vamos tentar um select com dados das tabelas alunos e professores



-- Selecione tudo da tabela ?qualquer?

-- LEMBRANDO QUE O ASTERÍSCO FAZ REFERÊNCIA A = all // 







-- Agora sim, um tempo maior dedicado ao uso do SELECT com WHERE, LIKE, ORDER BY...

