select nom, adresse, telephone,
decode(nom, 'les muses', '******', telephone,
adresse, '23 rue vie', '******', telephone)
REVISED_TELEPHONE
from fournisseur;

PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql