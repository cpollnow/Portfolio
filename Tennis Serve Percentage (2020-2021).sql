USE Tennis
GO
SELECT *
FROM
	(SELECT Serve_2020.Player, SUM(Serve_2020.First_Serve + Serve_2021.First_Serve) / 2 AS Serve_Percentage
	FROM Serve_2020
	INNER JOIN Serve_2021 ON  Serve_2020.Player = Serve_2021.Player
	GROUP BY Serve_2020.Player) AS Subquery
WHERE Serve_Percentage > 60
ORDER BY Serve_Percentage DESC
