Create View HighWinGoalies AS 
Select FirstName, LastName, Wins
From Player p
Join statistics s ON s.PlayerID = p.ID
WHERE s.Wins > 450;