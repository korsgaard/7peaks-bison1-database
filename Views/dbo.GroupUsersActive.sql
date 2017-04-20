SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[GroupUsersActive]
AS
SELECT     CstTeam.TeamID, CstTeam.Title AS Name, FmwUser.UserID, FmwUser.Username, 
                      FmwUser.FullName, FmwUser.Hidden, FmwUser.BattleStop
FROM         FmwUser LEFT OUTER JOIN
                      CstTeam ON FmwUser.TeamFK = CstTeam.TeamID
GO