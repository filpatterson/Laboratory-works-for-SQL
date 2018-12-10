use universitatea
go

drop procedure if exists task_3;
go

	create procedure task_3
		@Id_student int,
		@Nume varchar(50),
		@Prenume varchar(50),
		@Data_de_nastere date,
		@Adresa_postala varchar(500),
		@Cod_grupa smallint
	as
		insert dbo.studenti(Id_Student, Nume_Student, Prenume_Student, Data_Nastere_Student, Adresa_Postala_Student)
			values(@Id_student, @Nume, @Prenume, @Data_de_nastere, @Adresa_postala)
		insert dbo.studenti_reusita(Id_Student, Id_Disciplina, Id_Grupa, Id_Profesor, Tip_Evaluare, Nota, Data_Evaluare)
			values(@Id_student, cast((rand() * 20 + 100) as int), @Cod_Grupa, cast((rand() * 30 + 100) as int), 'Examen', NULL, NULL)
		go

exec task_3 @Id_student = 201, @Nume = 'Andrei', @Prenume = 'Loev', @Data_de_nastere = '1997-12-15', @Adresa_Postala = 'Mun. Chisinau, Ciorescu, str. B.Glavan, 30', @Cod_Grupa = 3;
go