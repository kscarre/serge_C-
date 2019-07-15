-- Instruction SQLPLUS
SET VERIFY OFF
ACCEPT NUMCLIENT PROMPT "Entrer le numero du client: "
ACCEPT NUMPROD PROMPT "Entrer le numero du produit : "
ACCEPT DATEVENTE PROMPT "Entrer la date de la vente au format dd-mm-yyyy : "
ACCEPT NUMFOUR PROMPT "Entrer le num du fournisser : "
ACCEPT QUANTITEVENDUE PROMPT "Entrer la quantite : "
ACCEPT PRIXVENTE PROMPT "Entrer le prix unitaire: "
-- Instruction SQL
Insert into venteclients
Values 	(upper('&NUMCLIENT'), upper('&NUMPROD'),to_date('&DATEVENTE','dd-mm-yyyy'),upper('&NUMFOUR'),('&QUANTITEVENDUE'),('&PRIXVENTE'));
COMMIT;

Update produits
Set quantitestock = quantitestock - &QUANTITEVENDUE
Where numprod = ( select numprod
				From venteclients
				Where upper(numfour) = upper('&numfour')
				and upper(numprod) =upper('&numprod')				
				And upper(DATEVENTE) = upper(to_date('&DATEVENTE','dd-mm-yyyy')));
commit;
SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql