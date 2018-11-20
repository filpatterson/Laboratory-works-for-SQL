--To change the data type of a column in a table
alter view task9 as 
            select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, Id_Disciplina
			from studenti_reusita
			inner join studenti
			on studenti.Id_Student = studenti_reusita.Id_Disciplina
			where Nota > 8 and year(Data_Evaluare) = 2018
 go
 --test interogare viziune
select * from task9
go
drop view if exists dbo.task9_2;
go
create view task9_2 as
        select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, Id_Disciplina
        from studenti
		inner join studenti_reusita
		on studenti.Id_Student = studenti_reusita.Id_Disciplina
go
--delete column
delete from studenti
where Nume_Student='Gal'
go
--insert values
insert into task9_2
    values('Gal', 'Gadot', 'Washington, str. Comrad, 27')
go
select * from task9_2
go
--update table
update task9
set Nume_Student = 'Andrei', Prenume_Student = 'Cojusco'
where Id_Disciplina = 101
select * from task9
--delete
delete from task9_2 where Prenume_Student = 'Gadot'
select * from task9_2