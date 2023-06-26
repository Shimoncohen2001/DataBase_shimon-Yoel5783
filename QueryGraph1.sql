SELECT TP.p_Name AS Position, COUNT(*) AS InjuryCount
FROM InjuriesPlayersInformation I
JOIN PlayerPositionView TP ON I.player_id = TP.ID
GROUP BY TP.p_Name
ORDER BY InjuryCount DESC;