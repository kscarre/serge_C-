update produitfournis
set prixunite = decode 	(numfour, 	upper ('four001'), prixunite*0.95, 
									upper ('four002'), prixunite*0.90,
									prixunite*0.85);
--commit;
PAUSE Appuyer sur une touche...
@D:\teccart\Ete\BD_relationnel\tp4\menu.sql