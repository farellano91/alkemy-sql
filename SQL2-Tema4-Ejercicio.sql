/* Ejercicio 1 */

SELECT COUNT(*)
FROM (SELECT p.id, COUNT(*)
      PROFESOR p INNER JOIN CURSO c ON p.id = c.PROFESOR_id
      WHERE c.turno = 'Noche'
      GROUP BY p.id
      HAVING COUNT(*) > 1) AS profesores_con_mas_de_un_curso_nocturno;

/* Ejercicio 2 */

SELECT *
FROM ESTUDIANTE e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
                       FROM INSCRIPCION i
                       WHERE i.CURSO_codigo = 105)



