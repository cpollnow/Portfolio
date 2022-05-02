SELECT Returns.Player_Name, Serve.Player_Aces, Serve.Player_Service_Games_Won, Under_Pressure.Player_Deciding_Set_Won, Under_Pressure.Player_Tie_Breaks_Won, Under_Pressure.Player_Break_Points_Converted
FROM Returns
INNER JOIN Serve 
ON Returns.Player_Name=Serve.Player_Name 
INNER JOIN Under_Pressure
ON Serve.Player_Name=Under_Pressure.Player_Name
WHERE Serve.Player_Aces > 10
AND Under_Pressure. Player_Break_Points_Converted > 0.35
ORDER BY Player_Name ASC