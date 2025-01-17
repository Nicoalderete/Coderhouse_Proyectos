-- Vista Resumen Gastos por Categoria

CREATE VIEW VistaResumenGastosCategoria AS
SELECT u.nombre, c.descripcion AS categoria, MONTH(g.fecha) AS mes, YEAR(g.fecha) AS año, SUM(g.cantidad) AS total_gastos
FROM Usuarios u
JOIN Gastos g ON u.ID_usuario = g.ID_usuario
JOIN Categorias_de_Gastos c ON g.categoria = c.ID_categoria
GROUP BY u.nombre, c.descripcion, MONTH(g.fecha), YEAR(g.fecha)
ORDER BY u.nombre, c.descripcion, YEAR(g.fecha), MONTH(g.fecha);

-- Vista Comparativa de ingresos con gastos 

CREATE VIEW VistaComparativaIngresosGastos AS
SELECT u.nombre, MONTH(i.fecha) AS mes, YEAR(i.fecha) AS año,
       SUM(i.cantidad) AS total_ingresos,
       (SELECT SUM(g.cantidad) FROM Gastos g WHERE g.ID_usuario = i.ID_usuario AND MONTH(g.fecha) = MONTH(i.fecha) AND YEAR(g.fecha) = YEAR(i.fecha)) AS total_gastos
FROM Usuarios u
JOIN Ingresos i ON u.ID_usuario = i.ID_usuario
GROUP BY u.nombre, MONTH(i.fecha), YEAR(i.fecha)
ORDER BY u.nombre, YEAR(i.fecha), MONTH(i.fecha);


-- Vista Usuarios con deudas
CREATE VIEW VistaUsuariosDeudas AS
SELECT u.nombre, u.email, d.acreedor, d.cantidad AS monto_deuda, d.fecha_vencimiento
FROM Usuarios u
JOIN Deudas d ON u.ID_usuario = d.ID_usuario
WHERE d.fecha_vencimiento > CURRENT_DATE()
ORDER BY d.fecha_vencimiento;


-- Vista Ahorro por usuario
CREATE VIEW VistaAhorrosUsuario AS
SELECT u.nombre, a.objetivo, a.cantidad_objetivo, a.cantidad_actual, (a.cantidad_actual / a.cantidad_objetivo * 100) AS porcentaje_completado
FROM Usuarios u
JOIN Ahorros a ON u.ID_usuario = a.ID_usuario
ORDER BY u.nombre, porcentaje_completado DESC;


-- Vista Resumnen anual de actividades
CREATE VIEW VistaResumenAnualActividades AS
SELECT u.nombre, YEAR(CURRENT_DATE()) AS año,
       (SELECT SUM(i.cantidad) FROM Ingresos i WHERE i.ID_usuario = u.ID_usuario AND YEAR(i.fecha) = YEAR(CURRENT_DATE())) AS total_ingresos,
       (SELECT SUM(g.cantidad) FROM Gastos g WHERE g.ID_usuario = u.ID_usuario AND YEAR(g.fecha) = YEAR(CURRENT_DATE())) AS total_gastos,
       (SELECT SUM(inv.cantidad) FROM Inversiones inv WHERE inv.ID_usuario = u.ID_usuario AND YEAR(inv.fecha) = YEAR(CURRENT_DATE())) AS total_inversiones
FROM Usuarios u
GROUP BY u.nombre
ORDER BY u.nombre;


-- Vista Balance anual 
CREATE VIEW VistaBalanceAnual AS
SELECT
    u.nombre,
    YEAR(g.fecha) AS año,
    (
        SELECT SUM(i.cantidad)
        FROM Ingresos i
        WHERE i.ID_usuario = g.ID_usuario AND YEAR(i.fecha) = YEAR(g.fecha)
    ) AS total_ingresos,
    (
        SELECT SUM(ga.cantidad)
        FROM Gastos ga
        WHERE ga.ID_usuario = g.ID_usuario AND YEAR(ga.fecha) = YEAR(g.fecha)
    ) AS total_gastos,
    (
        SELECT SUM(inv.cantidad)
        FROM Inversiones inv
        WHERE inv.ID_usuario = g.ID_usuario AND YEAR(inv.fecha) = YEAR(g.fecha)
    ) AS total_inversiones
FROM
    Usuarios u
JOIN
    Historial_Ingresos_Gastos g ON u.ID_usuario = g.ID_usuario
GROUP BY
    u.nombre, YEAR(g.fecha);

