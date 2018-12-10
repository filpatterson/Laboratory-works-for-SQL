use universitatea
go

drop procedure if exists task_5;
go

create procedure task_5
	@Discipline varchar(255)
as
	declare @Id_Best_Students int;
	declare @Id_of_BDisciplina int;
	set @Id_of_BDisciplina = (select Id_Disciplina from discipline where Disciplina = @Discipline);
	declare @Old_notes table(
		Id_Student int,
		Note int,
		Discipline varchar(255)
	)
	insert into @Old_notes
		select top(3) Id_Student, Nota, Disciplina
		from studenti_reusita
		inner join discipline
		on studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
		where Disciplina = @Discipline
		group by Id_Student, Nota, Disciplina
		order by Nota desc;
	declare @cursor cursor
	set @cursor = cursor scroll
	for
		select top(3) Id_Student
		from studenti_reusita
		inner join discipline
		on studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
		where Disciplina = @Discipline
		group by Id_Student, Nota
		order by Nota desc;
	open @cursor
	fetch next from @cursor into @Id_Best_Students
	while @@FETCH_STATUS = 0
	begin
		update studenti_reusita
		set Nota = iif(Nota < 10, Nota + 1, Nota)
		where Id_Student = @Id_Best_Students and Id_Disciplina = @Id_of_BDisciplina
		fetch next from @cursor into @Id_Best_Students
	end
	close @cursor

	select distinct studenti_reusita.Id_Student, Nume_Student, Prenume_Student, Nota as New_Nota, Old_Note.Note as Old_Nota, Old_Note.Discipline
	from studenti_reusita
	inner join studenti
	on studenti_reusita.Id_Student = studenti.Id_Student
	inner join @Old_notes as Old_Note
	on Old_Note.Id_Student = studenti_reusita.Id_Student
go

exec task_5 @Discipline = 'Baze de date';
go