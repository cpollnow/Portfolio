USE [On The Water]
GO

/*Query to establish the top 15 unsubscribe email subject lines.*/
SELECT Top 15 Subject AS Email_Subject_Line, Open_Rate, Unique_Opens, Click_Rate, Unsubscribes 
FROM MailChimp
ORDER BY Unsubscribes DESC

/*Query to perform analysis in regards to 'trout' being in the subject line.*/
SELECT Subject AS Email_Subject_Line, Open_Rate, Unique_Opens, Click_Rate, Unsubscribes 
FROM MailChimp
WHERE Subject LIKE '%trout%'
ORDER BY Unsubscribes DESC

*/Query to determine the average number of unsubscribes*/
SELECT AVG(Unsubscribes) AS Avg_Unsubscribes
FROM MailChimp AS MC


