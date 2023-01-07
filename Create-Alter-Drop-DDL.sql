CREATE
CREATE DATABASE db_escola;
USE db_escola;

— Agora, vamos fazer a tabela professores:

CREATE TABLE professores (
idProfessor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(250) NOT NULL,
Email VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE disciplina (
idDisciplina INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(250) NOT NULL,
Resumo SMALLINT NOT NULL
);

CREATE TABLE Secretaria (
idFuncionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(250) NOT NULL,
Email VARCHAR(120) NOT NULL UNIQUE
);

ALTER
ALTER TABLE alunos
ADD Matricula INT(4) ZEROFILL UNSIGNED NOT NULL;

ALTER TABLE professores
ADD RegFuncionario INT(4) ZEROFILL UNSIGNED NOT NULL;

— Adicionar campo
ALTER TABLE professores
ADD Testes INT;

— Modificar campo específico
ALTER TABLE professores
MODIFY COLUMN RegFuncionario INT(11) ZEROFILL UNSIGNED NOT NULL;

— CHANGE para modificar a coluna
ALTER TABLE professores
CHANGE COLUMN RegFuncionario RegFuncionario INT(4) ZEROFILL UNSIGNED NOT NULL AFTER idProfessor;

ALTER TABLE alunos
CHANGE COLUMN Matricula Matricula INT(4) ZEROFILL UNSIGNED NOT NULL AFTER idAluno;

— Renomar um campo
ALTER TABLE professores
RENAME COLUMN RegFuncionario TO RF; -- no MySQL, precisamos acrescentar o TO entre o novo nome e o nome anterior

— Remover um campo
ALTER TABLE professores
DROP Testes;

ALTER TABLE alunos
RENAME COLUMN Matricula TO MAT;

— Modificar campo específico
ALTER TABLE professores
MODIFY COLUMN RF INT(4) ZEROFILL UNSIGNED NOT NULL;

DROP
DROP DATABASE db_drop;
— Remover o banco
— DROP para remover o banco de dados.
— C U I D A D O C O M I S S O!!!
DROP TABLE tbl_drop;
— Remover a tabela

TRUNCATE TABLE alunos;
— Remover os dados preservando a tabela

— Para adiantar, vamos criar o banco e a tabela para o comando DROP

CREATE DATABASE db_drop;
USE db_drop;
CREATE TABLE tbl_drop(
id int,
nome varchar(2)
);

— Dois cliques para selecionar o banco.

/**
Podemos usar código agora, mas como estamos aprendendo a usar a ferramenta e a linguagem, vamos usar a própira ferramenta
para criar tabelas. Em seguida, vamos armazenar os comandos gerados pelo Workbench a cada script construído.

CREATE TABLE tbl_nome(
atributo tipo restrições,
atributo tipo restrições
);

*/

— usei CTRL + ENTER com o cursor posicionado na linha de comando

— dois traços para comentários de linha

/**
Para comentários de blocos
*/
