-- Instruction SQLPLUS
PROMPT *******   vue produits achetes    ********
SET VERIFY OFF
-- affichage en sqlplus
Create or replace view v_coutachats as select sum (PRIXUNITE*QUANTITE) as totalachat 
From produitfournis 
Where numfour = upper('four001');

Select * from v_coutachats;

SET VERIFY ON
PAUSE Appuyer entrer pour continuer
@D:\teccart\Ete\BD_relationnel\tp4\menu_vues.sql