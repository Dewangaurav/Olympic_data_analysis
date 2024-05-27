--7-- find players who won gold, silver and bronze medal in a single olympics. print player name along with year.






select  name, year
from events e
join athletes a on e.athlete_id=a.id
where medal!='NA'
group by name,year
having count( distinct medal)=3









