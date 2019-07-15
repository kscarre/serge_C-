--instruction sqlplus
SET VERIFY OFF
ACCEPT numclient PROMPT "entrer le numero du client:" 
ACCEPT numprod PROMPT "entrer le numero du produit :" 
ACCEPT numfour PROMPT "entrer le numero du fournisseur:" 
ACCEPT datevente PROMPT "entrer la date:" 
ACCEPT prixvente PROMPT "entrer le prix de vente:" 
ACCEPT quantitevendue PROMPT "entrer la quantite:" 
--instruction sql
insert into venteclient values(upper ('&numclient'), upper('&numprod'), upper( '&numfour'), to_date('&datevente','dd-mm-yyyy'), '&prixvente', '&quantitevendue');
commit;

--mettre a jour quantite stock
update produit set quantitestock = quantitestock - &quantitevendue
where numprod in (select numprod from venteclient where upper (numprod)= upper ('&numprod') and quantitevendue ='&quantitevendue'
and datevente=to_date('&date','dd-mm-yyyy') and upper(numclient)= upper('&numclient') and upper (numfour)= upper ('&numfour'));
commit;
SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql