CLEAR SCREEN
PROMPT ******  SOUS-MENU OPERATEUR ENSEMBLISTES   *******
PROMPT * 1: decode1      *
PROMPT * 2: decode2 *
PROMPT * 3: decode3 *
PROMPT * 4: case1 *
PROMPT * 5: case2 *
PROMPT * 6: Quitter1                   *
PROMPT ********************************
ACCEPT selection PROMPT " Entrer option 1-6: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&selection'
WHEN '1' THEN 'decode1.sql'
WHEN '2' THEN 'decode2.sql'
WHEN '3' THEN 'decode3.sql'
WHEN '4' THEN 'case1.sql'
WHEN '5' THEN 'case2.sql'
WHEN '6' THEN 'quitter1.sql'
ELSE 'sousmenuopensemblistes.sql'
END AS script
FROM dual;
SET TERM ON
@G:\oracletpete2019\tp4\&v_script