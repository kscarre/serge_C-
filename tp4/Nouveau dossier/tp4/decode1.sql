select nomprod, numcat, description,
decode(numcat, upper('cat001'), '*****', description)
REVISED_DESCRIPTION
from produit;

PAUSE Appuyer sur une touche...
@G:\oracletpete2019\tp4\sousmenufonction.sql