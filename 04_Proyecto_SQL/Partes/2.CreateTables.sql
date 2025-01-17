-- Tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    ID_usuario INT AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_usuario)
);

-- Tabla Categorías de Gastos
CREATE TABLE IF NOT EXISTS Categorias_de_Gastos (
    ID_categoria INT AUTO_INCREMENT,
    descripcion VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_categoria)
);

-- Tabla Gastos
CREATE TABLE IF NOT EXISTS Gastos (
    ID_gasto INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    categoria INT NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (ID_gasto),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario),
    FOREIGN KEY (categoria) REFERENCES Categorias_de_Gastos(ID_categoria)
);

-- Tabla Ingresos
CREATE TABLE IF NOT EXISTS Ingresos (
    ID_ingreso INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    fuente VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (ID_ingreso),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

-- Tabla Inversiones
CREATE TABLE IF NOT EXISTS Inversiones (
    ID_inversion INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (ID_inversion),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

-- Tabla Proveedores
CREATE TABLE IF NOT EXISTS Proveedores ( 
	ID_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    direccion VARCHAR(200)
);

-- Tabla de Productos 
CREATE TABLE IF NOT EXISTS Productos (
	ID_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ID_proveedor INT,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50),
    FOREIGN KEY (ID_proveedor) REFERENCES Proveedores(ID_proveedor)
);

-- Tabla de Compras
CREATE TABLE IF NOT EXISTS Compras (
	ID_compras INT AUTO_INCREMENT PRIMARY KEY,
    ID_usuario INT NOT NULL,
    ID_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario),
    FOREIGN KEY (ID_producto) REFERENCES Productos(ID_producto)
);

-- Tabla Deudas
CREATE TABLE Deudas (
    ID_deuda INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    acreedor VARCHAR(100) NOT NULL,
    tasa_interes DECIMAL(5,2) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    PRIMARY KEY (ID_deuda),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);


-- Tabla Pagos
CREATE TABLE IF NOT EXISTS Pagos( 
	ID_pago INT AUTO_INCREMENT PRIMARY KEY,
    ID_deuda INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    fecha_pago DATE NOT NULL,
    FOREIGN KEY (ID_deuda) REFERENCES Deudas(ID_deuda)
);

-- Tabla Metas Financieras
CREATE TABLE IF NOT EXISTS Metas_Financieras (
    ID_meta INT AUTO_INCREMENT PRIMARY KEY,
    ID_usuario INT NOT NULL,
    objetivo TEXT,
    monto_objetivo DECIMAL(10,2),
    fecha_inicio DATE,
    estado VARCHAR(20),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);


-- Tabla Presupuestos
CREATE TABLE IF NOT EXISTS Presupuestos (
    ID_presupuesto INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    mes INT NOT NULL,
    año INT NOT NULL,
    limite_gasto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID_presupuesto),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

-- Tabla Transacciones Recurrentes
CREATE TABLE IF NOT EXISTS Transacciones_Recurrentes (
    ID_recurrente INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    tipo_transaccion VARCHAR(45) NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    periodicidad VARCHAR(45) NOT NULL,
    PRIMARY KEY (ID_recurrente),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

-- Tabla Ahorros
CREATE TABLE IF NOT EXISTS Ahorros (
    ID_ahorro INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    objetivo VARCHAR(100) NOT NULL,
    cantidad_objetivo DECIMAL(10,2) NOT NULL,
    cantidad_actual DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID_ahorro),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

-- Tabla Historial de Ingresos y Gastos
CREATE TABLE IF NOT EXISTS Historial_Ingresos_Gastos (
    ID_historial INT AUTO_INCREMENT,
    ID_usuario INT NOT NULL,
    ID_transaccion INT NOT NULL,
    fecha DATE NOT NULL,
    tipo_transaccion VARCHAR(45) NOT NULL,
    PRIMARY KEY (ID_historial),
    FOREIGN KEY (ID_usuario) REFERENCES Usuarios(ID_usuario)
);

