select region, count(distinct institution)/count(distinct country) as insAvg
from institutions
group by region
order by region;