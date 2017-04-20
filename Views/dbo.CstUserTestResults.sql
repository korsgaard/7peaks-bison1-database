SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CstUserTestResults]
AS
SELECT     CstTest.TestID, CstTest.Name, CstTestResult.UserFK, CstTest.Completed, 
                      SUM(CstTestResult.Point) AS Points
FROM         CstTestResult LEFT OUTER JOIN
                      CstTest ON CstTestResult.TestFK = CstTest.TestID
GROUP BY CstTest.TestID, CstTest.Name, CstTestResult.UserFK, CstTest.Completed
GO