select p.nom, c.numcat, description,
	case c.numcat 	
			when upper ('cat001') then 'Excellent'  
			when upper ('cat002') then 'Moyen' 
			else 'Passable' 
	end "DESCRIPTION"
from produits p, categories c
where p.numcat = c.numcat;

PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql