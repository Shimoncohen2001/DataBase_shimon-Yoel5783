SELECT DISTINCT P.ID,P.Lname,P.FNAME
FROM liocohen.player P
NATURAL JOIN POSITION PS
WHERE P.gender = 'Male'
		AND P.nationality = 'US'
		AND P.wins > P.losses
		AND PS.playing_style = 'Triangle Offense'
		AND PS.STRENGTHS = 'Passing'
		AND EXISTS (
			SELECT 1
			FROM liocohen.player p2
			WHERE P2.ID = P.ID
				AND P2.wins >= P2.losses +10
		);