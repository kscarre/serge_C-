SELECT 
Sum(cv.prixtotalvente-ca.couttotal) as "marge"
from coutvente cv, coutachat ca ;