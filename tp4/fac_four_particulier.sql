-- Instruction SQLPLUS
PROMPT *******   FACTURE PAR FOURNISSEUR    ********
SET VERIFY OFF
ACCEPT numfour PROMPT "Entrer le numero du fournisseur : "
ACCEPT dateachat PROMPT "Entrer la date d achat : "
-- affichage en sqlplus
Column NUMFOUR heading NUMFOUR format A10
Column soustotal heading soustotal format $99999999.99
Column tva heading tva format $99999999.99
Column total heading total format $99999999.99

Select NUMFOUR, sum(QUANTITE * PRIXUNITE) as soustotal, sum(QUANTITE * PRIXUNITE *0.05) as tps, sum(QUANTITE * PRIXUNITE *0.10) as tvq, sum(QUANTITE * PRIXUNITE *1.15) "Prix Total"
From produitfournis
Where dateachat = to_date ('&dateachat','dd-mm-yyyy')
Group by NUMFOUR
Having upper(NUMFOUR) = upper('&NUMFOUR');


Clear columns


SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_factures.sql


--Select NUMFOUR, sum(QUANTITE * PRIXUNITE) as soustotal From produitfournis
--Where dateachat = to_date ('12-07-2018','dd-mm-yyyy')
--Group by NUMFOUR
--Having upper(NUMFOUR) = upper('four001');

