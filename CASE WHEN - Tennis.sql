SELECT Player_Name, Player_Under_Pressure_Rating, Player_Break_Points_Converted, Player_Break_Points_Saved, Player_Tie_Breaks_Won, Player_Deciding_Set_Won,
(SELECT 
CASE
WHEN Player_Under_Pressure_Rating > 250 THEN 'Godlike'
WHEN Player_Under_Pressure_Rating < 250 THEN 'Good'
WHEN Player_Under_Pressure_Rating < 225 THEN 'Decent'
ELSE 'Medicore'
END)
From Under_Pressure
WHERE Player_Under_Pressure_Rating > 200;