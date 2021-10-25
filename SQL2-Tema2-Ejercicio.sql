/* Ejercicio 1 */

SELECT e.nombre AS "Nombre", e.apellido AS "Apellido", c.nombre AS "Curso"
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo INNER JOIN CURSO c ON i.curso_CODIGO = c.codigo;

/* Ejercicio 2 */

SELECT e.nombre AS "Nombre", e.apellido AS "Apellido", c.nombre AS "Curso"
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo INNER JOIN CURSO c ON i.curso_CODIGO = c.codigo
ORDER BY c.nombre;

/* Ejercicio 3 */

SELECT p.nombre AS "Nombre", p.apellido AS "Apellido", c.nombre AS "Curso"
FROM PROFESOR p INNER JOIN CURSO c ON p.codigo = c.PROFESOR_id;

/* Ejercicio 4 */

SELECT p.nombre AS "Nombre", p.apellido AS "Apellido", c.nombre AS "Curso"
FROM PROFESOR p INNER JOIN CURSO c ON p.codigo = c.PROFESOR_id
ORDER BY c.nombre;

/* Ejercicio 5 */

SELECT c.nombre AS "Curso", (c.cupo - COUNT(*)) AS "Cupo disponible"
FROM CURSO c INNER JOIN INSCRIPCION i ON c.codigo = i.CURSO_codigo
GROUP BY c.nombre;

/* Ejercicio 6 */

SELECT c.nombre AS "Curso"
FROM CURSO c INNER JOIN INSCRIPCION i ON c.codigo = i.CURSO_codigo
GROUP BY c.nombre
HAVING (c.cupo - COUNT(*)) < 10;
