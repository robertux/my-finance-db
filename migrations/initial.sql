-- Initial migration for MyFinance database

-- Create the database
CREATE DATABASE MyFinance;

-- Use the database
USE MyFinance;

-- Create the Cuenta table
CREATE TABLE Cuenta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    -- estado: A=Active, I=Inactive, D=Deleted
    estado CHAR(1) NOT NULL CHECK (estado IN ('A', 'I', 'D')),
    saldo DECIMAL(10, 2) NOT NULL,
    usuarioId INT NOT NULL
);

-- Create the Transaccion table
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

-- Create the Usuario table
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    -- estado: A=Active, I=Inactive, D=Deleted
    estado CHAR(1) NOT NULL CHECK (estado IN ('A', 'I', 'D'))
);