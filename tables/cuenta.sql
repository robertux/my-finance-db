CREATE TABLE Cuenta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    -- estado: A=Active, I=Inactive, D=Deleted
    estado CHAR(1) NOT NULL CHECK (estado IN ('A', 'I', 'D')),
    saldo DECIMAL(10, 2) NOT NULL,
    usuarioId INT NOT NULL
);