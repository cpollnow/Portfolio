USE Flights
GO
SELECT airports.Name, OriginAirportID, DestAirportID, DepDelay,
CASE
	WHEN DepDelay > 0 THEN 'Late'
	WHEN DepDelay < 0 THEN 'Early'
	ELSE 'On_Time'
END As Flight_Status
FROM Flights
INNER JOIN airports ON airports.airport_id = flights.OriginAirportID
ORDER BY DepDelay DESC