/*CASE statement to determine whether a flight is early, on-time, late.*/

USE Flights
GO
SELECT COUNT(AirportID) AS Airport_Delay_Count, AirportID
FROM
	(SELECT Top 1000 AVG(DepDelay) AS Departure_Delay, Carrier AS Airline, AirportID
	FROM Flights
	GROUP BY Carrier, AirportID
	ORDER BY Departure_Delay DESC) AS Subquery
GROUP BY AirportID
ORDER BY Airport_Delay_Count DESC






