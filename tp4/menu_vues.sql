CLEAR SCREEN
PROMPT *******   MENU VUES    *************
PROMPT * 1: cout d achat                  *
PROMPT * 2: cout d vent                   *
PROMPT * 3: Marge                         *
PROMPT * 4: Quitter                       *
PROMPT ************************************
ACCEPT varselection PROMPT " Entrer une option entre 1 et 4: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&varselection'
WHEN '1' THEN 'v_coutachat.sql'
WHEN '2' THEN 'v_coutvente.sql'
WHEN '3' THEN 'v_marge.sql'
WHEN '4' THEN 'sous_quitter.sql'
ELSE 'menu_vues.sql'
END AS script
FROM dual;
SET TERM ON
@D:\teccart\Ete\BD_relationnel\tp4\&v_script
