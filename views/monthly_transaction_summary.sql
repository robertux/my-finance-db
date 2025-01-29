CREATE OR REPLACE VIEW vw_monthly_transaction_summary AS
SELECT 
    YEAR(t.fecha) as year,
    MONTH(t.fecha) as month,
    u.nombre as nombre_usuario,
    c.numero as numero_cuenta,
    COUNT(CASE WHEN t.tipo = 'D' THEN 1 END) as debit_count,
    COUNT(CASE WHEN t.tipo = 'C' THEN 1 END) as credit_count,
    COALESCE(SUM(CASE WHEN t.tipo = 'D' THEN t.monto ELSE 0 END), 0) as total_debits,
    COALESCE(SUM(CASE WHEN t.tipo = 'C' THEN t.monto ELSE 0 END), 0) as total_credits,
    COALESCE(SUM(CASE WHEN t.tipo = 'C' THEN t.monto ELSE -t.monto END), 0) as net_amount
FROM Transaccion t
INNER JOIN Cuenta c ON t.cuentaId = c.id
INNER JOIN Usuario u ON c.usuarioId = u.id
WHERE t.estado = 'A'
GROUP BY YEAR(t.fecha), MONTH(t.fecha), u.nombre, c.numero;

-- Usage example:
-- SELECT * FROM vw_monthly_transaction_summary 
-- WHERE nombre_usuario = 'John Doe' AND numero_cuenta = 123456 
-- ORDER BY year, month;