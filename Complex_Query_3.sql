SELECT COUNT(DISTINCT I.GAME_ID) AS Nombre_match
FROM INJURY I
INNER JOIN liocohen.PLAYER P ON P.ID = I.PLAYER_ID
WHERE P.FNAME = 'Jolee' AND P.LNAME = 'Paddock';
