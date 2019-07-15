CLEAR SCREEN
PROMPT ******  MENU PRINCIPAL   *******
PROMPT * 1: sous-menu insertions dans les tables  *
PROMPT * 2: sous-menu insertions dans vue, mise a jour et suppression  *
PROMPT * 3: sous-menu selections  *
PROMPT * 4: sous-menu mise a jour et suppression  *
PROMPT * 5: Quitter     *
PROMPT ********************************
ACCEPT selection PROMPT " Entrer option 1-5: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&selection'
WHEN '1' THEN 'sousmenuinsertion.sql'
WHEN '2' THEN 'sousmenuinsertionvue.sql'
WHEN '3' THEN 'sousmenuselection.sql'
WHEN '4' THEN 'sousmenumiseajoursuppression.sql'
WHEN '5' THEN 'quitter.sql'
ELSE 'menuprincipal.sql'
END AS script
FROM dual;
SET TERM ON
@G:\oracletpete2019\tp3\&v_script