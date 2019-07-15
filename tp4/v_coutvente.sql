-- Instruction SQLPLUS
PROMPT *******   vue produits vendus    ********
SET VERIFY OFF
-- affichage en sqlplus
Create or replace view v_coutventes as select sum (PRIXVENTE * QUANTITEVENDUE) as totalvente
From venteclients 
Where numfour =upper('four001');

Select * from v_coutventes;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_vues.sql