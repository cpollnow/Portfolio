SELECT * 
FROM Under_Pressure
WHERE Player_Break_Points_Converted > 0.4
AND Player_Tie_Breaks_Won > 0.5
ORDER BY Player_Deciding_Set_Won DESC
