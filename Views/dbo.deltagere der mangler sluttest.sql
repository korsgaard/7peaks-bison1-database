SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[deltagere der mangler sluttest]
AS
SELECT     u7734201.FmwUser.Username, u7734201.CstTeam.Title, u7734201.FmwUser.FirstName, u7734201.FmwUser.LastName, 
                      u7734201.FmwUser.FullName, u7734201.FmwUser.Mobile
FROM         u7734201.FmwUser INNER JOIN
                      u7734201.CstTeam ON u7734201.FmwUser.TeamFK = u7734201.CstTeam.TeamID RIGHT OUTER JOIN
                      u7734201.FmwMembership ON u7734201.FmwUser.UserID = u7734201.FmwMembership.UserID
WHERE     (u7734201.FmwUser.Hidden = 0) AND (u7734201.FmwUser.TeamFK < 58) AND (u7734201.FmwMembership.GroupID = 132) AND 
                      (u7734201.FmwUser.TeamFK > 44 AND u7734201.FmwUser.TeamFK <> 58) AND (NOT (u7734201.FmwUser.UserID IN
                          (SELECT     u7734201.CstTimeslotEntry.UserFK
                            FROM          u7734201.CstTest INNER JOIN
                                                   u7734201.CstSession ON u7734201.CstTest.TestID = u7734201.CstSession.TestFK INNER JOIN
                                                   u7734201.CstTimeslot ON u7734201.CstSession.SessionID = u7734201.CstTimeslot.SessionFK INNER JOIN
                                                   u7734201.CstTimeslotEntry ON u7734201.CstTimeslot.TimeslotID = u7734201.CstTimeslotEntry.TimeslotFK
                            WHERE      (u7734201.CstTest.TestID = 7) AND (NOT (u7734201.CstTimeslotEntry.UserFK IS NULL)))))
GO