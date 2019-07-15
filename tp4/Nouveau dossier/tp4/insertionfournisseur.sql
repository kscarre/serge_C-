--instruction sqlplus
SET VERIFY OFF
ACCEPT numfour PROMPT "entrer le numero du fournisseur:" 
ACCEPT nom PROMPT "entrer le nom :" 
ACCEPT adresse PROMPT "entrer l'adresse:" 
ACCEPT province PROMPT "entrer la province:" 
ACCEPT telephone PROMPT "entrer le numero:" 


--instruction sql
insert into fournisseur values(upper('&numfour'),'&nom','&adresse', '&province', '&telephone');
commit;

SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql