SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[_deltagere2]
AS
SELECT     TOP 100 PERCENT u7734201._deltagere.*, u7734201.CstUserTestResults.Points AS StartPoints, CstUserTestResults_1.Points AS SlutPoints, 
                      CstUserTestResults_1.Points - u7734201.CstUserTestResults.Points AS PointImproved
FROM         u7734201._deltagere LEFT OUTER JOIN
                      u7734201.CstUserTestResults CstUserTestResults_1 ON u7734201._deltagere.UserID = CstUserTestResults_1.UserFK LEFT OUTER JOIN
                      u7734201.CstUserTestResults ON u7734201._deltagere.UserID = u7734201.CstUserTestResults.UserFK
WHERE     (u7734201.CstUserTestResults.TestID = 2) AND (CstUserTestResults_1.TestID = 7)
ORDER BY PointImproved
GO