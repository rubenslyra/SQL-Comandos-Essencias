/** 
O comando SELECT foi inserido e apresentado junto ao grupo DML.
Portanto, vamos ao próximo grupo:
DCL – Data Control Language (Linguagem de Controle de Dados)

Vamos criar três usários:
- aluno: pode selecionar as informações das tabelas disciplina e avaliacoes
- professor: pode selecionar, inserir, atualizar e deletar informações na tabela avaliacoes;
			 pode selecionar dados da tabela disciplina;
- admin (secretaria):  todos os privilegios;       
*/

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'Secret#1234';
GRANT ALL privileges ON db_escola.* TO 'admin'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'admin'@'localhost';

-- aluno 
CREATE USER 'aluno'@'localhost' IDENTIFIED BY 'Secret#1234';
GRANT SELECT ON db_escola.disciplina TO 'aluno'@'localhost';
GRANT SELECT ON db_escola.avaliacoes TO 'aluno'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'aluno'@'localhost';

-- professor
CREATE USER 'professor'@'localhost' IDENTIFIED BY 'Secret#1234';
GRANT SELECT ON db_escola.disciplina TO 'professor'@'localhost';
GRANT SELECT, UPDATE, INSERT, DELETE ON db_escola.avaliacoes TO 'professor'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'professor'@'localhost';

-- Permissões removidas
REVOKE UPDATE, INSERT, DELETE ON db_escola.avaliacoes FROM 'professor'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'professor'@'localhost';

-- Para finalizar, vamos alterar a senha do usuário ADMIN
ALTER USER  'admin'@'localhost' 
	IDENTIFIED BY 'Secret#1234';
    
-- Remover usuário
DROP USER 'admin'@'localhost';    

SELECT session_user();


-- Vamos verificar quais usuarios existem e estão ativos no momento:
SELECT USER();
SELECT session_user();

-- listas todos os usuários:
SELECT user FROM mysql.user;
