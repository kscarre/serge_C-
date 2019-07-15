select p.nom, c.numcat, description,
	decode(c.numcat, upper ('cat001'), '*****' , 
		description) "DESCRIPTION"
from produits p, categories c
where p.numcat = c.numcat;
PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql
