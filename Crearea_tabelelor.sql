--crearea tabelului Pacient
create table pacient(
	id SERIAL  NOT NULL PRIMARY KEY, 
	numele varchar(40), 
	prenumele varchar(40),
	genul varchar(40),
	varsta int, 
	inaltimea_cm int, 
	greutatea_kg int,
	id_medic int,
	id_adresa int,
	id_persoana_apropiata int,
	id_boala int);
	
	
--crearea tabelului Adresa pacient
create table adresa_pacient(
	id SERIAL  NOT NULL PRIMARY KEY, 
	tara varchar(40), 
	zona varchar(40), 
	localitatea varchar(40), 
	strada varchar(40));


--crearea tabelului Persoana apropiata
create table persoana_apropiata(
	id SERIAL  NOT NULL PRIMARY KEY , 
	numele varchar(40), 
	prenumele varchar(40), 
	relatia_cu_pacientul varchar(40),
	nr_telefon varchar(40));


--crearea tabelului Medic raspunzator
create table medic_raspunzator(
	id SERIAL  NOT NULL PRIMARY KEY, 
	numele varchar(40), 
	prenumele varchar(40), 
	nr_telefon int NOT NULL, 
	nr_cabinet int, 
	asistenta_medicala varchar(40));
	
	
	
--crearea tabelului Boala Pacientului 
create table boala_pacientului(
	id SERIAL  NOT NULL PRIMARY KEY, 
	denumirea varchar(40), 
	gradul_de_severitate varchar(40), 
	alergii varchar(40));
	
	
	
--adaugam constrangerile necesare:
ALTER TABLE Pacient ADD FOREIGN KEY (id_adresa) REFERENCES adresa_pacient(id) on delete cascade on update cascade;
ALTER TABLE Pacient ADD FOREIGN KEY (id_persoana_apropiata) REFERENCES persoana_apropiata(id) on delete cascade on update cascade;
ALTER TABLE Pacient ADD FOREIGN KEY (id_medic) REFERENCES medic_raspunzator(id) on delete cascade on update cascade;
ALTER TABLE Pacient ADD FOREIGN KEY (id_boala) REFERENCES boala_pacientului(id) on delete cascade on update cascade;






-- inserarea datelor initiale in tabele:


INSERT INTO Pacient values (1,'Ion',	 'Iancu',     'B', 22, 187, 69); 
INSERT INTO Pacient values (2,'Vasile',  'Apostol',   'B', 20, 179, 70);
INSERT INTO Pacient values (3,'Cristina','Buzdugan',  'F', 27, 172, 52);
INSERT INTO Pacient values (4,'Eugen',	 'Popescu',   'B', 42, 180, 90);
INSERT INTO Pacient values (5,'Alina',	 'Constantin','F', 31, 167, 65);
INSERT INTO Pacient values (6,'Radu',	 'Valac',     'B', 34, 159, 78);
INSERT INTO Pacient values (7,'Denis',	 'Baciu',     'B', 41, 181, 80);
INSERT INTO Pacient values (8,'Gheorgie','Alexe',     'B', 25, 185, 75);
INSERT INTO Pacient values (9,'Dima',	 'Begu',      'B', 56, 163, 95);
INSERT INTO Pacient values (10,'Maria',  'Cazacu',    'F', 160,187, 55);


INSERT INTO Adresa_pacient values (1,'Romania',	 'Dolj',    'Craiova',     'tehnicii 4');
INSERT INTO Adresa_pacient values (2,'Romania',	 'Alba',    'Alba-Iulea',  'unirii 53');
INSERT INTO Adresa_pacient values (3,'Romania',	 'Bacau',   'Bacau', 	   'musicescu 16');
INSERT INTO Adresa_pacient values (4,'Romania',	 'Brasov',  'Brasov',      'Iachir 4');
INSERT INTO Adresa_pacient values (5,'Romania',	 'Cluj',    'Cluj-Napoca', 'Bucuresi 76');
INSERT INTO Adresa_pacient values (6,'Romania',	 'Buzau',   'Buzau', 	   'eminescu 32');
INSERT INTO Adresa_pacient values (7,'Romania',	 'Iasi',    'Iasi', 	   'vitejilor 17');
INSERT INTO Adresa_pacient values (8,'Romania',	 'Olt',     'Bals', 	   'institutului 14');
INSERT INTO Adresa_pacient values (9,'Romania',	 'Dolj',    'Craiova',     '1 mai 35');
INSERT INTO Adresa_pacient values (10,'Romania', 'Vrancea', 'Focsani',     'stadionului 7');


INSERT INTO Persoana_apropiata values (1,'Razvan',		 'Cernat',  'Tata',     '0746158476');
INSERT INTO Persoana_apropiata values (2,'Bianca',		 'Cihac',   'Sora',     '0745754618');
INSERT INTO Persoana_apropiata values (3,'Roman',	 	 'Cioban',  'Frate',    '0746218952');
INSERT INTO Persoana_apropiata values (4,'Cecilia',	 	 'Conea',   'Sotie',    '0734612897');
INSERT INTO Persoana_apropiata values (5,'Dina',	 	 'Danciu',  'Prietena', '0768213497');
INSERT INTO Persoana_apropiata values (6,'Florentina',	 'Dinu',    'Sora',     '0734976125');
INSERT INTO Persoana_apropiata values (7,'Georgeta',	 'Eliade',  'Mama',     '0757912417');
INSERT INTO Persoana_apropiata values (8,'Iasmina',	 	 'Enescu',  'Sora',     '0714579464');
INSERT INTO Persoana_apropiata values (9,'Malvina',	 	 'Gănescu', 'Mama',     '0735497564');
INSERT INTO Persoana_apropiata values (10,'Monica', 	 'Hagi',    'Sotie',    '0775794617');

 
INSERT INTO Boala_pacientului values (1, 'Raceala',  'Mediu',  'Antivirale');
INSERT INTO Boala_pacientului values (2, 'Scleroza', 'Mare',   'Ciocolta');
INSERT INTO Boala_pacientului values (3, 'Diabet',   'Mic',    'Antiseptice');
INSERT INTO Boala_pacientului values (4, 'Astm',     'Mediu',  'Lactate');
INSERT INTO Boala_pacientului values (5, 'Varicela', 'Mare',   '-');
INSERT INTO Boala_pacientului values (6, 'Laringita','Mic',    'Vitamina D');
INSERT INTO Boala_pacientului values (7, 'Ulcer',    'Mic',    '-');
INSERT INTO Boala_pacientului values (8, 'Rujeola',  'Mare',   'Oua');


INSERT INTO Medic_raspunzator values (1, 'Eduard',  'Baicev',   	0744919176,	303,	'Elena' );
INSERT INTO Medic_raspunzator values (2, 'Ion',  	'Hurmuzachi',   0767987519,	112,	'Maria'  );
INSERT INTO Medic_raspunzator values (3, 'Alexei',  'Miclescu',   	0798157819,	116,	'Ana'  );
INSERT INTO Medic_raspunzator values (4, 'Stefan',  'Raitu',   		0713257615,	201,	'Alina'  );
INSERT INTO Medic_raspunzator values (5, 'Sergiu',  'Tarancu',  	0746728798,	313,	'Ecaterina'  );
INSERT INTO Medic_raspunzator values (6, 'Alin',  	'Socolescu',    0712376789,	215,	'Olea'  );



