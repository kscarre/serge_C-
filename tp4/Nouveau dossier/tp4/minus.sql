select nomfour from fournisseur f, venteclient v where f.numfour= v.numfour
minus
select nomclient from client c, venteclient v where c.numclient=v.numclient;
PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuopensemblistes.sql