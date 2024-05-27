--2-- for each team print total silver medals and year in which they won maximum silver medal..output 3 columns team,total_silver_medals, year_of_max_silver.

select * from athletes
select * from events

with cte as
(
select team, year , count(distinct event) as silver_medals , row_number() over(partition by team order by count(distinct event) desc ) as rn
from events e 
join athletes a on e.athlete_id=a.id
where medal='Silver'
group by team, year
)
select team,sum(silver_medals) as total_silver_medals, max(case when rn=1 then year end) as  year_of_max_silver
from cte
group  by team



