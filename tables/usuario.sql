CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    -- estado: A=Active, I=Inactive, D=Deleted
    estado CHAR(1) NOT NULL CHECK (estado IN ('A', 'I', 'D'))
);