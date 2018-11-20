with f(id, Fact) as (select 5,0
                union all
                select id-1, ((-1)*(id-2)*((id-1)*(id-1)-5*(id-1)))/6 from f
                where id-1>0)

select * from f