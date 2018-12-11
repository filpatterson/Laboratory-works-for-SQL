if EXISTS (select * from master.dbo.sysdevices where name = 'backLAB11')
	exec sp_dropdevice 'backLAB11';
go

exec sp_addumpdevice 'disk','backLAB11','D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul1.bkp';
go

backup database universitatea
to disk = 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul1.bkp'
with format,
name = 'universitatea = Full backup of universitatea';
go