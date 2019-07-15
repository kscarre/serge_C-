create  or replace view coutvente as select sum(prixvente) as prixtotalvente
from venteclient v where v.numfour in (select f.numfour from fournisseur f where f.nomfour='les muses');