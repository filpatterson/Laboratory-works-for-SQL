use universitatea
go
drop view if exists dbo.exemplul4;
go
--view cu conditie de filtru
create view exemplul4 as
 select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, Id_Disciplina
				from dbo.studenti_reusita
				inner join dbo.studenti
				on studenti.Id_Student = studenti_reusita.Id_Disciplina
				where Nota > 8 and year(Data_Evaluare) = 2018
				with check option;
 go
 --test interogare viziune
select * from exemplul4
go