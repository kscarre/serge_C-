-- Instruction SQLPLUS
SET VERIFY OFF
ACCEPT numfour PROMPT "Entrer le numero du fournisseurs: "
ACCEPT numprod PROMPT "Entrer le numero du produit : "
ACCEPT dateachat PROMPT "Entrer la date achat : "
ACCEPT prixunite PROMPT "Entrer le prix unitaire : "
ACCEPT quantite PROMPT "Entrer la quantite: "
-- Instruction SQL
Insert into produitfournis
Values 	(upper('&numfour'), upper('&numprod'),to_date('&dateachat','dd-mm-yyyy'),('&prixunite'),('&quantite'));
COMMIT;

Update produits
Set quantitestock = quantitestock + &quantite
Where numprod = ( select numprod
				From produitfournis
				Where upper(numfour) = upper('&numfour')
				and upper(numprod) =upper('&numprod')				
				And upper(dateachat) = upper(to_date('&dateachat','dd-mm-yyyy')));

commit;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_insertion.sql