-- Instruction SQLPLUS
SET VERIFY OFF
PROMPT *******   INSERTION CATEGORIE    ********
ACCEPT varnumcat PROMPT "Entrer le numero de la cathegorie: "
ACCEPT varnom PROMPT "Entrer le nom du la categorie : "
ACCEPT vardescription PROMPT "Entrer la description : "
-- Instruction SQL
Insert into categories
Values 	(upper('&varnumcat'), upper('&varnom'),upper('&vardescription'));

COMMIT;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql
