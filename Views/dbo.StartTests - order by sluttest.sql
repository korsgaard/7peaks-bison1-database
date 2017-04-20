SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[StartTests - order by sluttest]
AS
SELECT     TOP 100 PERCENT u7734201.CstSession.Dato AS Expr1, u7734201.CstTimeslot.StartTime AS Expr2, u7734201.StartTests.*
FROM         u7734201.CstTimeslotEntry LEFT OUTER JOIN
                      u7734201.StartTests ON u7734201.CstTimeslotEntry.UserFK = u7734201.StartTests.UserID LEFT OUTER JOIN
                      u7734201.CstTest RIGHT OUTER JOIN
                      u7734201.CstSession ON u7734201.CstTest.TestID = u7734201.CstSession.TestFK RIGHT OUTER JOIN
                      u7734201.CstTimeslot ON u7734201.CstSession.SessionID = u7734201.CstTimeslot.SessionFK ON 
                      u7734201.CstTimeslotEntry.TimeslotFK = u7734201.CstTimeslot.TimeslotID
WHERE     (u7734201.CstTest.TestID = 7) AND (u7734201.CstTimeslotEntry.UserFK > 0)
ORDER BY u7734201.CstSession.Dato, u7734201.CstTimeslot.StartTime
GO