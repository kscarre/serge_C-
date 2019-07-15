CLEAR SCREEN
PROMPT ******  MENU PRINCIPAL   *******
PROMPT * 1: sous-menu fonction *
PROMPT * 2: sous-menu jointure *
PROMPT * 3: sous-menu operateurs assemblistes  *
PROMPT * 4: Quitter     *
PROMPT ********************************
ACCEPT selection PROMPT " Entrer option 1-4: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&selection'
WHEN '1' THEN 'sousmenufonction.sql'
WHEN '2' THEN 'sousmenujointure.sql'
WHEN '3' THEN 'sousmenuopensemblistes.sql'
WHEN '4' THEN 'quitter.sql'
ELSE 'menuprincipal.sql'
END AS script
FROM dual;
SET TERM ON
@G:\oracletpete2019\tp4\&v_script
