create table CLIENT (
	NUMCLIENT integer(5) not null,
	NOM varchar(20) not null,
	PRENOM varchar(30) not null,
	primary key (NUMCLIENT)
);

create table CONTRAT (
	SIGNATAIRE integer(5) not null,
	NUMCTR integer(5) not null,
	TYPEC integer(1) not null,
	DATESIGN date not null,
	primary key (SIGNATAIRE,NUMCTR),
	foreign key (SIGNATAIRE) references CLIENT
	on delete no action on update cascade
);

create table VEHICULE (
	NUMVEH integer(5) not null,
	MARQUE varchar(20) not null,
	MODELE varchar(30) not null,
	ANNEE integer(4) not null,
	CYLINDREE varchar(10) not null,
	SIGNATAIRE integer(5) not null,
	NUMCTR integer(5) not null,
	NUMCLIENT integer(5) not null,
	primary key (NUMVEH),
	foreign key (SIGNATAIRE, NUMCTR) references CONTRAT
	on delete no action on update cascade,
	foreign key (NUMCLIENT) references CLIENT
	on delete no action on update cascade
);

create table ACCIDENT (
	NUMACC integer(5) not null,
	DATEACC date not null,
	MONTANT decimal(8,2),
	primary key (NUMACC)
);

create table IMPLICATION (
	NUMACC integer(5) not null,
	NUMVEH integer(5) not null,
	primary key (NUMACC,NUMVEH),
	foreign key (NUMACC) references ACCIDENT
	on delete no action on update cascade,
	foreign key (NUMVEH) references VEHICULE
	on delete no action on update cascade
); 

create unique index XCLIENT_NUMCLIENT on CLIENT(NUMCLIENT);
create unique index XCONTRAT_NUMCTR on CONTRAT(NUMCTR);
create unique index XVEHICULE_NUMVEH on VEHICULE(NUMVEH);
create unique index XACCIDENT_NUMACC on ACCIDENT(NUMACC);