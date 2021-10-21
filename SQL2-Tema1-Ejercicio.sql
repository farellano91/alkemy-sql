/* Ejercicio 1 */

SELECT COUNT(*) AS "Cant. estudiantes de Mecanica"
FROM ESTUDIANTE
WHERE carrera = 'Mecánica';

/* Ejercicio 2 */

SELECT MIN(salario) AS "Salario minimo"
FROM PROFESOR
WHERE fecha_nacimiento between '1980-01-01' and '1989-12-31';

/* Ejercicio 3 */

/* Consulta A */

SELECT pais.nombre AS "Pais", COUNT(*) AS "Cantidad de pasajeros"
FROM PASAJERO pasajero INNER JOIN PAIS pais ON pasajero.idpais = pais.idpais
GROUP BY pais.nombre;

/* Consulta B */

SELECT SUM(pago.monto) AS "Monto total de pagos"
FROM PASAJERO pasajero INNER JOIN PAGO pago ON pasajero.idpasajero = pago.idpasajero;

/* Consulta C */

SELECT pasajero.idpasajero AS "Pasajero", ROUND(SUM(pago.monto), 2) AS "Monto total de pagos"
FROM PASAJERO pasajero INNER JOIN PAGO pago ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.idpasajero;

/* Consulta D */

SELECT pasajero.idpasajero AS "Pasajero", AVG(pago.monto) AS "Monto total de pagos"
FROM PASAJERO pasajero INNER JOIN PAGO pago ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.idpasajero;