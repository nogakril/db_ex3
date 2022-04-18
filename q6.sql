with recursive t(dist, name) as (
    select values(0), name
    from authors S
    where S.name = 'Noam Nisan'
    union all
    select dist+1, name
    from t, authors S, authors R  
    where t.name = S.name and S.conference = R.conference and S.year = R.year and S.name != R.name and dist < 2
    )
select distinct name
from t
order by name;