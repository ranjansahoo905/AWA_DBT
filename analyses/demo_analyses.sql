select name,
sum(sales) as totalsales
from {{ref('seeds_demo')}}
group by 1
order by 2 desc