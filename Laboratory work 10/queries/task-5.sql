use universitatea
go

drop trigger if exists declansator5 on database
go

create trigger declansator5 on database
	for create_table, alter_table, drop_table
	as
	set nocount on
	declare @currentTime time
	set @currentTime = convert(time, getdate())
	if @currentTime < convert(time, '08:00:00') or @currentTime > convert(time, '12:00:00') 
	begin
		raiserror('You are not allowed to change tables out of time of work', 16,1)
		rollback
	end
go

drop table if exists someTable
go

create table someTable(
	someID int,
	someName varchar(20),
);