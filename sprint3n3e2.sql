use transactions;

CREATE VIEW InformeTecnico AS
SELECT 
    transaction.id AS ID_Transaccion,
    user.name AS Nombre_Usuario,
    user.surname AS Apellido_Usuario,
    credit_card.iban AS IBAN_Tarjeta,
    company.company_name AS Nombre_Compania
FROM 
    transaction, user, credit_card, company
WHERE 
    transaction.user_id = user.id
    AND transaction.credit_card_id = credit_card.id
    AND transaction.company_id = company.id;

SELECT * FROM InformeTecnico
ORDER BY ID_Transaccion DESC;