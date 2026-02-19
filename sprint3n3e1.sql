use transactions;
truncate transaction; 

ALTER TABLE transaction ADD FOREIGN KEY (user_id) REFERENCES `user`(id);

ALTER TABLE transaction ADD FOREIGN KEY (company_id) REFERENCES company(id);

ALTER TABLE transaction ADD FOREIGN KEY (credit_card_id) REFERENCES credit_card(id);

INSERT INTO `user` (id, name) VALUES (9999, 'Usuario de Prueba');

INSERT INTO company (id, company_name) VALUES ('b-9999', 'Empresa de Prueba');

INSERT INTO credit_card (id) VALUES ('CcU-9999');

INSERT INTO transaction (
    id, 
    credit_card_id, 
    company_id, 
    user_id, 
    lat, 
    longitude, 
    amount, 
    declined
) VALUES (
    '108B1D1D-5B23-A76C-55EF-C568E49A99DD', 
    'CcU-9999', 
    'b-9999', 
    9999, 
    829.999, 
    -117.999, 
    111.11, 
    0
);