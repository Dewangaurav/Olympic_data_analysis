--4-- in each year which player has won maximum gold medal . Write a query to print year,player name and no of golds won in that year . In case of a tie print comma separated player names.




with cte as
(
select  name,year , count(*) as gold_countt, dense_rank() over(partition by year order by count(*)  desc) as rn 
from events e
join athletes a on e.athlete_id=a.id
where medal='gold'
group by year, name 

)

select  year, gold_countt,  STRING_AGG(name, ', ') within group (order by name) AS players_with_gold
from cte
where rn=1
group by year, gold_countt
order by year 






