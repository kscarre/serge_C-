-- Instruction SQLPLUS
SET VERIFY OFF
PROMPT *******   INSERTION FOURNISSEUR    ********
ACCEPT varnumfour PROMPT "Entrer le numero le numero du fournisseurs: "
ACCEPT varnom PROMPT "Entrer le nom du fournisseurs : "
ACCEPT telephone PROMPT "Entrer le telephone : "
ACCEPT varadrsse PROMPT "Entrer l adresse : "
ACCEPT varprovince PROMPT "Entrer la province : "
ACCEPT varcodepostal PROMPT "Entrer le code postal: "
-- Instruction SQL
Insert into fournisseurs
Values 	(upper('&varnumfour'), upper('&varNOM'),upper('&telephone'),'&varadrsse',upper('&varprovince'),upper('&varcodepostal'));

COMMIT;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql

--Insert into fournisseurs
--Values 	(upper('four001'), upper('belle apparence'),upper('(514)2236723'),upper('67 rue belle ville'),upper('qc'),upper(''));

--Insert into fournisseurs
--Values 	(upper('four002'), upper('les muses'),upper('(450)6783245'),upper('23 rue vie'),upper('qc'),upper(''));

I--nsert into fournisseurs
--Values 	(upper('four003'), upper('les vedettes'),upper('(450)3454666'),upper('1 rue etoile'),upper('qc'),upper(''));
