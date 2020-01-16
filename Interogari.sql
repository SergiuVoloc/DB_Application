
-- 1 Tabela inițială + Butonul> Pacienților
	SELECT pacient.id, pacient.numele, pacient.prenumele, pacient.genul, pacient.varsta, pacient.inaltimea_cm, 
	pacient.greutatea_kg, medic_raspunzator.numele FROM pacient 
	LEFT JOIN medic_raspunzator ON pacient.id_medic = medic_raspunzator.id;
	
	
-- 2 Butonul> Medici
SELECT * FROM medic_raspunzator;


-- 3 Butonul> Adresa pacientului 	(adresa pacientului x)
SELECT tara, zona, localitatea, strada FROM adresa_pacient where id=" + ID_Pacient_Text_Field.getText();


-- 4 Butonul> Boala pacientului 	(boala pacientului x)
String sql = "SELECT boala_pacientului.denumirea, boala_pacientului.gradul_de_severitate, \n" +
                         "	boala_pacientului.alergii FROM boala_pacientului where id=" + ID_Pacient_Text_Field.getText();
	
	
-- 5 Butonul> Persoana apropiata 		(Adresa+Contact pacientului x)
SELECT persoana_apropiata.numele, persoana_apropiata.prenumele, 
	persoana_apropiata.relatia_cu_pacientul, persoana_apropiata.nr_telefon
	FROM persoana_apropiata ;

-- 6 Butonul> Medicul pacientului 	(medicul pacientului x)
SELECT medic_raspunzator.numele, medic_raspunzator.prenumele, medic_raspunzator.nr_telefon,
		medic_raspunzator.nr_cabinet, medic_raspunzator.asistenta_medicala FROM medic_raspunzator;

	
	
	
	
	
	



	