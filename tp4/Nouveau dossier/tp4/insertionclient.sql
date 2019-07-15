--instruction sqlplus
SET VERIFY OFF
ACCEPT numclient PROMPT "entrer le numero du client:" 
ACCEPT nomclient PROMPT "entrer le nom du client:" 
ACCEPT norue PROMPT "entrer le numero de la rue:" 
ACCEPT nomrue PROMPT "entrer le nom de la rue:" 
ACCEPT ville PROMPT "entrer la ville:" 
ACCEPT province PROMPT "entrer la province:" 
ACCEPT telephone PROMPT "entrer le telephone:" 

--instruction sql
insert into client values(upper('&numclient'), '&nomclient','&norue', '&nomrue', '&ville', '&province', '&telephone');
commit;

SET VERIFY ON

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql