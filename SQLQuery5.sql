--5-- in which event and year India has won its first gold medal,first silver medal and first bronze medal print 3 columns medal,year,sport




select * from
(select year, medal, event, rank() over(partition by medal order by year) rn 
from events e
join athletes a on e.athlete_id=a.id
where team='india' and medal!='NA'
group by year, medal, event) A
where rn=1





