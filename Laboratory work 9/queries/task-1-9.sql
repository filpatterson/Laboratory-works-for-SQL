use universitatea
go
	drop procedure if exists task_1_9;
go
	create procedure task_1_9
		@Nota int = 8,
		@Year int = 2018
	as
		select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, studenti_reusita.Id_Disciplina
			from studenti_reusita
			inner join studenti
			on studenti.Id_Student = studenti_reusita.Id_Disciplina
			where Nota > @Nota and year(Data_Evaluare) = @Year;
go

execute task_1_9;