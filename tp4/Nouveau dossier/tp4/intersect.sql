select nomfour from fournisseur f, venteclient v where f.numfour= v.numfour
intersect
select nomclient from client c, venteclient v where c.numclient=v.numclient 
order by nomfour asc;

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuopensemblistes.sql