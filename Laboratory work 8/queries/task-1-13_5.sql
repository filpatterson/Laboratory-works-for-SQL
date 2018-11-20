with check_note_data(Id_Disciplina) as
	(select Id_Disciplina from studenti_reusita inner join studenti
	 on studenti.Id_Student = studenti_reusita.Id_Student
	 where Prenume_Student = 'Ioan' and Nume_Student = 'Florea')

select distinct studenti_reusita.Id_Disciplina, Disciplina
from discipline inner join check_note_data studenti_reusita
on discipline.Id_Disciplina = studenti_reusita.Id_Disciplina;
