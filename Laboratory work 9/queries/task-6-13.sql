--13. Aflati cursurile urmate de catre studentul Florea loan. 
use universitatea
go
--functii de tip tabel simplu
drop function if exists dbo.tabel3;
go
create function dbo.tabel3(@Prenume varchar(60), @Nume varchar(60))
returns table
as
return
(select distinct discipline.Id_Disciplina, discipline.Disciplina
from discipline
inner join studenti_reusita
on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
inner join studenti
on studenti.Id_Student = studenti_reusita.Id_Student
where Prenume_Student = @Prenume and Nume_Student = @Nume)