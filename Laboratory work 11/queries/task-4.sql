restore database [universitatea_lab11] 
	from  disk = 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul1.bkp' 
	with  file = 1,  
	move 'universitatea' to 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\universitatea_lab11.mdf',  
	MOVE 'universitatea_log' to 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\universitatea_lab11_log.ldf',  
	norecovery,  nounload,  replace
go

restore database [universitatea_lab11] 
	from  disk = 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul2.bak' 
	with  file = 1,  
	move 'universitatea' to 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\universitatea_lab11.mdf',  
	move N'universitatea_log' to 'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\universitatea_lab11_log.ldf',  
	norecovery,  nounload,  replace
go

restore LOG [universitatea_lab11] 
	from disk = N'D:\Git\Laboratory-works-for-SQL\Laboratory work 11\exercitiul3.bak' 
	with file = 1,  
	nounload
go