SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CstUserBookings]
AS
SELECT     CstTest.TestID, CstSession.SessionID, CstSession.Dato, CstTimeslot.TimeslotID, 
                      CstTimeslot.StartTime, CstTimeslotEntry.TimeslotEntryID, CstTimeslotEntry.UserFK
FROM         CstTest INNER JOIN
                      CstSession INNER JOIN
                      CstTimeslot ON CstSession.SessionID = CstTimeslot.SessionFK ON 
                      CstTest.TestID = CstSession.TestFK INNER JOIN
                      CstTimeslotEntry ON CstTimeslot.TimeslotID = CstTimeslotEntry.TimeslotFK
GO