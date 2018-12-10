use universitatea
go

drop procedure if exists task_2;
go

	create procedure task_2
		@Amount_of_bad_students int output
	as
		select @Amount_of_bad_students = count(distinct Id_Student)
		from studenti_reusita where Nota < 5 or Nota is NULL
go

declare @the_count int;
execute task_2 @Amount_of_bad_students = @the_count output;

select the_count = @the_count
go