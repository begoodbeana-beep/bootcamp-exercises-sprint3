______________________________________________________________________________________________________________________

Level 3

Excersise 1 - Organize the database and establish the connections (Foreign Keys) required by the marketing department's diagram - Queries created and saved in sprint3n3e1.sql

Step-by-Step Tasks:
- Table Selection: First, I selected the active database using the USE transactions; command to ensure all changes were applied to the correct place.
- Cleaning the Central Table (TRUNCATE): I cleared the transaction table. This was a critical step because the existing data had "broken links" (IDs that didn't exist in other tables), which prevented the creation of the official diagram.
- Establishing Connections (ALTER TABLE): With the table empty, I created the Foreign Keys. This step "locked" the database rules, ensuring that every transaction must now be linked to a real user, a real company, and a real credit card.
- Restoring Original Data: After the rules were set, I used my SQL backup file to re-import the original records. Since the structure was now correct, the database accepted the data perfectly.
- Manual Data Entry: I manually added the specific transaction requested for the assignment. To make this work, I followed a strict order:
- 5.1: I registered the new User (9999).
- 5.2: I registered the new Company (b-9999).
- 5.3: I registered the new Credit Card (CcU-9999).
- 5.4: Finally, I inserted the Transaction record.
- Final Verification: I used the SELECT command to confirm that the data was restored and the connections were active.
By following these steps, I fixed the structural errors, restored the information, and ensured the database is now 100% consistent with the required diagram.

Exercise 2 - Report "InformeTecnico" - Queries created and saved in sprint3n3e2.sql

- Made a "View," this way, the marketing team doesn't have to write the code every time
- Went into the four tables (transaction, user, credit_card, and company) and picked only the columns that it was asked for
- Used the AS command to give them names in Spanish, like Nombre_Compania
- Matched the IDs (WHERE)
- Sorted the List (ORDER BY). I organized the list so the newest (or highest) IDs show up at the top

Now, anyone can see exactly who bought what, where they bought it, and which card they used, all in one clean table.
