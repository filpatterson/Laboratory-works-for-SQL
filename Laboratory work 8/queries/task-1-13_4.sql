use universitatea
go
drop view if exists dbo.exemplul4task13;
go
--view cu conditie de filtru
create view exemplul4task13 as
select distinct discipline.Id_Disciplina, Disciplina
				from discipline
				inner join studenti_reusita
				on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
				inner join studenti
				on studenti.Id_Student = studenti_reusita.Id_Student
				where Prenume_Student = 'Ioan' and Nume_Student = 'Florea'
				with check option
 go
 --test interogare viziune
select * from exemplul4task13
go