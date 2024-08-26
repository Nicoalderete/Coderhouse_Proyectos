-- Procedimiento para agregar gasto

DELIMITER $$

CREATE PROCEDURE AgregarGasto(
    IN _ID_usuario INT,
    IN _cantidad DECIMAL(10,2),
    IN _categoria INT,
    IN _fecha DATE
)
BEGIN
    INSERT INTO Gastos (ID_usuario, cantidad, categoria, fecha)
    VALUES (_ID_usuario, _cantidad, _categoria, _fecha);
END$$

DELIMITER ;


-- Procedimiento para actualizar deuda
DELIMITER $$

CREATE PROCEDURE ActualizarDeuda(
    IN _ID_deuda INT,
    IN _nueva_cantidad DECIMAL(10,2)
)
BEGIN
    UPDATE Deudas
    SET cantidad = _nueva_cantidad
    WHERE ID_deuda = _ID_deuda;
END$$

DELIMITER ;


-- Procedimiento para regustrar transacciones recurrentes 
DELIMITER $$

CREATE PROCEDURE RegistrarTransaccionesRecurrentes()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE a_ID INT;
    DECLARE a_usuario INT;
    DECLARE a_tipo VARCHAR(45);
    DECLARE a_cantidad DECIMAL(10,2);
    DECLARE a_periodicidad VARCHAR(45);

    -- Cursor para seleccionar transacciones recurrentes mensuales
    DECLARE cur CURSOR FOR 
        SELECT ID_recurrente, ID_usuario, tipo_transaccion, cantidad, periodicidad 
        FROM Transacciones_Recurrentes 
        WHERE periodicidad = 'Mensual';

    -- Manejador para salir del bucle cuando no hay más filas
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO a_ID, a_usuario, a_tipo, a_cantidad, a_periodicidad;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Inserta la transacción para este mes en la tabla de Gastos
        INSERT INTO Gastos (ID_usuario, cantidad, categoria, fecha)
        VALUES (a_usuario, a_cantidad, a_tipo, CURDATE());
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;


