 -- Crear tabla de Estudiantes
CREATE TABLE Estudiantes (
    Estudiante_id INT PRIMARY KEY,
    Estudiante_name VARCHAR(100) NOT NULL,
    Estudiante_email VARCHAR(100) UNIQUE NOT NULL,
    Estudiante_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Estudiante_phone VARCHAR(20) NULL
);

-- Crear tabla de CURSO BIGDATA
CREATE TABLE CURSO_BIGDATA (
    Curso_id INT PRIMARY KEY,
    Estudiante_id INT NOT NULL,
    Inicio_curso DATETIME NOT NULL,
    Fin_curso DATETIME NOT NULL,
    Temario INT NOT NULL,
    Practica INT NOT NULL,
    Trabajo_final INT NOT NULL,
    FOREIGN KEY (Estudiante_id) REFERENCES Estudiantes(Estudiante_id)
);

-- Crear tabla de Profesores
CREATE TABLE Profesores (
    Profesor_id INT PRIMARY KEY,
    Profesor_name VARCHAR(50) NOT NULL,
    Curso_id INT NOT NULL,
    FOREIGN KEY (Curso_id) REFERENCES CURSO_BIGDATA(Curso_id)
);

-- Crear tabla de Temario
CREATE TABLE Temario (
    Temario_id INT PRIMARY KEY,
    Teoría INT NOT NULL,
    Ejercicios INT NOT NULL,
    FOREIGN KEY (Temario_id) REFERENCES CURSO_BIGDATA(Temario)
);

-- Crear tabla de Trabajo_final
CREATE TABLE Trabajo_final (
    Trabajo_final_id INT PRIMARY KEY,
    Profesor_id INT NOT NULL,
    Nota_presentación INT NOT NULL,
    FOREIGN KEY (Profesor_id) REFERENCES Profesores(Profesor_id)
);