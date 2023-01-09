
-- Para Alterar
USE `db_escola`;
DROP procedure IF EXISTS `input_data`;

USE `db_escola`;
DROP procedure IF EXISTS `db_escola`.`input_data`;
;

DELIMITER $$
USE `db_escola`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `input_data`()
BEGIN 
DECLARE error_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET error_sql = TRUE;
START TRANSACTION;
	delete from db_escola.alunos_novos;
CHANGE COLUMN idAluno idAluno int auto_increment primary key;
	insert into alunos_novos(MAT, Nome, Email)
	values 
	(1, 'João Silva', 'joao@email.com'),
	(2, 'Carmen Miranda', 'carmen@eumail.com'),
	(3, 'Jorge Amado', 'jorge@eumail.com'),
	(4, 'Maria Quitéria', 'maria@eumail.com');
	IF error_sql = FALSE THEN
		COMMIT;
        SELECT "Operação realizada com sucesso!" AS Response;
	ELSE 
		ROLLBACK;
        SELECT "Alguns erros forma encontrados e a operação foi cancelada." AS Response;
	END IF;
END$$

DELIMITER ;
;

