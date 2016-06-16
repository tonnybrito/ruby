

CREATE TABLE Agenda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    sobrenome varchar(80) not null,
	sexo ENUM('m','f') DEFAULT 'm',
	data_nascimento int	
);

select * from tables.agenda;

