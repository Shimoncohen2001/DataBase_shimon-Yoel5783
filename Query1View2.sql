SELECT TP.p_Name, COUNT(*) AS InjuryCount
FROM InjuriesPlayersInformation I
NATURAL JOIN playerpositionview TP
GROUP BY TP.p_name
Order BY InjuryCount DESC;