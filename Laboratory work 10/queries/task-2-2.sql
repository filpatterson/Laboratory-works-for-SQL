insert into dbo.studenti ( [Id_Student], [Nume_Student], [Prenume_Student]
							, [Data_Nastere_Student], [Adresa_Postala_Student])
values (203, 'Kungurov', 'Alexei', '1992-12-10', 'mun. Chisinau, com. Ciorescu, str. Sadov, 65')
		, (192, 'Karamishev', 'Denis', '1990-01-10', 'mun. Chisinau, or. Chisinau, str. Stefan cel Mare, 12')

go
select *
from dbo.studenti