 use universitatea
            go
            drop view if exists dbo.task9case2;
go
            --crearea viziune task(номер таска)
            create view task9case2 (Nume_St, Prenume_St, Adresa_Postala_St, Id_Disciplina) with schemabinding as
				--select dinstinct for evade of repetitions
				select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, Id_Disciplina
				from dbo.studenti_reusita
				inner join dbo.studenti
				on studenti.Id_Student = studenti_reusita.Id_Disciplina
				where Nota > 8 and year(Data_Evaluare) = 2018
				with check option;
go
			--try to delete column
			alter table studenti drop column Nume_Student
go
			--try to insert into table
			insert into task9case2
				values('Gal', 'Gadot', 'Washington, str. Roosevelt, 26', 7)
go
            --show created view
            select * from task9case2
