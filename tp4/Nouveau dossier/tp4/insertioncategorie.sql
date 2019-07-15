--instruction sqlplus
SET VERIFY OFF
ACCEPT numcat PROMPT "entrer le numero categorie :" 
ACCEPT nom PROMPT "entrer le nom :" 
ACCEPT description PROMPT "entrer la description:"  

--instruction sql
insert into categorie values(upper('&numcat'),'&nom', '&description');
commit;

SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql