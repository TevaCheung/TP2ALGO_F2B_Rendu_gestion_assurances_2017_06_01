-- /////  CLIENT /////

-- Un client n a ni vehicule ni contrat
insert into CLIENT (NUMCLIENT,NOM,PRENOM) values 
(1,'BALLE','Joe');

-- Un client signe un contrat d'un vehicule qui ne lui appartient pas
insert into CLIENT (NUMCLIENT,NOM,PRENOM) values 
((select max(NUMCLIENT)+1 from CLIENT),'DE REZ','Alex');

insert into CLIENT (NUMCLIENT,NOM,PRENOM) values 
((select max(NUMCLIENT)+1 from CLIENT),'CLEIN','Ernest';

insert into CONTRAT (SIGNATAIRE,NUMCTR,TYPEC,DATESIGN) values
((select NUMCLI from CLIENT where NOM='DE REZ'),1,'Particulier',2015-02-02);

insert into VEHICULE (NUMVEH,MARQUE,MODELE,ANNEE,CYLINDREE,SIGNATAIRE,NUMCTR,NUMCLIENT) values
(1,'Citroan','Familiale',2012,'100cc',2,1,(select NUMCLI from CLIENT where NOM='CLEIN'),1,(select NUMCLI from CLIENT where NOM='Ernest'));

-- Un client signe un contrat qui ne couvre pas de vehicule 
insert into CLIENT (NUMCLIENT,NOM,PRENOM) values 
((select max(NUMCLIENT)+1 from CLIENT),'JIGGS','Lea');

insert into CONTRAT values
((select NUMCLI from CLIENT where NOM='JIGGS'),(select max(NUMCTR)+1 from CONTRAT),2014-05-09);

-- ///// SIGNATAIRE /////

-- Le signataire a deux de ses véhicules impliques dans le meme accident

-- Le signataire peut etre different du conducteur implique dans l accident

-- ///// VEHICULE /////

-- Un vehicule n a pas eu d accident
-- Un vehicule est implique dans plusieurs accidents

-- ///// ACCIDENT /////

-- Un accident peut ne pas impliquer de vehicule
