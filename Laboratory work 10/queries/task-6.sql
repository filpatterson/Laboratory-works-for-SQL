use universitatea
go
if exists (select * from sys.triggers where parent_class = 0
	and name = 'exec6')
drop trigger  exec6 on database;
go
create trigger exec6 on database
for alter_table
as
begin

declare @schema varchar(max)
declare @command varchar(max)
declare @command_new varchar(max)

set @command=EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand)[1]','varchar(MAX)')
set @schema=EVENTDATA().value('(/EVENT_INSTANCE/Objectname)[1]','varchar(MAX)')
set @command_new=replace(@command, @schema,'studenti_reusita')

if @command like '%Id_Profesor%'
    begin
    if (@schema != 'id_pr')
            begin 
                set @command_new=REPLACE (@command,'Id_Profesor\','studenti_reusita')
                execute(@command_new)
            end
    end
end
go