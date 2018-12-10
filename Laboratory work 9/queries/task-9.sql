use universitatea
go
--functii de tip tabel simplu
drop function if exists dbo.tabel9;
go
create function dbo.tabel9(@Cod_Grupa char(6), @is_good varchar(15))
returns @result table(Nume_Prenume_Student varchar(120), Cod_Grupa char(6), Nota_Medie decimal (4,2), Parametrul varchar(15) )
as

begin
if @is_good = 'sarguincios'

begin
insert into @result
select top(1) Nume_Student+' '+Prenume_Student as Nume_Prenume_Student, Cod_Grupa as Grupa
                ,cast(avg(Nota*1.0) as decimal (4,2)) as Nota_Medie, @is_good
from grupe 
inner join studenti_reusita
on studenti_reusita.Id_Grupa = grupe.Id_Grupa
inner join studenti
on studenti.Id_Student = studenti_reusita.Id_Student
where @Cod_Grupa = Cod_Grupa
group by Nume_Student, Prenume_Student, Cod_Grupa
order by avg(Nota) desc
end

else

begin
if @is_good = 'slab'
begin
insert into @result
select top(1) Nume_Student+' '+Prenume_Student as Nume_Prenume_Student, Cod_Grupa as Grupa
                ,cast(avg(Nota*1.0) as decimal (4,2)) as Nota_Medie, @is_good
from grupe 
inner join studenti_reusita
on studenti_reusita.Id_Grupa = grupe.Id_Grupa
inner join studenti
on studenti.Id_Student = studenti_reusita.Id_Student
where @Cod_Grupa = Cod_Grupa
group by Nume_Student, Prenume_Student, Cod_Grupa
order by avg(Nota) asc
end

end
return 
end