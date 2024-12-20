with cte as (
SELECT * from bike_share_yr_0
union all
SELECT * from bike_share_yr_1)
 

select
dteday,
season,
a.yr, 
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price -COGS as profit
from cte a
left join cost_table b
on a.yr = b.yr