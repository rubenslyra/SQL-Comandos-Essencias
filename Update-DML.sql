-- UTILIZANDO O COMANDO UPDATE

-- Atualizando um campo apenas
UPDATE alunos 
	SET Email= 'aluno6.1@email.com'
	WHERE idAluno=9;

-- Atualizando múltiplos campos

UPDATE alunos 
	SET 				
        Nome= 'Aluno Exemplo 6.1',
        Email ='aluno6.2@email.com'
	WHERE idAluno=9;





UPDATE tbl_nome 
	SET coluna1= 'valor1.2'
	WHERE idAlu=1;
    
SELECT * FROM alunos;


