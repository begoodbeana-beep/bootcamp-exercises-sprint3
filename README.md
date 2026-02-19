Level 1

Exercise 1 – Create credit_card Table and Relationships - Queries created and saved in sprint3n1e1.sql

- Table created: credit_card
- Relationship created between:
   1.1. credit_card and company
   1.2. transaction and credit_card
- Commands executed:
       CREATE TABLE credit_card
       ALTER TABLE transaction ADD FOREIGN KEY

Schema diagram updated showing: diagramacreditcard.png
All tables connected with foreign keys.

Exercise 2 – Update Credit Card IBAN - Queries created and saved in sprint3n1e2.sql

Corrected IBAN for credit card ID CcU-2938.

- Update executed:
  UPDATE credit_card SET iban = 'TR323456312213576817699999'

- Validation:
  SELECT statement used to confirm the change

Change successfully applied and verified.

Exercise 3 – Insert New Transaction with Foreign Keys - Queries created and saved in sprint3n1e3.sql

- Inserted new transaction:
  ID: 108B1D1D-5B23-A76C-55EF-C568E49A99DD

Initial insert failed due to foreign key constraints.

- Steps performed:
  1. Created missing company (b-9999)
  2. Created missing credit card (CcU-9999)

Inserted transaction successfully. Demonstrated understanding of referential integrity and foreign key dependencies.

Exercise 4 – Remove Column from Table - Queries created and saved in sprint3n1e4.sql

- Removed column pan from table credit_card.
  Command executed:
       ALTER TABLE credit_card
       DROP COLUMN pan
- Structure verified using DESCRIBE statement.
_____________________________________________________________________________________

Level 2

Exercise 1 – Delete Transaction - Queries created and saved in sprint3n2e1.sql

- Deleted record with ID: 000447FE-B650-4DCF-85DE-C7ED0EE1CAAD
  Command executed:
    DELETE FROM transaction WHERE id = '000447FE-B650-4DCF-85DE-C7ED0EE1CAAD'

Record successfully removed.

Exercise 2 – Create Marketing View - Queries created and saved in sprint3n2e2.sql

- Created view VistaMarketing including: 
  1. company_name
  2. phone
  3. country
  4. average_purchase (AVG amount)

- Used:
  JOIN between company and transaction
  GROUP BY
  ORDER BY average descending

View saved and validated with SELECT.

Exercise 3 – Filter View by Country - Queries created and saved in sprint3n2e3.sql

- Filtered VistaMarketing to show only companies located in Germany.
- Query executed:
   SELECT * FROM VistaMarketing WHERE country = 'Germany'

Results returned only German companies.
______________________________________________________________________________________________________________________

Level 3

Excersise 1 - Organize the database and establish the connections (Foreign Keys) required by the marketing department's diagram - Queries created and saved in sprint3n3e1.sql

Step-by-Step Tasks:
- Table Selection: First, I selected the active database using the USE transactions; command to ensure all changes were applied to the correct place.
- Cleaning the Central Table (TRUNCATE): I cleared the transaction table. This was a critical step because the existing data had "broken links" (IDs that didn't exist in other tables), which prevented the creation of the official diagram.
- Establishing Connections (ALTER TABLE): With the table empty, I created the Foreign Keys. This step "locked" the database rules, ensuring that every transaction must now be linked to a real user, a real company, and a real credit card.
- Restoring Original Data: After the rules were set, I used my SQL backup file to re-import the original records. Since the structure was now correct, the database accepted the data perfectly.
- Manual Data Entry: I manually added the specific transaction requested for the assignment. To make this work, I followed a strict order:
- 1: I registered the new User (9999).
- 2: I registered the new Company (b-9999).
- 3: I registered the new Credit Card (CcU-9999).
- 4: Finally, I inserted the Transaction record.
- Final Verification: I used the SELECT command to confirm that the data was restored and the connections were active.
By following these steps, I fixed the structural errors, restored the information, and ensured the database is now 100% consistent with the required diagram.

Exercise 2 - Report "InformeTecnico" - Queries created and saved in sprint3n3e2.sql

- Made a "View," this way, the marketing team doesn't have to write the code every time
- Went into the four tables (transaction, user, credit_card, and company) and picked only the columns that it was asked for
- Used the AS command to give them names in Spanish, like Nombre_Compania
- Matched the IDs (WHERE)
- Sorted the List (ORDER BY). I organized the list so the newest (or highest) IDs show up at the top

Now, anyone can see exactly who bought what, where they bought it, and which card they used, all in one clean table.
