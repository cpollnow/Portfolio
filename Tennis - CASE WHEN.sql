SELECT Player_Name, Player_Under_Pressure_Rating
(SELECT 
CASE
WHEN Player_Under_Pressure_Rating > 250 THEN 'Godlike'
WHEN Player_Under_Pressure_Rating < 250 THEN 'Good'
WHEN Player_Under_Pressure_Rating < 225 THEN 'Decent'
ELSE 'Medicore'
END)
From Under_Pressure
WHERE Player_Under_Pressure_Rating > 200;
