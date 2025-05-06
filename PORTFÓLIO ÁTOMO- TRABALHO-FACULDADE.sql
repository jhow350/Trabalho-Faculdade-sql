
CREATE TABLE Aluno (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_Nascimento DATE,
    CPF VARCHAR(11),
    Email VARCHAR(100)
);

CREATE TABLE Curso (
    ID_Curso INT PRIMARY KEY,
    Nome VARCHAR(100),
    Carga_Horaria INT
);

CREATE TABLE Professor (
    ID_Professor INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Disciplina (
    ID_Disciplina INT PRIMARY KEY,
    Nome VARCHAR(100),
    Carga_Horaria INT,
    ID_Professor INT,
    ID_Curso INT,
    FOREIGN KEY (ID_Professor) REFERENCES Professor(ID_Professor),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Turma (
    ID_Turma INT PRIMARY KEY,
    Semestre VARCHAR(10),
    Ano INT,
    ID_Curso INT,
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Aluno_Turma (
    ID_Aluno INT,
    ID_Turma INT,
    PRIMARY KEY (ID_Aluno, ID_Turma),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Turma) REFERENCES Turma(ID_Turma)
);

CREATE TABLE Nota (
    ID_Nota INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Disciplina INT,
    Nota_Valor DECIMAL(4,2),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina)
);
