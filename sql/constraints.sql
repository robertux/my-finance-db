ALTER TABLE cuenta
ADD CONSTRAINT fk_usuario
FOREIGN KEY (usuarioId) REFERENCES usuario(id);

ALTER TABLE transaccion
ADD CONSTRAINT fk_cuenta
FOREIGN KEY (cuentaId) REFERENCES cuenta(id);