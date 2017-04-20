SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[_deltagere]
AS
SELECT     FmwUser.UserID, FmwUser.Email, FmwUser.DOB, FmwUser.Postcode, FmwUser.GenderFK, 
                      FmwUser.TeamFK, CstTeam.Title, FmwUser.UserIndex, FmwUser.UserPercent
FROM         FmwUser INNER JOIN
                      FmwMembership ON FmwUser.UserID = FmwMembership.UserID INNER JOIN
                      FmwGroup ON FmwMembership.GroupID = FmwGroup.GroupID LEFT OUTER JOIN
                      CstTeam ON FmwUser.TeamFK = CstTeam.TeamID
WHERE     (CstTeam.TeamID > 40 AND CstTeam.TeamID < 57) AND (FmwGroup.GroupID = 132)
GO