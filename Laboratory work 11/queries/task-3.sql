use master;
go
exec sp_addumpdevice 'disk','backup_log', 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul3.bak';
go
backup LOG universitatea 
to disk = 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul3.bak';
go