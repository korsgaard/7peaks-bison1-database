SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[testresultater_stupid edition]
AS
SELECT     TOP 100 PERCENT u1.UserID, prop1.Name,
                          (SELECT     Value
                            FROM          CstTestResult AS tr1
                            WHERE      prop1.PropertyID = tr1.PropertyFK AND u1.UserID = tr1.UserFK AND tr1.TestFK = 2) AS Starttest,
                          (SELECT     Value
                            FROM          CstTestResult AS tr2
                            WHERE      prop1.PropertyID = tr2.PropertyFK AND u1.UserID = tr2.UserFK AND tr2.TestFK = 7) AS Sluttest
FROM         u7734201.CstProperty prop1 CROSS JOIN
                      u7734201._deltagere2 u1
ORDER BY prop1.PropertyID, u1.UserID
GO