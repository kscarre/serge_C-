-- Instruction SQLPLUS
PROMPT *******   FACTURE PAR CLIENT    ********
SET VERIFY OFF
-- affichage en sqlplus
Column NUMFOUR heading NUMFOUR format A10
Column soustotal heading soustotal format $99999999.99
Column tva heading tva format $99999999.99
Column total heading total format $99999999.99

Select NUMFOUR, sum(QUANTITE * PRIXUNITE) as soustotal, sum(QUANTITE * PRIXUNITE *0.05) as tps, sum(QUANTITE * PRIXUNITE *0.10) as tvq, sum(QUANTITE * PRIXUNITE *1.15) "Prix Total"
From produitfournis
Group by NUMFOUR;
Clear columns


SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_factures.sql

