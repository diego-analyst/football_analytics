CREATE OR REPLACE VIEW vw_match_appearances AS
(
SELECT
	p.player_id,
    a.date,
    p.name AS player_name,
    p.image_url,
    c.name AS club_name,
    c.domestic_competition_id,
    a.minutes_played,
    a.goals,
    a.assists,
    a.yellow_cards,
    a.red_cards
FROM players p
INNER JOIN appearances a ON p.player_id = a.player_id
INNER JOIN clubs c ON a.player_club_id = c.club_id
)