use transactions;
SELECT id, iban, pan, pin, cvv, expiring_date, company_id
FROM credit_card
WHERE id = 'CcU-2938';


UPDATE credit_card
SET iban = 'TR323456312213576817699999'
WHERE id = 'CcU-2938';

SELECT id, iban, pan, pin, cvv, expiring_date, company_id
FROM credit_card
WHERE id = 'CcU-2938';
