use universitatea
go

drop trigger if exists dbo.inregistrare_noua
go
create trigger inregistrare_noua on orarul
	after update 
	as
	set nocount on
	if update(Auditoriu)
		select 'Lectia la disciplina "' + upper(discipline.Disciplina) + 
        '"de la ora ' + cast(inserted.ora as varchar(5)) +
        ' a fost transferata in aula ' + cast(inserted.Auditoriu as char(5))
	from inserted
	inner join discipline
	on inserted.Id_Disciplina = discipline.Id_Disciplina
go

print 'O noua inregistrare a fost inclusa cu succes'
go

update orarul
set Auditoriu = 510
where Zi = 'luni'