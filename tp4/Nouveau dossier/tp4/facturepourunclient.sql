
select numclient, sum(quantitevendue*prixvente) as soustotal, sum(quantitevendue*prixvente*0.05) as tps, sum(quantitevendue*prixvente*0.10) as tvq, sum(quantitevendue*prixvente*1.15) as total from venteclient group by numclient;
column numclient HEADING numclient format A10
column soustotal HEADING soustotal format $99999999,99
column tps HEADING tps format $99999999,99
column tvq HEADING tvq format $99999999,99
column total HEADING total format $99999999,99
clear columns;
