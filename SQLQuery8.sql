--8-- find players who have won gold medals in consecutive 3 summer olympics in the same event . Consider only olympics 2000 onwards. 
--Assume summer olympics happens every 4 year starting 2000. print player name and event name.




with cte as
(
select name,year,event, LAG(year, 1) OVER (PARTITION BY name, event ORDER BY year) AS prev_year1,
LAG(year, 2) OVER (PARTITION BY name, event ORDER BY year) AS prev_year2
from events e
join athletes a on e.athlete_id=a.id
where year>= 2000 and season='summer' and medal='gold'
group by  year,name,event
)
SELECT DISTINCT name, event
FROM cte
WHERE year = prev_year1 + 4 AND prev_year1 = prev_year2 + 4








