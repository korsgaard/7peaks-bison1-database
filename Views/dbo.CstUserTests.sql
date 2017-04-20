SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CstUserTests]
AS
SELECT     TOP 100 PERCENT FmwUser.UserID, CstTest.TestID, CstTest.Name
FROM         FmwUser INNER JOIN
                      FmwMembership ON FmwMembership.UserID = FmwUser.UserID INNER JOIN
                      CstTest ON CstTest.GroupFK = FmwMembership.GroupID
ORDER BY FmwUser.UserID
GO