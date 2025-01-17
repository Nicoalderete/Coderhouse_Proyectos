-- Insercion de Usuarios 
INSERT INTO Usuarios (nombre, email) VALUES
('Juan Pérez', 'juan.perez@example.com'),
('Ana López', 'ana.lopez@example.com'),
('Roberto Díaz', 'roberto.diaz@example.com'),
('Lucía Ramírez', 'lucia.ramirez@example.com'),
('Marta Sánchez', 'marta.sanchez@example.com'),
('Carlos Gómez', 'carlos.gomez@example.com'),
('Sofía Morales', 'sofia.morales@example.com'),
('Antonio Ruiz', 'antonio.ruiz@example.com'),
('Laura Jiménez', 'laura.jimenez@example.com'),
('Pablo Torres', 'pablo.torres@example.com'),
('Carmen Martín', 'carmen.martin@example.com'),
('Francisco Hernández', 'francisco.hernandez@example.com'),
('Sara Domínguez', 'sara.dominguez@example.com'),
('Diego López', 'diego.lopez@example.com'),
('Beatriz Alonso', 'beatriz.alonso@example.com');

-- Insercion de las Categorias de datos 
INSERT INTO Categorias_de_Gastos (descripcion) VALUES
('Alquiler'), ('Alimentación'), ('Transporte'), ('Servicios'),
('Ocio'), ('Salud'), ('Educación'), ('Ropa'), ('Seguros'),
('Impuestos'), ('Deudas'), ('Ahorro'), ('Inversiones'), ('Regalos'), ('Otros');

-- Insercion de Gastos
INSERT INTO Gastos (ID_usuario, cantidad, categoria, fecha) VALUES
(1, 100.00, 1, '2024-06-01'), (2, 150.00, 2, '2024-06-02'), (3, 200.00, 3, '2024-06-03'),
(4, 250.00, 4, '2024-06-04'), (5, 300.00, 5, '2024-06-05'), (6, 350.00, 6, '2024-06-06'),
(7, 400.00, 7, '2024-06-07'), (8, 450.00, 8, '2024-06-08'), (9, 500.00, 9, '2024-06-09'),
(10, 550.00, 10, '2024-06-10'), (11, 600.00, 11, '2024-06-11'), (12, 650.00, 12, '2024-06-12'),
(13, 700.00, 13, '2024-06-13'), (14, 750.00, 14, '2024-06-14'), (15, 800.00, 15, '2024-06-15');

-- Insercion de Ingresos
INSERT INTO Ingresos (ID_usuario, cantidad, fuente, fecha) VALUES
(1, 1000.00, 'Salario', '2024-06-01'), (2, 1100.00, 'Salario', '2024-06-02'), (3, 1200.00, 'Freelance', '2024-06-03'),
(4, 1300.00, 'Inversión', '2024-06-04'), (5, 1400.00, 'Regalo', '2024-06-05'), (6, 1500.00, 'Salario', '2024-06-06'),
(7, 1600.00, 'Salario', '2024-06-07'), (8, 1700.00, 'Freelance', '2024-06-08'), (9, 1800.00, 'Inversión', '2024-06-09'),
(10, 1900.00, 'Regalo', '2024-06-10'), (11, 2000.00, 'Salario', '2024-06-11'), (12, 2100.00, 'Salario', '2024-06-12'),
(13, 2200.00, 'Freelance', '2024-06-13'), (14, 2300.00, 'Inversión', '2024-06-14'), (15, 2400.00, 'Regalo', '2024-06-15');

-- Insercion de Inversiones
INSERT INTO Inversiones (ID_usuario, tipo, cantidad, fecha) VALUES
(1, 'Acciones', 5000.00, '2024-06-01'), (2, 'Bonos', 6000.00, '2024-06-02'), (3, 'Fondos Mutuos', 7000.00, '2024-06-03'),
(4, 'Acciones', 8000.00, '2024-06-04'), (5, 'Bonos', 9000.00, '2024-06-05'), (6, 'Fondos Mutuos', 10000.00, '2024-06-06'),
(7, 'Acciones', 11000.00, '2024-06-07'), (8, 'Bonos', 12000.00, '2024-06-08'), (9, 'Fondos Mutuos', 13000.00, '2024-06-09'),
(10, 'Acciones', 14000.00, '2024-06-10'), (11, 'Bonos', 15000.00, '2024-06-11'), (12, 'Fondos Mutuos', 16000.00, '2024-06-12'),
(13, 'Acciones', 17000.00, '2024-06-13'), (14, 'Bonos', 18000.00, '2024-06-14'), (15, 'Fondos Mutuos', 19000.00, '2024-06-15');

-- Insercion de Proveedores
INSERT INTO Proveedores (nombre, contacto, direccion) VALUES
('Proveedor 1', 'Contacto 1', 'Dirección 1'), ('Proveedor 2', 'Contacto 2', 'Dirección 2'), ('Proveedor 3', 'Contacto 3', 'Dirección 3'),
('Proveedor 4', 'Contacto 4', 'Dirección 4'), ('Proveedor 5', 'Contacto 5', 'Dirección 5'), ('Proveedor 6', 'Contacto 6', 'Dirección 6'),
('Proveedor 7', 'Contacto 7', 'Dirección 7'), ('Proveedor 8', 'Contacto 8', 'Dirección 8'), ('Proveedor 9', 'Contacto 9', 'Dirección 9'),
('Proveedor 10', 'Contacto 10', 'Dirección 10'), ('Proveedor 11', 'Contacto 11', 'Dirección 11'), ('Proveedor 12', 'Contacto 12', 'Dirección 12'),
('Proveedor 13', 'Contacto 13', 'Dirección 13'), ('Proveedor 14', 'Contacto 14', 'Dirección 14'), ('Proveedor 15', 'Contacto 15', 'Dirección 15');

-- Insercion de Productos
INSERT INTO Productos (nombre, ID_proveedor, precio, categoria) VALUES
('Producto 1', 1, 10.00, 'Categoría 1'),
('Producto 2', 2, 20.00, 'Categoría 2'),
('Producto 3', 3, 30.00, 'Categoría 3'),
('Producto 4', 4, 40.00, 'Categoría 4'),
('Producto 5', 5, 50.00, 'Categoría 5'),
('Producto 6', 6, 60.00, 'Categoría 6'),
('Producto 7', 7, 70.00, 'Categoría 7'),
('Producto 8', 8, 80.00, 'Categoría 8'),
('Producto 9', 9, 90.00, 'Categoría 9'),
('Producto 10', 10, 100.00, 'Categoría 10'),
('Producto 11', 11, 110.00, 'Categoría 11'),
('Producto 12', 12, 120.00, 'Categoría 12'),
('Producto 13', 13, 130.00, 'Categoría 13'),
('Producto 14', 14, 140.00, 'Categoría 14'),
('Producto 15', 15, 150.00, 'Categoría 15');

-- Insercion de Compras 
INSERT INTO Compras (ID_usuario, ID_producto, cantidad, precio_unitario, fecha) VALUES
(1, 1, 2, 10.00, '2024-06-01'), (2, 2, 3, 20.00, '2024-06-02'), (3, 3, 4, 30.00, '2024-06-03'),
(4, 4, 5, 40.00, '2024-06-04'), (5, 5, 6, 50.00, '2024-06-05'), (6, 6, 7, 60.00, '2024-06-06'),
(7, 7, 8, 70.00, '2024-06-07'), (8, 8, 9, 80.00, '2024-06-08'), (9, 9, 10, 90.00, '2024-06-09'),
(10, 10, 11, 100.00, '2024-06-10'), (11, 11, 12, 110.00, '2024-06-11'), (12, 12, 13, 120.00, '2024-06-12'),
(13, 13, 14, 130.00, '2024-06-13'), (14, 14, 15, 140.00, '2024-06-14'), (15, 15, 16, 150.00, '2024-06-15');

-- Insercion de Deudas
INSERT INTO Deudas (ID_usuario, cantidad, acreedor, tasa_interes, fecha_vencimiento) VALUES
(1, 5000.00, 'Banco A', 5.00, '2025-06-01'),
(2, 6000.00, 'Banco B', 4.50, '2025-06-02'),
(3, 7000.00, 'Creditor C', 6.00, '2025-06-03'),
(4, 8000.00, 'Banco D', 3.75, '2025-06-04'),
(5, 9000.00, 'Creditor E', 7.00, '2025-06-05'),
(6, 10000.00, 'Banco F', 4.25, '2025-06-06'),
(7, 11000.00, 'Banco G', 5.50, '2025-06-07'),
(8, 12000.00, 'Creditor H', 6.75, '2025-06-08'),
(9, 13000.00, 'Banco I', 3.50, '2025-06-09'),
(10, 14000.00, 'Creditor J', 5.25, '2025-06-10'),
(11, 15000.00, 'Banco K', 4.00, '2025-06-11'),
(12, 16000.00, 'Banco L', 4.75, '2025-06-12'),
(13, 17000.00, 'Creditor M', 6.50, '2025-06-13'),
(14, 18000.00, 'Banco N', 3.25, '2025-06-14'),
(15, 19000.00, 'Creditor O', 7.25, '2025-06-15');

-- Insercion de Pagos
INSERT INTO Pagos (ID_deuda, cantidad, fecha_pago) VALUES
(1, 100.00, '2024-06-01'),
(2, 200.00, '2024-06-02'),
(3, 300.00, '2024-06-03'),
(4, 400.00, '2024-06-04'),
(5, 500.00, '2024-06-05'),
(6, 600.00, '2024-06-06'),
(7, 700.00, '2024-06-07'),
(8, 800.00, '2024-06-08'),
(9, 900.00, '2024-06-09'),
(10, 1000.00, '2024-06-10'),
(11, 1100.00, '2024-06-11'),
(12, 1200.00, '2024-06-12'),
(13, 1300.00, '2024-06-13'),
(14, 1400.00, '2024-06-14'),
(15, 1500.00, '2024-06-15');

-- Insercion de Metas financieras
INSERT INTO Metas_Financieras (ID_usuario, objetivo, monto_objetivo, fecha_inicio, estado) VALUES
(1, 'Viaje a Europa', 5000.00, '2024-01-01', 'En progreso'),
(2, 'Compra de coche', 20000.00, '2024-01-02', 'En progreso'),
(3, 'Ahorro para educación', 10000.00, '2024-01-03', 'En progreso'),
(4, 'Renovación del hogar', 15000.00, '2024-01-04', 'En progreso'),
(5, 'Fondo de emergencia', 8000.00, '2024-01-05', 'En progreso'),
(6, 'Viaje a Asia', 6000.00, '2024-01-06', 'En progreso'),
(7, 'Inversión en negocios', 25000.00, '2024-01-07', 'En progreso'),
(8, 'Compra de nueva tecnología', 5000.00, '2024-01-08', 'En progreso'),
(9, 'Ahorro para jubilación', 30000.00, '2024-01-09', 'En progreso'),
(10, 'Fondo para la educación de los hijos', 20000.00, '2024-01-10', 'En progreso'),
(11, 'Compra de segunda vivienda', 40000.00, '2024-01-11', 'En progreso'),
(12, 'Viaje a América', 3500.00, '2024-01-12', 'En progreso');


-- Insercion de Presupuestos
INSERT INTO Presupuestos (ID_usuario, mes, año, limite_gasto) VALUES
(1, 6, 2024, 1000.00), (2, 6, 2024, 1200.00), (3, 6, 2024, 1100.00),
(4, 6, 2024, 900.00), (5, 6, 2024, 800.00), (6, 6, 2024, 1400.00),
(7, 6, 2024, 1300.00), (8, 6, 2024, 1250.00), (9, 6, 2024, 1350.00),
(10, 6, 2024, 950.00), (11, 6, 2024, 850.00), (12, 6, 2024, 1500.00),
(13, 6, 2024, 1600.00), (14, 6, 2024, 1700.00), (15, 6, 2024, 1800.00);


-- Insercion de Transacciones recurrentes
INSERT INTO Transacciones_Recurrentes (ID_usuario, tipo_transaccion, cantidad, periodicidad) VALUES
(1, 'Gimnasio', 50.00, 'Mensual'), (2, 'Suscripción de Música', 10.00, 'Mensual'), (3, 'Suscripción de Video', 15.00, 'Mensual'),
(4, 'Donación', 25.00, 'Mensual'), (5, 'Gimnasio', 45.00, 'Mensual'), (6, 'Suscripción de Música', 5.00, 'Mensual'),
(7, 'Suscripción de Video', 20.00, 'Mensual'), (8, 'Donación', 30.00, 'Mensual'), (9, 'Gimnasio', 55.00, 'Mensual'),
(10, 'Suscripción de Música', 12.00, 'Mensual'), (11, 'Suscripción de Video', 18.00, 'Mensual'), (12, 'Donación', 35.00, 'Mensual'),
(13, 'Gimnasio', 60.00, 'Mensual'), (14, 'Suscripción de Música', 9.00, 'Mensual'), (15, 'Suscripción de Video', 22.00, 'Mensual');

-- Insercion de Ahorros
INSERT INTO Ahorros (ID_usuario, objetivo, cantidad_objetivo, cantidad_actual) VALUES
(1, 'Fondo de Emergencia', 5000.00, 2500.00), (2, 'Viaje a Europa', 3000.00, 1500.00), (3, 'Compra de Auto', 20000.00, 5000.00),
(4, 'Renovación del Hogar', 15000.00, 7500.00), (5, 'Ahorro Educativo', 10000.00, 5000.00), (6, 'Fondo de Emergencia', 5000.00, 3000.00),
(7, 'Viaje a Asia', 4000.00, 2000.00), (8, 'Compra de Auto', 25000.00, 12500.00), (9, 'Renovación del Hogar', 18000.00, 9000.00),
(10, 'Ahorro Educativo', 12000.00, 6000.00), (11, 'Fondo de Emergencia', 7000.00, 3500.00), (12, 'Viaje a Europa', 3500.00, 1750.00),
(13, 'Compra de Auto', 22000.00, 11000.00), (14, 'Renovación del Hogar', 16000.00, 8000.00), (15, 'Ahorro Educativo', 9000.00, 4500.00);

-- Insercion de Historial de ingresos y gastos 
INSERT INTO Historial_Ingresos_Gastos (ID_usuario, ID_transaccion, fecha, tipo_transaccion) VALUES
(1, 1, '2024-06-01', 'Ingreso'), (2, 2, '2024-06-02', 'Gasto'), (3, 3, '2024-06-03', 'Ingreso'),
(4, 4, '2024-06-04', 'Gasto'), (5, 5, '2024-06-05', 'Ingreso'), (6, 6, '2024-06-06', 'Gasto'),
(7, 7, '2024-06-07', 'Ingreso'), (8, 8, '2024-06-08', 'Gasto'), (9, 9, '2024-06-09', 'Ingreso'),
(10, 10, '2024-06-10', 'Gasto'), (11, 11, '2024-06-11', 'Ingreso'), (12, 12, '2024-06-12', 'Gasto'),
(13, 13, '2024-06-13', 'Ingreso'), (14, 14, '2024-06-14', 'Gasto'), (15, 15, '2024-06-15', 'Ingreso');


