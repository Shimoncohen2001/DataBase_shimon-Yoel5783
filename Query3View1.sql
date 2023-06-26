SELECT I.GAME_ID, COUNT(*) AS InjuryCount
FROM InjuriesPlayersInformation
GROUP BY I.GAME_ID
ORDER BY InjuryCount DESC;