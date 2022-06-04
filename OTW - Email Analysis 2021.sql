USE [On The Water]
GO

SELECT Top 15 Subject AS Email_Subject_Line, Open_Rate, Unique_Opens, Click_Rate, Unsubscribes 
FROM MailChimp
ORDER BY Unsubscribes DESC


SELECT Subject AS Email_Subject_Line, Open_Rate, Unique_Opens, Click_Rate, Unsubscribes 
FROM MailChimp
WHERE Subject LIKE '%trout%'
ORDER BY Unsubscribes DESC

SELECT AVG(Unsubscribes) AS Avg_Unsubscribes
FROM MailChimp AS MC


