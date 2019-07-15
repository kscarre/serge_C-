-- Instruction SQLPLUS
PROMPT *******   FACTURE PAR CLIENT    ********
SET VERIFY OFF
-- affichage en sqlplus
Column numclient heading numclient format A10
Column soustotal heading soustotal format $99999999,99
Column tva heading tva format $99999999,99
Column total heading total format $99999999,99

Select numclient, sum(quantitevendue * PRIXVENTE) as soustotal, sum(quantitevendue * PRIXVENTE *0.05) as tps, sum(quantitevendue * PRIXVENTE *0.10) as tvq, sum(quantitevendue * PRIXVENTE *1.15) "Prix Total"
From venteclients
Group by numclient;

Clear columns


SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_factures.sql

