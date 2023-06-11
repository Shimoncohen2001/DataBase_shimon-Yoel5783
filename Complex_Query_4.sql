SELECT DISTINCT P.ID, P.FNAME, P.LNAME, PS.STRENGTHS, PS.WEAKNESSES, P.Wins, P.Losses
FROM liocohen.PLAYER P
NATURAL JOIN INJURY I
JOIN POSITION PS ON P.ID = PS.PLAYER_ID
WHERE P.gender = 'Male'
	AND P.wins > P.losses
	AND PS.PLAYING_STYLE = 'Half-Court Offense'
	AND PS.STRENGTHS = 'Passing'
	AND p.nationality='US'
	AND P.Wins>P.losses
	AND NOT EXISTS (
		SELECT 1
		FROM INJURY I2
		WHERE I2.PLAYER_ID = P.ID
		GROUP BY I2.GAME_ID
		HAVING COUNT(DISTINCT I2.GAME_ID) >= 2
	)
	AND EXISTS (
		SELECT 1
		FROM liocohen.PLAYER P2
		WHERE P2.ID = P.ID
		AND P2.wins - P2.losses >= 200
	);
