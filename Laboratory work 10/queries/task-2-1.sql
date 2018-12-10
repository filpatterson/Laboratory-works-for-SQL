use universitatea
go

drop trigger if exists declansator_2_1
go
drop trigger if exists declansator_2_2
go

create trigger declansator_2_1 on studenti
	after insert
	as
	declare @id as int
	declare @cursor_studenti cursor 
	set @cursor_studenti = cursor scroll
	for
		select Id_Student from inserted
	open @cursor_studenti
	fetch next from @cursor_studenti into @id
	while @@FETCH_STATUS = 0
	begin
		if @id < 201
		begin
			raiserror('Cannot insert Id_Student less than 201', 16, 10);
			rollback transaction
		end
	fetch next from @cursor_studenti into @id
	end
	close @cursor_studenti
go

create trigger declansator_2_2 on studenti_reusita
	after insert
	as
	declare @id as int
	declare @cursor_studenti_reusita cursor 
	set @cursor_studenti_reusita = cursor scroll
	for
		select Id_Student from inserted
	open @cursor_studenti_reusita
	fetch next from @cursor_studenti_reusita into @id
	while @@FETCH_STATUS = 0
	begin
		if @id < 201
		begin
			raiserror('Cannot insert Id_Student less than 201', 16, 10);
			rollback transaction
		end
	fetch next from @cursor_studenti_reusita into @id
	end
	close @cursor_studenti_reusita
go