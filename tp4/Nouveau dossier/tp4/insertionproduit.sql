--instruction sqlplus
SET VERIFY OFF
ACCEPT numprod PROMPT "entrer le numero du produit:" 
ACCEPT nomprod PROMPT "entrer le nom du produit:" 
ACCEPT description PROMPT "entrer la description du produit:" 
ACCEPT quantitestock PROMPT "entrer la quantite en stock:" 
ACCEPT numcat PROMPT "entrer le numero categorie:" 

--instruction sql
insert into produit values(upper('&numprod'), '&nomprod', '&description', '&quantitestock', upper('&numcat'));
commit;

SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql