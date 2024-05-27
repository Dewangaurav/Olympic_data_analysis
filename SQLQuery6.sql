--6-- find players who won gold medal in summer and winter olympics both.




SELECT athlete_id, name
FROM events e
join athletes a on e.athlete_id=a.id
WHERE season = 'Summer' AND medal = 'Gold'
AND athlete_id IN (
SELECT athlete_id
FROM events
join athletes a on e.athlete_id=a.id
WHERE season = 'Winter' AND medal = 'Gold')





