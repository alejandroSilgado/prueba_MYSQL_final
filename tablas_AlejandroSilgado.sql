-- ###################################
-- ###   Prueba  del dia 7         ###
-- ###################################

-- creacion de la base de datos 
CREATE DATABASE universitario;
USE universitario;

-- creacion de la tabla departamento
CREATE TABLE departamento(
	id INT PRIMARY KEY,
	nombre VARCHAR(50)
);

-- creacion de la tabla alumno 
CREATE TABLE alumno(
    id INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    ciudad VARCHAR(25),
    direccion VARCHAR(50),
    telefono VARCHAR(9),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M')   
);
-- creacion de la tabla grado 
CREATE TABLE grado (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100)
);
-- creacion de la tabla curso escolar 
CREATE TABLE curso_escolar (
    id INT(10) PRIMARY KEY,
    anyo_inicio YEAR(4),
    anyo_fin YEAR(4)
);

-- creacion de la tabla profesor
CREATE TABLE profesor(
    id INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    ciudad VARCHAR(25),
    direccion VARCHAR(50),
    telefono VARCHAR(9),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M'),
    id_departamento INT(10),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

-- creacion de la tabla asignatura
CREATE TABLE asignatura (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100),
    creditos FLOAT,
    tipo VARCHAR(50), 
    curso INT,
    cuatrimestre TINYINT(3),
    id_profesor INT(10),
    id_grado INT(10),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id),
    FOREIGN KEY (id_grado) REFERENCES grado(id)
);

-- creacion de la tabla alumnos_se_matricula 

CREATE TABLE alumno_se_matricula_asignatura (
    id_alumno INT(10),
    id_asignatura INT(10),
    id_curso_escolar INT(10),
    FOREIGN KEY (id_curso_escolar) REFERENCES curso_escolar(id),
    FOREIGN KEY (id_alumno) REFERENCES alumno(id),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id)
);


