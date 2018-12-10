--Gasiti numele, adresa studentilor si codul disciplinei la care studentii 
--au avut cel putin o nota mai mare decat 8 in 2018. 
use universitatea
go
--functii de tip tabel simplu
drop function if exists dbo.tabel2;
go
create function dbo.tabel2(@nota int, @year int)
returns table
as
return
(select distinct (studenti.Nume_Student+' '+ studenti.Prenume_Student) as Nume
                    , studenti.Adresa_Postala_Student, studenti_reusita.Id_Disciplina
from studenti_reusita
inner join studenti
on studenti.Id_Student = studenti_reusita.Id_Student
where Nota > @nota and year(Data_Evaluare) = @year)