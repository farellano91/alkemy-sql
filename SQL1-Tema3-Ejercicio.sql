/* CONSULTA 1 */

SELECT nombre, apellido, fecha_nacimiento 
FROM profesor 
ORDER BY fecha_nacimiento;

/* CONSULTA 2 */

SELECT * 
FROM profesor 
WHERE salario >= 65000;

/* CONSULTA 3 */

SELECT * 
FROM profesor 
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';

/* CONSULTA 4 */

SELECT * 
FROM profesor 
LIMIT 5;

/* CONSULTA 5 */

SELECT * 
FROM profesor 
WHERE apellido LIKE "P%";

/* CONSULTA 6 */

SELECT * 
FROM profesor 
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31' AND salario > 80000;