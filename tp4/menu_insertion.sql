CLEAR SCREEN
PROMPT *******   MENU INSERTION    ********
PROMPT * 1: Insertion dans fournisseurs   *
PROMPT * 2: Insertion dans client         *
PROMPT * 3: Insertion dans categories     *
PROMPT * 4: Insertion dans produits       *
PROMPT * 5: Insertion dans produitfourni  *
PROMPT * 6: Insertion dans ventclient     *
PROMPT * 7: Quitter                       *
PROMPT ************************************
ACCEPT varselection PROMPT " Entrer une option entre 1 et 7: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&varselection'
WHEN '1' THEN 'in_fournisseurs.sql'
WHEN '2' THEN 'in_clients.sql'
WHEN '3' THEN 'in_categories.sql'
WHEN '4' THEN 'in_produits.sql'
WHEN '5' THEN 'in_produitfournis.sql'
WHEN '6' THEN 'in_ventclients.sql'
WHEN '7' THEN 'sous_quitter.sql'
ELSE 'menu_insertion.sql'
END AS script
FROM dual;
SET TERM ON
@D:\teccart\Ete\BD_relationnel\tp4\&v_script
