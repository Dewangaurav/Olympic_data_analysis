--3-- which player has won maximum gold medals  amongst the players which have won only gold medal (never won silver or bronze) over the years


with cte as
(
select name, medal
from events e 
inner join athletes a on e.athlete_id=a.id
)

select top 1 name, count(*) as no_of_gold_medal
from cte
where name not in (select distinct name from cte where medal in ('Silver','Bronze'))
and medal='Gold'
group  by name
order by no_of_gold_medal desc











