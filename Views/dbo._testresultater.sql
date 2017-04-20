SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[_testresultater]
AS
SELECT     u7734201.CstProperty.Name, u7734201.CstTestResult.UserFK, u7734201.CstTestResult.[Value], u7734201.CstTestResult.Point, 
                      u7734201.CstProperty.PropertyID, u7734201.CstTestResult.TestFK, u7734201._deltagere2.Postcode, u7734201._deltagere2.GenderFK, 
                      u7734201._deltagere2.TeamFK, u7734201._deltagere2.UserIndex, u7734201._deltagere2.UserPercent, u7734201._deltagere2.StartPoints, 
                      u7734201._deltagere2.SlutPoints, u7734201._deltagere2.PointImproved
FROM         u7734201.CstTestResult LEFT OUTER JOIN
                      u7734201.CstProperty ON u7734201.CstTestResult.PropertyFK = u7734201.CstProperty.PropertyID LEFT OUTER JOIN
                      u7734201._deltagere2 ON u7734201.CstTestResult.UserFK = u7734201._deltagere2.UserID
GO