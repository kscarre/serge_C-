-- Instruction SQLPLUS
PROMPT *******   INSERTION CLIENT    ********
SET VERIFY OFF
ACCEPT varnumclient PROMPT "Entrer le numero du client: "
ACCEPT varnomclient PROMPT "Entrer le nom du client : "
ACCEPT varnorue PROMPT "Entrer le numero de la rue : "
ACCEPT varnomrue PROMPT "Entrer le no,m de la rue  : "
ACCEPT varville PROMPT "Entrer la ville : "
ACCEPT varprovince PROMPT "Entrer la province: "
ACCEPT varcodepostal PROMPT "Entrer le code postal: "
ACCEPT varpays PROMPT "Entrer le pays: "
-- Instruction SQL
Insert into clients
Values 	(upper('&varnumclient'), upper('&varnomclient'),upper('&varnorue'),upper('&varnomrue'),
upper('&varville'),upper('&varprovince'),upper('&varcodepostal'),upper('&varpays'));

COMMIT;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql

--Insert into clients
--Values 	(upper('c2'), upper('les muses'),upper('23'),upper('rue vie'),upper(''),upper('qc'),upper(''),upper(''));

--Insert into clients
--Values 	(upper('c3'), upper('belle vie'),upper('1'),upper('rue etoile'),-upper(''),upper('qc'),upper(''),upper(''));
