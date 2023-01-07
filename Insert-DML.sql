-- Utilização do comando INSERT 

-- Um único registro
INSERT INTO professores(RF, Nome, Email)
			 VALUES (1,'Professor Exemplo 1', 'prof1@email.com'); 
             
-- Múltiplos registros            
 INSERT INTO professores(RF, Nome, Email)
	 VALUES 
	 (2,'Professor Exemplo 2', 'prof2@email.com'),
	 (3,'Professor Exemplo 3', 'prof3@email.com'),
	 (4,'Professor Exemplo 4', 'prof4@email.com'),
	 (5,'Professor Exemplo 5', 'prof5@email.com'),
	 (6,'Professor Exemplo 6', 'prof6@email.com'); 
             
-- Múltiplos registros            
 INSERT INTO alunos(MAT, Nome, Email)
	 VALUES 
	 (1,'Aluno Exemplo 1', 'aluno1@email.com'),
     (2,'Aluno Exemplo 2', 'aluno2@email.com'),
     (3,'Aluno Exemplo 3', 'aluno3@email.com'),
     (4,'Aluno Exemplo 4', 'aluno4@email.com'),
     (5,'Aluno Exemplo 5', 'aluno5@email.com'),
     (6,'Aluno Exemplo 6', 'aluno6@email.com');

     
SELECT * FROM db_escola.alunos; 
 
 -- O VALOR NUMÉRICO NÃO PRECISA ESTAR ENTRE " " 
 
-- ANTES DE INSERIR DADOS, VAMOS CONFERIR A ESTRUTURA:
-- É IMPORTANTE ESTARMOS ATENTOS AO TIPO DE DADO DA COLUNA

/**
describe professores;

idProfessor	int(11)	NO	PRI		auto_increment
RF	int(4) unsigned zerofill	NO			
Nome	varchar(250)	NO			
Email	varchar(120)	NO	UNI		

*/
