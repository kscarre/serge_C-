CLEAR SCREEN
PROMPT ******  SOUS-MENU OPERATEUR ENSEMBLISTES   *******
PROMPT * 1: lunion      *
PROMPT * 2: intersection *
PROMPT * 3: different *
PROMPT * 4: Quitter                  *
PROMPT ********************************
ACCEPT selection PROMPT " Entrer option 1-4: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&selection'
WHEN '1' THEN 'union.sql'
WHEN '2' THEN 'intersect.sql'
WHEN '3' THEN 'minus.sql'
WHEN '4' THEN 'quitter1.sql'
ELSE 'sousmenuopensemblistes.sql'
END AS script
FROM dual;
SET TERM ON
@G:\oracletpete2019\tp4\&v_script