create  or replace view coutachat as select sum(prixunite) as couttotal 
from produitfourni pf where pf.numfour in (select f.numfour from fournisseur f where nomfour='les muses');

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenuinsertion.sql