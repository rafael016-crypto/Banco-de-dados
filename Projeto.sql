/* Criando o banco de dados */
CREATE DATABASE SGE;

/* Usando o banco de dados */
USE SGE;

/* Criando a tabela Alunos */
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(75),
    telefone VARCHAR(15),
    data_nascimento DATE
);

/* Criando a tabela Cursos */
CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100),
    carga_horaria INT,
    disciplinas VARCHAR(75),
    horarios DATETIME,
    preco DECIMAL(10,2)
);

/* Criando a tabela Professores */
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(80),
    telefone VARCHAR(15),
    especialidade VARCHAR(50)
);

/* Criando a tabela Matriculas */
CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    status VARCHAR(20),

    CONSTRAINT fk_matricula_aluno
        FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),

    CONSTRAINT fk_matricula_curso
        FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

/* Inserindo dados na tabela Alunos */
INSERT INTO Alunos (id_aluno, nome, email, telefone, data_nascimento)
VALUES
(1, 'Liliane Freitas da Silva', 'liliane.freitas@gmail.com', '83991234567', '1982-04-15'),
(2, 'Rafael Freitas da Silva', 'rafael.freitas@gmail.com', '83999887766', '1978-11-02'),
(3, 'Echily Soares da Silva', 'echily.soares@gmail.com', '83998765432', '1990-07-21'),
(4, 'Rone Ferreira da Silva', 'rone.ferreira@gmail.com', '83998112233', '1985-02-10'),
(5, 'Rayane Freitas da Silva', 'rayane.freitas@gmail.com', '83999665544', '1993-09-30'),
(6, 'Ana Paula Nogueira', 'ana.nogueira@gmail.com', '83990001122', '1991-01-12'),
(7, 'Carlos Eduardo Lima', 'carlos.lima@gmail.com', '83990002233', '1988-03-25'),
(8, 'Mariana Alves Costa', 'mariana.costa@gmail.com', '83990003344', '1995-06-18'),
(9, 'José Roberto Mendes', 'jose.mendes@gmail.com', '83990004455', '1980-08-09'),
(10, 'Patrícia Silva Rocha', 'patricia.rocha@gmail.com', '83990005566', '1992-11-27'),
(11, 'Lucas Pereira Santos', 'lucas.santos@gmail.com', '83990006677', '1999-04-05'),
(12, 'Fernanda Oliveira Lima', 'fernanda.lima@gmail.com', '83990007788', '1987-12-14'),
(13, 'Thiago Rodrigues Azevedo', 'thiago.azevedo@gmail.com', '83990008899', '1994-07-03'),
(14, 'Juliana Barros Cunha', 'juliana.cunha@gmail.com', '83990009900', '1990-10-22'),
(15, 'André Luiz Martins', 'andre.martins@gmail.com', '83990110011', '1983-02-17'),
(16, 'Camila Torres Pacheco', 'camila.pacheco@gmail.com', '83990111122', '1996-05-29'),
(17, 'Renato Gomes Farias', 'renato.farias@gmail.com', '83990112233', '1989-09-08'),
(18, 'Bianca Freire Macedo', 'bianca.macedo@gmail.com', '83990113344', '2000-01-31'),
(19, 'Paulo Henrique Batista', 'paulo.batista@gmail.com', '83990114455', '1986-06-11'),
(20, 'Larissa Menezes Rabelo', 'larissa.rabelo@gmail.com', '83990115566', '1998-03-19'),
(21, 'Daniel Carvalho Lopes', 'daniel.lopes@gmail.com', '83990116677', '1993-07-26'),
(22, 'Natália Guedes Araújo', 'natalia.araujo@gmail.com', '83990117788', '1997-12-02'),
(23, 'Felipe Moraes Teixeira', 'felipe.teixeira@gmail.com', '83990118899', '1984-04-15'),
(24, 'Aline Ribeiro Dantas', 'aline.dantas@gmail.com', '83990119900', '1991-09-07'),
(25, 'Bruno César Pimentel', 'bruno.pimentel@gmail.com', '83990220011', '1982-11-23'),
(26, 'Renata Vasconcelos Maia', 'renata.maia@gmail.com', '83990221122', '1995-02-08'),
(27, 'Igor Tavares Guimarães', 'igor.guimaraes@gmail.com', '83990222233', '1999-06-30'),
(28, 'Vanessa Queiroz Leite', 'vanessa.leite@gmail.com', '83990223344', '1987-08-14'),
(29, 'Diego Nascimento Pires', 'diego.pires@gmail.com', '83990224455', '1992-01-20'),
(30, 'Sabrina Coutinho Bezerra', 'sabrina.bezerra@gmail.com', '83990225566', '1996-10-05');

/* Inserindo dados na tabela Cursos */
INSERT INTO Cursos (id_curso, nome_curso, carga_horaria, disciplinas, horarios, preco)
VALUES
(1, 'Gestão de TI', 60, 'Planejamento, Governança, TI Estratégica', '2025-03-01 18:00:00', 350.00),
(2, 'História do Computador', 40, 'Evolução, Gerações, Marcos Tecnológicos', '2025-03-02 18:00:00', 200.00),
(3, 'HTML, CSS e JavaScript', 80, 'HTML, CSS, JavaScript', '2025-03-03 19:00:00', 500.00),
(4, 'Informática Educativa', 40, 'Tecnologias Educacionais, Práticas Digitais', '2025-03-04 18:00:00', 250.00),
(5, 'Inglês Instrumental', 40, 'Leitura Técnica, Vocabulário', '2025-03-05 18:00:00', 220.00),
(6, 'Linguagem de Programação para Desktop', 80, 'Java, C#, Interface Gráfica', '2025-03-06 19:00:00', 550.00),
(7, 'Linguagem de Programação para Web', 80, 'HTML, CSS, PHP, JavaScript', '2025-03-07 19:00:00', 550.00),
(8, 'Lógica de Programação', 60, 'Algoritmos, Fluxogramas, Lógica', '2025-03-08 18:00:00', 300.00),
(9, 'Manutenção de Computadores', 60, 'Hardware, Diagnóstico, Reparos', '2025-03-09 18:00:00', 320.00),
(10, 'Modelagem de Software', 60, 'UML, Diagramas, Modelagem', '2025-03-10 18:00:00', 350.00),
(11, 'Programação Orientada a Objetos', 80, 'Classes, Objetos, Herança', '2025-03-11 19:00:00', 500.00),
(12, 'Qualidade, Segurança, Meio Ambiente e Saúde', 40, 'Normas, Segurança do Trabalho', '2025-03-12 18:00:00', 200.00),
(13, 'Rede de Computadores', 80, 'Redes, Protocolos, Infraestrutura', '2025-03-13 19:00:00', 520.00),
(14, 'Suporte ao Usuário', 40, 'Atendimento, Help Desk', '2025-03-14 18:00:00', 220.00),
(15, 'Administração de Sistemas Operacionais I', 60, 'Windows, Linux Básico', '2025-03-15 18:00:00', 350.00),
(16, 'Administração de Sistemas Operacionais II', 60, 'Linux Avançado, Servidores', '2025-03-16 18:00:00', 380.00),
(17, 'Análise de Requisitos', 60, 'Levantamento, Documentação', '2025-03-17 18:00:00', 350.00),
(18, 'Arquitetura de Computadores', 60, 'Processadores, Memória, Hardware', '2025-03-18 18:00:00', 360.00),
(19, 'Arquitetura de Software Desktop', 60, 'Camadas, Padrões de Projeto', '2025-03-19 18:00:00', 380.00),
(20, 'Banco de Dados', 60, 'SQL, Modelagem, MySQL', '2025-03-10 18:00:00', 450.00),
(21, 'Python', 50, 'Lógica, Python Básico, VSCode', '2025-03-11 19:00:00', 450.00),
(22, 'Programação Java', 80, 'Java Básico, POO, JDBC', '2025-03-12 20:00:00', 600.00),
(23, 'Empreendedorismo', 40, 'Negócios, Inovação', '2025-03-20 18:00:00', 220.00),
(24, 'Engenharia de Software e Projeto Interdisciplinar I', 80, 'Processos, Projeto Integrador', '2025-03-21 19:00:00', 550.00),
(25, 'Engenharia de Software e Projeto Interdisciplinar II', 80, 'Desenvolvimento, Projeto Integrador', '2025-03-22 19:00:00', 550.00),
(26, 'Estrutura de Dados', 80, 'Listas, Pilhas, Filas, Árvores', '2025-03-23 19:00:00', 520.00),
(27, 'Ética Profissional e Legislação', 40, 'Ética, Leis, Profissão', '2025-03-24 18:00:00', 200.00),
(28, 'Fundamentos de Teste', 60, 'Testes de Software, Qualidade', '2025-03-25 18:00:00', 350.00),
(29, 'Gestão de Projetos e Projeto Interdisciplinar III', 80, 'PMI, Projetos, Integração', '2025-03-26 19:00:00', 580.00);

/* Inserindo dados na tabela Professores */
INSERT INTO Professores (id_professor, nome, email, telefone, especialidade)
VALUES
(100, 'Cefras José Ferreira Mandú de Almeida', 'cefras.jose@gmail.com', '83991112233', 'Banco de Dados'),
(200, 'Jose Ramon da Silva Bezerra', 'jose.ramon@gmail.com', '83992223344', 'Python'),
(300, 'Kessia Maria Guimaraes de Oliveira', 'kessia.maria@gmail.com', '83992223355', 'Inglês'),
(400, 'Gabriel Faustino da Silva', 'gabriel.faustino@gmail.com', '83992223366', 'História do Computador'),
(500, 'Thiago Rafael Teixeira Nogueira', 'thiago.rafael@gmail.com', '83992223377', 'Rede de Computadores'),
(600, 'Walney de Negreiros Gomes', 'Walney.Negreiros@gmail.com', '83993334488', 'Programação Java');

/* Inserindo dados na tabela Matriculas */
INSERT INTO Matriculas (id_aluno, id_curso, data_matricula, status)
VALUES
(1, 1, '2025-02-01', 'Ativa'),
(2, 2, '2025-02-02', 'Ativa'),
(3, 3, '2025-02-03', 'Ativa'),
(4, 1, '2025-02-04', 'Ativa'),
(5, 2, '2025-02-05', 'Trancada'),
(6, 3, '2025-02-06', 'Ativa'),
(7, 1, '2025-02-07', 'Ativa'),
(8, 2, '2025-02-08', 'Ativa'),
(9, 3, '2025-02-09', 'Trancada'),
(10, 1, '2025-02-10', 'Ativa'),
(11, 2, '2025-02-11', 'Ativa'),
(12, 3, '2025-02-12', 'Ativa'),
(13, 1, '2025-02-13', 'Ativa'),
(14, 2, '2025-02-14', 'Cancelada'),
(15, 3, '2025-02-15', 'Ativa'),
(16, 1, '2025-02-16', 'Ativa'),
(17, 2, '2025-02-17', 'Ativa'),
(18, 3, '2025-02-18', 'Trancada'),
(19, 1, '2025-02-19', 'Ativa'),
(20, 2, '2025-02-20', 'Ativa'),
(21, 3, '2025-02-21', 'Ativa'),
(22, 1, '2025-02-22', 'Cancelada'),
(23, 2, '2025-02-23', 'Ativa'),
(24, 3, '2025-02-24', 'Ativa'),
(25, 1, '2025-02-25', 'Ativa'),
(26, 2, '2025-02-26', 'Trancada'),
(27, 3, '2025-02-27', 'Ativa'),
(28, 1, '2025-02-28', 'Ativa'),
(29, 2, '2025-03-01', 'Ativa'),
(30, 3, '2025-03-02', 'Ativa');


/* Pesquisa 1 - Listar todos os alunos cadastrados */
SELECT id_aluno, nome, email, telefone, data_nascimento
FROM Alunos;

/* Pesquisa 2 - Cursos com carga horária maior que 50 horas */
SELECT nome_curso
FROM Cursos
WHERE carga_horaria > 50;


/* Pesquisa 3 - Alunos com matrícula ativa */
SELECT DISTINCT a.nome
FROM Alunos a
JOIN Matriculas m ON a.id_aluno = m.id_aluno
WHERE m.status = 'Ativa';

/* Pesquisa 4 - Alunos com idade menor que 22 anos */
SELECT 
    nome,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS idade
FROM Alunos
WHERE TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) < 22;

/* Pesquisa 5 - Aluno e curso em que está matriculado */
SELECT 
    a.nome AS aluno,
    c.nome_curso AS curso
FROM Matriculas m
JOIN Alunos a ON m.id_aluno = a.id_aluno
JOIN Cursos c ON m.id_curso = c.id_curso;


/* Pesquisa 6 - Alunos matriculados no curso Banco de Dados */
SELECT a.nome
FROM Matriculas m
JOIN Alunos a ON m.id_aluno = a.id_aluno
JOIN Cursos c ON m.id_curso = c.id_curso
WHERE c.nome_curso = 'Banco de Dados';


/* Pesquisa 7 - Cursos com carga horária diferente de 60 horas */
SELECT nome_curso, carga_horaria
FROM Cursos
WHERE carga_horaria <> 60;


/* Pesquisa 8 - Alunos e status da matrícula */
SELECT 
    a.nome,
    m.status
FROM Alunos a
JOIN Matriculas m ON a.id_aluno = m.id_aluno;



