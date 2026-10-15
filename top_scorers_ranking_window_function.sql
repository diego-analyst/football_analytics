SELECT
	p.name AS player_name,
	c.name AS club_name,
	c.domestic_competition_id,
	SUM(a.goals) AS Total_goals,
	ROW_NUMBER() OVER(PARTITION BY c.domestic_competition_id ORDER BY SUM(a.goals) DESC) AS Ranking
FROM
	players p
INNER JOIN
	appearances a
ON
	p.player_id = a.player_id
INNER JOIN
	clubs c
ON 
	a.player_current_club_id = c.clu