SELECT DEPARTAMENTO.NOMBRE, COUNT(EMPLEADO.ID) AS NUM_EMPLEADO
FROM EMPLEADO
INNER JOIN DEPARTAMENTO
ON EMPLEADO.DEPARTAMENTO_ID= DEPARTAMENTO.ID
GROUP BY DEPARTAMENTO.NOMBRE;

SELECT Concat (APELLIDOS , ' ' , NOMBRE ,' es: ' , CARGO) AS DESCRIPCION
 FROM empleado;
 
SELECT nombre, apellidos,cargo
FROM empleado
WHERE cargo <> 'COMERCIAL'
  AND (nombre LIKE '%N%' OR apellidos LIKE '%N%');
  
SELECT nombre, sueldo, comision
FROM empleado
WHERE comision IS NOT NULL
ORDER BY sueldo DESC;

SELECT nombre, apellidos, sueldo * 1.1 AS nuevo_salario
FROM empleado
ORDER BY nombre, APELLIDOS;

SELECT CONCAT(nombre, ' ', apellidos) AS nombre_completo, 
       CONCAT('empezó a trabajar el ', 
              DATE_FORMAT(fecha_alta, '%d de %M de %Y')
       ) AS fecha_entrada
FROM empleado
ORDER BY fecha_alta;



