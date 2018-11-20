use universitatea
go

with check_note_data(Id_Disciplina) as
	(select Id_Disciplina from studenti_reusita where Nota > 8 and year(Data_Evaluare) = 2018)

select distinct Nume_Student, Prenume_Student, Adresa_Postala_Student, studenti_reusita.Id_Disciplina
from studenti inner join check_note_data studenti_reusita
on studenti.Id_Student = studenti_reusita.Id_Disciplina;