-- PARA FINALIZAR, O DELETE

-- por padrão, antes de deletar, vamos selecionar o item:

SELECT * FROM alunos;

-- Se o editor não permitir a ação, basta desmarcar a opção Safe Update e reiniciar o Editor

-- Para deletar todos os registros, preservando a tabela
DELETE FROM db_escola.alunos;


-- Para deletar um arquivo específico
DELETE FROM db_escola.alunos
WHERE idAluno=9;
