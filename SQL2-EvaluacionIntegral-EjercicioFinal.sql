/* Ejercicio 1 */

SELECT e.legajo, COUNT(*) AS "Cant. Cursos"
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo
GROUP BY e.legajo;

/* Ejercicio 2 */

SELECT e.legajo, COUNT(*) "Cant. Cursos"
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i ON e.legajo = i.ESTUDIANTE_legajo
GROUP BY e.legajo
HAVING COUNT(*) > 1;

/* Ejercicio 3 */

SELECT *
FROM ESTUDIANTE e
WHERE e.legajo NOT IN (SELECT DISTINCT i.ESTUDIANTE_legajo
                       FROM INSCRIPCION i);

/* Ejercicio 4 */

/*

TABLA - INDICE - TIPO

PROFESOR - PK id - Clousterizado

ESTUDIANTE - PK legajo - Clousterizado

CURSO - PK codigo - Clousterizado
        FK PROFESOR_id - No Clousterizado

INSCRIPCION - PK numero - Clousterizado
              FK CURSO_codigo - No Clousterizado
              FK ESTUDIANTE_legajo - No Clousterizado

*/

/* Ejercicio 5 */

SELECT *
FROM ESTUDIANTE e
WHERE e.legajo IN (SELECT i.ESTUDIANTE_legajo
                   FROM INSCRIPCION i INNER JOIN CURSO c ON i.CURSO_codigo = c.codigo INNER JOIN PROFESOR p ON c.PROFESOR_id = p.id
                   WHERE p.apellido = 'Pérez' OR p.apellido = 'Paz');