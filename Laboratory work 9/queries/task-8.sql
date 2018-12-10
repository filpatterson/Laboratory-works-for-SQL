use universitatea
go
--functii de tip tabel simplu
drop function if exists dbo.tabel8;
go
create function dbo.tabel8(@student varchar(120))
returns table
as
return
(select distinct (Nume_Student+' '+Prenume_Student) as Name_Student_Name, Disciplina, Nota, Data_Evaluare
from studenti_reusita
inner join studenti
ON studenti.Id_Student = studenti_reusita.Id_Student
inner join discipline
on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
where @student = (Nume_Student+' '+Prenume_Student) and Nota >= 5)