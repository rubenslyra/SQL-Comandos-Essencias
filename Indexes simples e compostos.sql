ALTER TABLE `db_escola`.`alunos_novos`
ADD primary key(idAluno);

-- Se não houver INDEX definido, vamos adicionar:
ALTER TABLE alunos_novos
ADD INDEX Idx(MAT);

-- Para verificar os INDEXES
SHOW INDEX FROM alunos_novos;

-- Para criar um novo INDEX a partir de uma coluna
CREATE INDEX idx_prof ON db_escola.professores(RF);
SHOW INDEX FROM professores;
EXPLAIN SELECT * FROM professores; -- 6 linhas percorridas
EXPLAIN SELECT * FROM professores WHERE id = 1; -- 6 linhas percorridas

-- Para obter informações sobre um determinado comando, podemos usar o comando EXPLAIN. Por meio desse comandom, podemos compreender o custo da transação.
EXPLAIN SELECT * FROM alunos_novos;

-- Para remover o INDEX:
DROP INDEX Idx ON alunos_novos;

SHOW INDEX FROM alunos_novos;
EXPLAIN SELECT * FROM alunos_novos; -- 6 linhas percorridas
EXPLAIN SELECT * FROM alunos_novos WHERE idAluno = 1; -- 6 linhas percorridas
