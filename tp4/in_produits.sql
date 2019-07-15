-- Instruction SQLPLUS
PROMPT *******   INSERTION PRODUIT    ********
SET VERIFY OFF
ACCEPT numprod PROMPT "Entrer le numero du produit: "
ACCEPT nom PROMPT "Entrer le nom du produit : "
ACCEPT numcat PROMPT "Entrer le numero de la categorie : "
ACCEPT quantitestock PROMPT "Entrer la quantite : "
-- Instruction SQL
Insert into produits
Values 	(upper('&numprod'), upper('&nom'),upper('&numcat'),upper('&quantitestock'));

COMMIT;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql
