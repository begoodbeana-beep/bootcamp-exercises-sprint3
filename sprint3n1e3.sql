use transactions;
describe transaction;
INSERT INTO company (id, country)
VALUES ('b-9999', 'País Exemplo');

INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date, company_id)
VALUES ('CcU-9999', 'TR000000000000000000000', '0000000000000000', '0000', '000', '01/25/25', 'b-9999');

INSERT INTO transaction (id, credit_card_id, company_id, user_id, lat, longitude, amount, declined)
VALUES ('108B1D1D-5B23-A76C-55EF-C568E49A99DD', 'CcU-9999', 'b-9999', 9999, 829.999, -117.999, 111.11, 0);

SELECT *
FROM transaction
WHERE id = '108B1D1D-5B23-A76C-55EF-C568E49A99DD';
