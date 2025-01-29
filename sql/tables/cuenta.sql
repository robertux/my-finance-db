CREATE TABLE Cuenta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    estado CHAR(1) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuario(id)
);