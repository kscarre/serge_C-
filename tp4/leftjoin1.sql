select c.nom, p.nom
from categories c 
left outer join produits p on (c.numcat = p.numcat);

@D:\teccart\Ete\BD_relationnel\tp4\menu.sql

