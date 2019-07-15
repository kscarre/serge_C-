CLEAR SCREEN
PROMPT ******  SOUS-MENU JOINTURE EXTERNE   *******
PROMPT * 1: leftjoin1      *
PROMPT * 2: leftjoin2 *
PROMPT * 3: rightjoin1 *
PROMPT * 4: rightjoin2 *
PROMPT * 5: Quitter                   *
PROMPT ********************************
ACCEPT selection PROMPT " Entrer option 1-5: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&selection'
WHEN '1' THEN 'leftjoin1.sql'
WHEN '2' THEN 'leftjoin2.sql'
WHEN '3' THEN 'rightjoin1.sql'
WHEN '4' THEN 'rightjoin2.sql'
WHEN '5' THEN 'quitter1.sql'
ELSE 'sousmenujointure.sql'
END AS script
FROM dual;
SET TERM ON
@G:\oracletpete2019\tp4\&v_script