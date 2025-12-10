drop database clinicaMedicaDB;
create database clinicaMedicaDB;
USE clinicaMedicaDB;

create table medico (
	CRM VARCHAR(10) primary key,
    NOME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(80) NOT NULL,
    TELEFONE VARCHAR(15) UNIQUE,
    DATA_NASC DATE,
    ESPECIALIZACAO VARCHAR(25)
);

create table paciente (
	ID INT primary key,
    CPF VARCHAR(15) UNIQUE,
    NOME VARCHAR(100),
    ENDERECO VARCHAR(75),
    TELEFONE VARCHAR(15) UNIQUE,
    TIPO_EXAME VARCHAR(25)
);

create table CONSULTA (
	ID_MEDICO VARCHAR(10) NOT NULL,
	ID_PACIENTE INT NOT NULL,
    DATA_CONSULT DATE NOT NULL,
    VALOR DOUBLE NOT NULL,
    TIPO_PAG VARCHAR(20),
    foreign key (ID_MEDICO) REFERENCES MEDICO(CRM),
    foreign key (ID_PACIENTE) REFERENCES PACIENTE(ID)
);

create table EXAME (
	ID_MEDICO VARCHAR(10) NOT NULL,
	ID_PACIENTE INT NOT NULL,
    DATA_EXAME DATE,
    VALOR DOUBLE NOT NULL,
    TIPO_PAG VARCHAR(20),
    TIPO_EXAME VARCHAR(50),
    foreign key (ID_MEDICO) REFERENCES MEDICO(CRM),
    foreign key (ID_PACIENTE) REFERENCES PACIENTE(ID)
);

INSERT INTO medico (CRM, NOME, EMAIL, TELEFONE, DATA_NASC, ESPECIALIZACAO)
VALUES
('123456-PB', 'Liliane Freitas da Silva', 'liliane.freitas@clinica.com', '83991234567', '1982-04-15', 'Cardiologia'),
('234567-PB', 'Rafael Freitas da Silva', 'rafael.freitas@clinica.com', '83999887766', '1978-11-02', 'Ortopedia'),
('345678-PB', 'Echily Soares da Silva', 'echily.soares@clinica.com', '83998765432', '1990-07-21', 'Pediatria'),
('456789-PB', 'Rone Ferreira da Silva', 'rone.ferreira@clinica.com', '83998112233', '1985-02-10', 'Dermatologia'),
('567890-PB', 'Rayane Freitas da Silva', 'rayane.freitas@clinica.com', '83999665544', '1993-09-30', 'Ginecologia');


INSERT INTO paciente (ID, CPF, NOME, ENDERECO, TELEFONE, TIPO_EXAME)
VALUES

(1, '123.456.789-01', 'Rafael Freitas da Silva', 'Rua das Flores, 120 - Centro', '83991234567', 'Raio-X'),
(2, '234.567.890-12', 'Echily Soares da Silva', 'Av. Brasil, 455 - Catolé', '83999887766', 'Hemograma'),
(3, '345.678.901-23', 'Rone Ferreira da Silva', 'Rua São Pedro, 77 - Bodocongó', '83998765432', 'Ultrassom'),
(4, '456.789.012-34', 'Maria Jose Freitas da Silva', 'Rua João Pessoa, 310 - Centro', '83998123456', 'Tomografia'),
(5, '567.890.123-45', 'Fabio jose da Silva', 'Rua Bahia, 92 - Palmeira', '83998654321', 'Eletrocardiograma'),
(6, '678.901.234-56', 'Rayane Freitas da Silva', 'Rua Ceará, 200 - Monte Santo', '83999998888', 'Raio-X'),
(7, '789.012.345-67', 'Maria do Socorro', 'Rua São José, 55 - Catolé', '83991357924', 'Ressonância Magnética'),
(8, '890.123.456-78', 'Liliane Freitas da Silva', 'Alameda das Acácias, 501 - Mirante', '83999554433', 'Hemograma'),
(9, '901.234.567-89', 'Mary Soares da Silva', 'Rua Pernambuco, 88 - Dinamérica', '83998442211', 'Ultrassom'),
(10, '012.345.678-90', 'David Ruan Ferreira da Silva', 'Rua Acre, 60 - Velame', '83998223344', 'Tomografia');


UPDATE paciente
SET TELEFONE = '83999999999'
WHERE ID = 2;

SELECT * FROM paciente;

SELECT NOME, ESPECIALIZACAO
FROM medico;
ALTER TABLE consulta ADD ID INT AUTO_INCREMENT PRIMARY KEY;

SELECT *
FROM consulta
WHERE ID = 1;

ALTER TABLE paciente ADD DATA_NASC DATE;

SELECT *
FROM paciente
WHERE DATA_NASC > '2000-01-01';

SELECT *
FROM medico
WHERE ESPECIALIZACAO = 'Cardiologia';
