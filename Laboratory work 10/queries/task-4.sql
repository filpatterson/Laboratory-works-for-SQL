use universitatea
go

drop trigger if exists declansator4 on database
go

create trigger declansator4 on database
	for alter_table
	as
	set nocount on
	declare @id int
	select @id = EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]', 'nvarchar(max)')
	if @id='Id_Disciplina'
	begin
		raiserror('Modificarea coloanei Id_Disciplina este interzisa!', 16,1)
		rollback
	end
go

alter table discipline
alter column Id_Disciplina varchar(6)