with recursive t(dist, name) as (
    select distinct 0 as dist, name
    from authors
    where name = 'Noam Nisan'
    union all
    select dist+1, S.name
    from (t natural join authors) S, authors R  
    where S.conference = R.conference and S.year = R.year and S.name != R.name and dist < 2
    )
select distinct name
from t
order by name;