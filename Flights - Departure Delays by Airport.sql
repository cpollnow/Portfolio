/*Query to establish which airports had a high frequency of late departures.*/

USE Flights
GO
SELECT COUNT(AirportID) AS Airport_Delay_Count, AirportID
FROM
	(SELECT Top 100 AVG(DepDelay) AS Departure_Delay, Carrier AS Airline, AirportID
	FROM Flights
	GROUP BY Carrier, AirportID
	ORDER BY Departure_Delay DESC) AS Subquery
GROUP BY AirportID
ORDER BY Airport_Delay_Count DESC






