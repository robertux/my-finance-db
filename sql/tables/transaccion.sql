CREATE TABLE Transaccion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cuentaId INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    tipo CHAR(1) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado CHAR(1) NOT NULL,
    descripcion VARCHAR(255),
    confirmacion INT,
    etiqueta VARCHAR(255),
    FOREIGN KEY (cuentaId) REFERENCES Cuenta(id)
);