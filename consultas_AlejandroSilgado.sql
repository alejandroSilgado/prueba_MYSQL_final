USE universitario;

-- Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. 
-- El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado 
-- debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. 
-- El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
SELECT id_departamento , nombre ,apellido1, apellido2   
FROM profesor ;
-- Devuelve un listado con los profesores que no están asociados a un departamento.
SELECT DISTINCT  id, nombre   
FROM profesor 
WHERE id_departamento IS NULL ;
-- Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT DISTINCT id_departamento ,nombre   
FROM profesor 
WHERE id_departamento IS  NULL ;
-- Devuelve un listado con los profesores que no imparten ninguna asignatura.
SELECT id, nombre
FROM profesor p 
WHERE id NOT IN (SELECT id FROM asignatura);

-- Calcula cuántos alumnos nacieron en 1999.
SELECT * 
FROM alumno 
WHERE YEAR (alumno.fecha_nacimiento) = 1999;

-- Devuelve un listado con el nombre de todos los grados existentes en 
-- la base de datos y el número de asignaturas que tiene cada uno, de 
-- los grados que tengan más de 40 asignaturas asociadas.
SELECT * FROM asignatura WHERE (id) ;




SELECT * FROM departamento  ;
