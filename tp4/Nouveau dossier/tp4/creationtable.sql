create table fournisseur(numfour varchar2(20), nomfour varchar2(50), adresse varchar2(100), province varchar2(50), telephone varchar2(20), constraint pk_fournisseur primary key(numfour));
create table client(numclient varchar2(20), nomclient varchar2(50), norue varchar2(10), nomrue varchar2(50), ville varchar2(50), province varchar2(50), 
telephone varchar2(20), constraint pk_client primary key(numclient) );
create table categorie(numcat varchar2(20), nom varchar2(50), description varchar2(200), constraint pk_categorie primary key (numcat));
create table produit(numprod varchar2(20) primary key, nomprod varchar2(50), description varchar2(200), quantitestock number(10), numcat varchar2(20), 
constraint fk_numcat foreign key (numcat) references categorie(numcat) ON DELETE CASCADE);
create table venteclient(numclient varchar2(20), numprod varchar2(20), numfour varchar2(20), datevente date, prixvente number(10,2), 
quantitevendue number(10), constraint pk_venteclient primary key(numclient,numprod,datevente,numfour),constraint fk_numfour foreign key(numfour) references fournisseur(numfour) ON DELETE CASCADE,
 constraint fk_numclient foreign key (numclient) references client(numclient) on delete cascade, constraint fk_numprod foreign key (numprod) 
 references produit(numprod) ON DELETE CASCADE);
create table produitfourni(numfour varchar2(20), numprod varchar2(20), dateachat date, prixunite number(10,2), quantite number(10), 
constraint pk_produitfourni primary key(numfour,numprod,dateachat), constraint fk_numfourprod foreign key (numfour) references fournisseur(numfour) ON DELETE CASCADE,
constraint fk_numprod1 foreign key (numprod) references produit(numprod) ON DELETE CASCADE);

