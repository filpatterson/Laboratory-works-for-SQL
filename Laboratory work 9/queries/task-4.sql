use universitatea
go

drop procedure if exists task_4;
go

create procedure task_4
	@Nume_old_profesor varchar(60),
	@Prenume_old_profesor varchar(60),
	@Nume_new_profesor varchar(60),
	@Prenume_new_profesor varchar(60),
	@Disciplina varchar(255)
as
	if (@Nume_old_profesor is NULL) or (@Prenume_old_profesor is NULL) or (@Nume_new_profesor is NULL) or (@Prenume_new_profesor is NULL) or (@Disciplina is NULL)
		print 'There are missing values!'

	declare @Id_of_new_profesor int = (select Id_Profesor from profesori where Nume_Profesor = @Nume_new_profesor and Prenume_Profesor = @Prenume_new_profesor)
	declare @Id_of_old_profesor int = (select Id_Profesor from profesori where Nume_Profesor = @Nume_old_profesor and Prenume_Profesor = @Prenume_old_profesor)
	declare @Id_of_discipline int = (select Id_Disciplina from discipline where Disciplina = @Disciplina)

	update studenti_reusita
	set Id_Profesor = @Id_of_new_profesor
	where Id_Disciplina = @Id_of_discipline and Id_Profesor = @Id_of_old_profesor
	go

exec task_4 @Nume_old_profesor = 'Frent', @Prenume_old_profesor = 'Tudor', @Nume_new_profesor = 'Mircea', @Prenume_new_profesor = 'Maria', @Disciplina = 'Cercetari operationale';
go
