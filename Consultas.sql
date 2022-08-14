# Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro
SET Fecha_nac = '2012/01/01'
WHERE ID_Perro = 13;

# Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
# INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_Dueno) VALUE(10, 'Cholo', '2019/02/28', 'Macho', 28957346);

# Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE dueno
SET direccion = 'Libertad 123'
WHERE DNI = 28957346;

SELECT *
FROM perro
WHERE sexo = 'Macho';