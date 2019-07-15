select p.nom, c.nom 
from produits p 
right outer join categories c on (p.numcat = c.numcat );
PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql