create tablespace vente
datafile 'C:\oraclexe\app\oracle\oradata\XE\vente.dbf' 
size 128M autoextend on next 64M;
create user uservente identified by 123
default tablespace vente
temporary tablespace temp;
grant connect, resource, dba, imp_full_database to uservente;
connect uservente/123 

create table fournisseurs(
	numfour varchar2(10),
	nom varchar2(100),
	telephone varchar2(20),
	adresse varchar2(100),
	province varchar2(50),
	codepostal varchar2(20),
	constraint pk_fournisseurs primary key (numfour)
);
create table clients(
	numclient varchar2(10),
	nomclient varchar2(50),
	norue varchar2(10),
	nomrue varchar2(50),
	ville varchar2(50),
	province varchar2(50),
	codepostal varchar2(20),
	pays varchar2(50),
	constraint pk_clients primary key (numclient)
);
create table categories(
	numcat varchar2(10),
	nom varchar2(50),
	description varchar2(150),
	constraint pk_categories primary key (numcat)
);
create table produits(
	numprod varchar2(10),
	nom varchar2(50),
	numcat varchar2(10),
	quantitestock number(5),	
	constraint pk_produits primary key (numprod),
	constraint fk_categories_produits foreign key (numcat) references categories(numcat)
);
create table produitfournis(
	numfour varchar2(10),
	numprod varchar2(10),
	dateachat date,
	prixunite number(10,2),	
	quantite number(5),	
	constraint pk_produitfournis primary key (numfour,numprod,dateachat),
	constraint fk_fournisseurs_fournis foreign key (numfour) references fournisseurs(numfour),
	constraint fk_produit_fournis foreign key (numprod) references produits(numprod)
);
create table venteclients(
	numclient varchar2(10),
	numprod varchar2(10),
	datevente date,
	numfour varchar2(10),	
	quantitevendue number(5),	
	prixvente number(10,2),	
	constraint pk_venteclients primary key (numclient,numprod,datevente,numfour),
	constraint fk_fournisseurs_venteclient foreign key (numfour) references fournisseurs(numfour),
	constraint fk_produits_venteclient foreign key (numprod) references produits(numprod)
);



alter table fournisseurs rename column adrsse to adresse;
alter table venteclients drop column prixvente;
alter table venteclients add prixvente number(10,2);
prixvente number(10,2),	
Alter table produits add constrait check_stock check(qu >=0);

alter table venteclients add constraint fk_client_venteclient foreign key (numclient) references clients(numclient),



-----




alter table cours add titreprog varchar2(50);
alter table cours add constraint fk_programme_cours foreign key (titreprog) references programmes(titreprog);

CREATE SEQUENCE seqnoetud 
INCREMENT BY 1 
Minvalue 1000
Maxvalue 9999;


create or replace view vueprog
as select * from programmes;
`
create or replace view inscripbak
as select * from inscriptions
where nocours = upper('&varnocours');

create table inscripbaks as select * from inscriptions 
where DATEINSCRITE between '18-01-01' and '18-12-31';

where DATEINSCRITE like '2018';

select e.nometud, e.prenometud
from etudiants e, inscriptions i
where upper(i.nocours) = upper('444-678-TT')
and upper(lasession) = upper('E2018')
and e.noetud = i.noetud
and i.notefinal =
		(select max(i.notefinal)
		from inscriptions i
		where upper(i.nocours) = upper('444-678-TT')
		and upper(lasession) = upper('E2018'));











-- insertion
Insert into membres (code_mb, nom_mb, prenom_mb, telephone_mb)
Values (( upper (substr('Rick', 0,2))) || (upper (substr('Prince', 0,2))), 'Prince','Rick','(514)3332244');
Insert into membres (code_mb, nom_mb, prenom_mb, telephone_mb)
Values ((upper (substr('Isa', 0,2))) || (upper (substr('Chevalier', 0,2))), 'Chevalier','Isa','(514)5567788');

Insert into cd (code_cd, titre_cd, auteur_cd, quantite_stock, prix_unitaire)
Values ('CD100000', 'La vie','Prince',100,'10$');
Insert into cd (code_cd, titre_cd, auteur_cd, quantite_stock, prix_unitaire)
Values 	('CD100001', 'La cour','Prince',200,'8$');
Insert into cd (code_cd, titre_cd, auteur_cd, quantite_stock, prix_unitaire)
Values	('CD100002', 'La lune','Leduc',150,'12$');

create table ventes(
	code_mb varchar2(10),
	code_cd varchar2(10),
	date_vente date,
	quantite_vendu number(5),
	constraint pk_ventes primary key (code_mb,code_cd),
	constraint fk_membre_ventes foreign key (code_mb) references membres(code_mb),
	constraint fk_cd_vente foreign key (code_cd) references cd(code_cd)
);
alter table ventes add prix_vente varchar2(12);
Insert into ventes (code_mb, code_cd, date_vente, quantite_vendu, prix_vente)
Values ('RIPR', 'CD100000','19-05-8',30, '15$');
Insert into ventes (code_mb, code_cd, date_vente, quantite_vendu, prix_vente)
Values ('RIPR', 'CD100001','19-05-8',10, '10$');
Insert into ventes (code_mb, code_cd, date_vente, quantite_vendu, prix_vente)
Values ('ISCH', 'CD100002','19-05-10',25, '15$');
Insert into ventes (code_mb, code_cd, date_vente, quantite_vendu, prix_vente)
Values ('ISCH', 'CD100002','19-05-11',27, '15$');

alter table ventes drop constraint pk_ventes;
alter table ventes add constraint pk_ventes primary key (code_mb,code_cd,date_vente);



-----requetes
--ListeMembre.sql
select nom_mb, prenom_mb 
from ventes v, membres m, cd c 
where v.code_mb = m.code_mb
and c.code_cd = v.code_cd
and titre_cd = 'La vie'
order by nom_mb asc;

--dateVente.sql		
select date_vente, quantite_vendu
from ventes v, membres m 
where m.code_mb = v.code_mb
and v.code_cd = 'CD100001'
and v.code_mb = 'RIPR';

--plusdixCD.sql















