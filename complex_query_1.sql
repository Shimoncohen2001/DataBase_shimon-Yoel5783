SELECT P.FNAME, P.LNAME, P.ID
FROM liocohen.Player P
INNER JOIN INJURY I ON P.ID=I.PLAYER_ID
GROUP BY P.ID,P.FNAME,P.LNAME
HAVING COUNT (DISTINCT I.GAME_ID)=5