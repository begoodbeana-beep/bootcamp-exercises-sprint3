use transactions;
describe company;
CREATE VIEW VistaMarketing AS
SELECT 
    c.company_name AS company_name,
    c.phone AS contact_phone,
    c.country AS country,
    AVG(t.amount) AS average_purchase
FROM company c
JOIN transaction t
ON c.id = t.company_id
GROUP BY c.id, c.company_name, c.phone, c.country
ORDER BY average_purchase DESC;

SELECT *
FROM VistaMarketing;
