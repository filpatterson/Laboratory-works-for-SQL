use universitatea
go
drop function if exists dbo.varsta;
go
CREATE FUNCTION dbo.varsta(@Data_Nastere_Student DATE, @Current_Date date='2018-11-25')
returns int
as
begin
declare @age int
select @age = datediff(YY, @Data_Nastere_Student, @Current_Date)-
case when(
        (MONTH(@Data_Nastere_Student)*100 + DAY(@Data_Nastere_Student)) >
      (MONTH(@Current_Date)*100 + DAY(@Current_Date))
      ) then 1
      else 0
end
return @age
end
go