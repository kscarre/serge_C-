CLEAR SCREEN
PROMPT *******   MENU FACTURATION  **********
PROMPT * 1: facture tous les fournisseurs   *
PROMPT * 2: facture tous les clients        *
PROMPT * 3: facture fournisseur particulier *
PROMPT * 4: facture client particulier      *
PROMPT * 5: Quitter                         *
PROMPT **************************************
ACCEPT varselection PROMPT " Entrer une option entre 1 et 5: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&varselection'
WHEN '1' THEN 'fac_fournisseurs.sql'
WHEN '2' THEN 'fac_clients.sql'
WHEN '3' THEN 'fac_four_particulier.sql'
WHEN '4' THEN 'fac_client_particulier.sql'
WHEN '5' THEN 'sous_quitter.sql'
ELSE 'menu_factures.sql'
END AS script
FROM dual;
SET TERM ON
@D:\teccart\Ete\BD_relationnel\tp4\&v_script
