select nomprod, numcat, description,
case 
	numcat when upper ('cat001') then 'Excellent'  
	when upper ('cat002') then 'Moyen' 
	else 'Passable' 
 end
"REVISED_DESCRIPTION"
from produit;

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenufonction.sql