select nomfour, adresse, telephone,
case 
	nomfour when 'les muses' then 'Excellent fournisseur'  
	when 'belle apparence' then 'bon fournisseur' 
	else 'ordinaire' 
 end
"REVISED_DESCRIPTION"
from fournisseur;

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenufonction.sql