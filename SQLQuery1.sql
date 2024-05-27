--1-- which team has won the maximum gold medals in different games over the years.


Select top 1 team, e.medal, count(distinct event) as medals
from events e 
join athletes a on e.athlete_id=a.id
where medal='Gold'
group by a.team, e.medal
order by medals desc



