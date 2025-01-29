-- SQL queries for interacting with the MyFinance database

-- Insert a new user
INSERT INTO Usuario (nombre, correo, password, estado) VALUES (?, ?, ?, ?);

-- Retrieve all users
SELECT * FROM Usuario;

-- Update user information
UPDATE Usuario SET nombre = ?, correo = ?, password = ?, estado = ? WHERE id = ?;

-- Delete a user
DELETE FROM Usuario WHERE id = ?;

-- Insert a new account
INSERT INTO Cuenta (numero, estado, saldo, usuarioId) VALUES (?, ?, ?, ?);

-- Retrieve all accounts
SELECT * FROM Cuenta;

-- Update account information
UPDATE Cuenta SET numero = ?, estado = ?, saldo = ? WHERE id = ?;

-- Delete an account
DELETE FROM Cuenta WHERE id = ?;

-- Insert a new transaction
INSERT INTO Transaccion (cuentaId, monto, tipo, fecha, estado, descripcion, confirmacion, etiqueta) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

-- Retrieve all transactions
SELECT * FROM Transaccion;

-- Update transaction information
UPDATE Transaccion SET cuentaId = ?, monto = ?, tipo = ?, fecha = ?, estado = ?, descripcion = ?, confirmacion = ?, etiqueta = ? WHERE id = ?;

-- Delete a transaction
DELETE FROM Transaccion WHERE id = ?;