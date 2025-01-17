
-- Funcion Total Gastos mensuales
DELIMITER $$

CREATE FUNCTION TotalGastosMes(ID_usuario INT, Mes INT, Año INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(cantidad) INTO total
    FROM Gastos
    WHERE ID_usuario = ID_usuario AND MONTH(fecha) = Mes AND YEAR(fecha) = Año;
    IF total IS NULL THEN
        SET total = 0;
    END IF;
    RETURN total;
END$$


DELIMITER $$


-- Funcion Verificar presupuesto
CREATE FUNCTION VerificarPresupuesto(ID_usuario INT, Mes INT, Año INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE gastos DECIMAL(10,2);
    DECLARE presupuesto DECIMAL(10,2);

    -- Calcula los gastos totales para el mes y año especificados
    SELECT SUM(cantidad) INTO gastos
    FROM Gastos
    WHERE ID_usuario = ID_usuario AND MONTH(fecha) = Mes AND YEAR(fecha) = Año;

    -- Obtiene el límite de presupuesto para el mes y año especificados
    SELECT limite_gasto INTO presupuesto
    FROM Presupuestos
    WHERE ID_usuario = ID_usuario AND mes = Mes AND año = Año;

    -- Verifica si los gastos exceden el presupuesto
    IF gastos > presupuesto THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END$$


-- Funcion para calcular el total anual de gastos 
CREATE FUNCTION TotalAnualGastos(p_ID_usuario INT, p_anio INT)
RETURNS DECIMAL(10,2)
READS SQL DATA  -- Especificamos cómo la función interactúa con los datos
BEGIN
    DECLARE v_total DECIMAL(10,2) DEFAULT 0;
    SELECT SUM(cantidad) INTO v_total
    FROM Gastos
    WHERE ID_usuario = p_ID_usuario AND YEAR(fecha) = p_anio;
    RETURN IFNULL(v_total, 0);
END$$


-- Funcion para calcular el total anual de 
CREATE FUNCTION TotalAnualIngresos(p_ID_usuario INT, p_anio INT)
RETURNS DECIMAL(10,2)
READS SQL DATA  -- Especificamos cómo la función interactúa con los datos
BEGIN
    DECLARE v_total DECIMAL(10,2) DEFAULT 0;
    SELECT SUM(cantidad) INTO v_total
    FROM Ingresos
    WHERE ID_usuario = p_ID_usuario AND YEAR(fecha) = p_anio;
    RETURN IFNULL(v_total, 0);
END$$

DELIMITER ;



