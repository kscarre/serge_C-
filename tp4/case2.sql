select nom, adresse, telephone,
	case nom 	
			when upper('les muses') then 'Excellent fournisseur'  
			when upper('belle apparence') then 'bon fournisseur' 
			else 'ordinaire'
	end "DESCRIPTION"
from fournisseurs;
PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql
