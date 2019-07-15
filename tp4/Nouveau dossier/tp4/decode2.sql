select nomfour, adresse, telephone,
decode(nomfour, 'les muses', '******', telephone,
adresse, '23 rue vie', '******', telephone)
REVISED_TELEPHONE
from fournisseur;

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenufonction.sql