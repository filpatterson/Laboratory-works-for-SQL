 use universitatea
            go
            drop view if exists dbo.task9;
go
            --crearea viziune task(номер таска)
            create view task9 as
				--select dinstinct for evade of repetitions
				select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, Id_Disciplina
				from studenti_reusita
				inner join studenti
				on studenti.Id_Student = studenti_reusita.Id_Disciplina
				where Nota > 8 and year(Data_Evaluare) = 2018
go
            --show created view
            select * from task9