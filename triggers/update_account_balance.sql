DELIMITER //

CREATE TRIGGER trg_update_account_balance 
AFTER INSERT ON Transaccion
FOR EACH ROW
BEGIN
    IF NEW.estado = 'A' THEN
        IF NEW.tipo = 'C' THEN
            UPDATE Cuenta 
            SET saldo = saldo + NEW.monto 
            WHERE id = NEW.cuentaId;
        ELSE -- tipo = 'D'
            UPDATE Cuenta 
            SET saldo = saldo - NEW.monto 
            WHERE id = NEW.cuentaId;
        END IF;
    END IF;
END//

DELIMITER ;