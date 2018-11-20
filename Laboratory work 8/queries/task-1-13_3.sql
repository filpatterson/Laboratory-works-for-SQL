 use universitatea
            go
            drop view if exists dbo.task13case2;
go
            --crearea viziune task(номер таска)
            create view task13case2 (Id_Disciplina, Disciplina) with schemabinding as
				--select dinstinct for evade of repetitions
				select distinct studenti_reusita.Id_Disciplina, discipline.Disciplina
				from dbo.discipline
				inner join dbo.studenti_reusita
				on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
				inner join dbo.studenti
				on studenti.Id_Student = studenti_reusita.Id_Student
				where Prenume_Student = 'Ioan' and Nume_Student = 'Florea'
				with check option;
go
			--try to delete column
			alter table discipline drop column Disciplina
go
			--try to insert into table
			insert into task13case2
				values('Gal', 'Gadot', 'Washington, str. Roosevelt, 26', 7)
go
            --show created view
            select * from task13case2
