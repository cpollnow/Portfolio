USE Flights
GO
SELECT COUNT(OriginAirportID) AS Airport_Delay_Count, OriginAirportID
FROM
	(SELECT Top 1000 AVG(DepDelay) AS Departure_Delay, Carrier AS Airline, OriginAirportID
	FROM Flights
	GROUP BY Carrier, OriginAirportID
	ORDER BY Departure_Delay DESC) AS Subquery
GROUP BY OriginAirportID
ORDER BY Airport_Delay_Count DESC






