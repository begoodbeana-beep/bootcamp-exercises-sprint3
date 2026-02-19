use transactions;

CREATE TABLE credit_card (
    id VARCHAR(15) PRIMARY KEY,
    iban VARCHAR(50),
    pan VARCHAR(20),
    pin VARCHAR(10),
    cvv VARCHAR(10),
    expiring_date VARCHAR(20),  -- VARCHAR para aceitar MM/DD/YY
    company_id VARCHAR(20),
    FOREIGN KEY (company_id) REFERENCES company(id)
);

use transactions;
ALTER TABLE transaction
ADD CONSTRAINT fk_transaction_credit_card
FOREIGN KEY (credit_card_id)
REFERENCES credit_card(id);