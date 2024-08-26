-- Trigger para actualizar saldo de ahorros automaticamente 
DELIMITER $$

CREATE TRIGGER ActualizarSaldoAhorros AFTER INSERT ON Gastos
FOR EACH ROW
BEGIN
  UPDATE Ahorros
  SET cantidad_actual = cantidad_actual - NEW.cantidad
  WHERE ID_usuario = NEW.ID_usuario;
END$$

CREATE TRIGGER ActualizarSaldoAhorrosIngresos AFTER INSERT ON Ingresos
FOR EACH ROW
BEGIN
  UPDATE Ahorros
  SET cantidad_actual = cantidad_actual + NEW.cantidad
  WHERE ID_usuario = NEW.ID_usuario;
END$$

DELIMITER ;


-- Trigger para notificar sobre limitres de presupuestp
DELIMITER $$

CREATE TRIGGER ChequearPresupuesto AFTER INSERT ON Gastos
FOR EACH ROW
BEGIN
  IF (SELECT SUM(cantidad) FROM Gastos WHERE ID_usuario = NEW.ID_usuario AND MONTH(fecha) = MONTH(NEW.fecha) AND YEAR(fecha) = YEAR(NEW.fecha)) > (SELECT limite_gasto FROM Presupuestos WHERE ID_usuario = NEW.ID_usuario AND mes = MONTH(NEW.fecha) AND año = YEAR(NEW.fecha)) THEN
    INSERT INTO Alertas (ID_usuario, mensaje, fecha)
    VALUES (NEW.ID_usuario, 'Ha excedido su presupuesto mensual.', NEW.fecha);
  END IF;
END$$