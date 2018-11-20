 use universitatea
            go
            drop view if exists dbo.task13;
go
            --crearea viziune task(номер таска)
            create view task13 as
				--select dinstinct for evade of repetitions
				select distinct discipline.Id_Disciplina, Disciplina
				from discipline
				inner join studenti_reusita
				on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
				inner join studenti
				on studenti.Id_Student = studenti_reusita.Id_Student
				where Prenume_Student = 'Ioan' and Nume_Student = 'Florea'
go
            --show created view
            select * from task13