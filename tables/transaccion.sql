CREATE TABLE Transaccion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cuentaId INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    -- tipo: D=Debit (withdrawal), C=Credit (deposit)
    tipo CHAR(1) NOT NULL CHECK (tipo IN ('D', 'C')),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- estado: A=Active, I=Inactive, D=Deleted
    estado CHAR(1) NOT NULL CHECK (estado IN ('A', 'I', 'D')),
    descripcion VARCHAR(255),
    confirmacion INT,
    etiqueta VARCHAR(255),
    FOREIGN KEY (cuentaId) REFERENCES Cuenta(id)
);