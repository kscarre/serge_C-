-- Instruction SQLPLUS
PROMPT *******   FACTURE PAR CLIENT    ********
SET VERIFY OFF
-- affichage en sqlplus
Create or replace view v_marge as select (v_coutventes.totalvente - v_coutachats.totalachat) as marge 
From v_coutachats, v_coutventes;

Select * from v_marge;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_vues.sql
