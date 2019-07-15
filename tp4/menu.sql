CLEAR SCREEN
PROMPT *******   MENU PRINCIPAL   ******
PROMPT *        1: Insertion           *
PROMPT *        2: Facture             *
PROMPT *        3: vues                *
PROMPT *        4: leftjoin1           *
PROMPT *        5: leftjoin2           *
PROMPT *        6: rightjoin1          *
PROMPT *        7: rightjoin2          *
PROMPT *        8: union               *
PROMPT *        9: intersect           *
PROMPT *        10: minus              *
PROMPT *        11: decode1            *
PROMPT *        12: decode2            *
PROMPT *        13: decode3            *
PROMPT *        14: case1              *
PROMPT *        15: case2              *
PROMPT *        16: Quitter            *
PROMPT *********************************
ACCEPT varselection PROMPT " Entrer une option entre 1 et 4: "
SET TERM OFF
COLUMN script NEW_VALUE v_script
SELECT CASE '&varselection'
WHEN '1' THEN 'menu_insertion.sql'
WHEN '2' THEN 'menu_factures.sql'
WHEN '3' THEN 'menu_vues.sql'
WHEN '4' THEN 'leftjoin1.sql'
WHEN '5' THEN 'leftjoin2.sql'
WHEN '6' THEN 'rightjoin1.sql'
WHEN '7' THEN 'rightjoin2.sql'
WHEN '8' THEN 'union.sql'
WHEN '9' THEN 'intersect.sql'
WHEN '10' THEN 'minus.sql'
WHEN '11' THEN 'decode1.sql'
WHEN '12' THEN 'decode1.sql'
WHEN '13' THEN 'decode3.sql'
WHEN '14' THEN 'case1.sql'
WHEN '15' THEN 'case2.sql'
WHEN '16' THEN 'quitter.sql'
ELSE 'menu.sql'
END AS script
FROM dual;
SET TERM ON
@D:\teccart\Ete\BD_relationnel\tp4\&v_script
