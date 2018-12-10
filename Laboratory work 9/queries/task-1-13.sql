 use universitatea
go
	drop procedure if exists task_1_13;
go
	create procedure task_1_13
		@Prenume varchar(10) = 'Ioan',
		@Nume varchar(10) = 'Florea'
	as
		select distinct discipline.Id_Disciplina, Disciplina
				from discipline
				inner join studenti_reusita
				on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
				inner join studenti
				on studenti.Id_Student = studenti_reusita.Id_Student
				where Prenume_Student = @Prenume and Nume_Student = @Nume
go

execute task_1_13;