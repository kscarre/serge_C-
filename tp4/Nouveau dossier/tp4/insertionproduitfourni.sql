--instruction sqlplus
SET VERIFY OFF
ACCEPT numfour PROMPT "entrer le numero du fournisseur:" 
ACCEPT numprod PROMPT "entrer le numero du produit :" 
ACCEPT dateachat PROMPT "entrer la date:" 
ACCEPT prixunite PROMPT "entrer le prix:" 
ACCEPT quantite PROMPT "entrer la quantite:" 
--instruction sql
insert into produitfourni values(upper('&numfour'), upper('&numprod'), to_date('&date','dd-mm-yyyy'),'&prixunite', '&quantite');
commit;

--mettre a jour quantite stock
update produit set quantitestock = quantitestock + &quantite
where numprod in (select numprod from produitfourni where upper (numprod)= upper ('&numprod') and quantite ='&quantite'
and dateachat = to_date('&date','dd-mm-yyyy') and upper (numfour)= upper('&numfour'));
commit;

SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql