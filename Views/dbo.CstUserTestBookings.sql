SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CstUserTestBookings]
AS
SELECT     TOP 100 PERCENT CstUserTests.UserID, CstUserTests.TestID, CstUserTests.Name, CstUserBookings.Dato, 
                      CstUserBookings.TimeslotID, CstUserBookings.StartTime, CstUserBookings.TimeslotEntryID
FROM         CstUserTests LEFT OUTER JOIN
                      CstUserBookings ON CstUserTests.TestID = CstUserBookings.TestID AND 
                      CstUserTests.UserID = CstUserBookings.UserFK
ORDER BY CstUserTests.UserID, CstUserBookings.TimeslotEntryID
GO