SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ResetDB]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Days int;

	SET @Days = (SELECT DATEDIFF(DAY, CourseStartDate, GETDATE())-43 FROM FmwGroup WHERE GroupID=155);

	SELECT @Days;

	UPDATE FmwGroup SET CourseStartDate = DATEADD(DAY, @Days, CourseStartDate), CourseEndDate = DATEADD(DAY, @Days, CourseEndDate)
	UPDATE CstTeam SET StartDate = DATEADD(DAY, @Days, StartDate), EndDate = DATEADD(DAY, @Days, EndDate) WHERE GroupFK=155
	UPDATE hcReport SET ReportDate = DATEADD(DAY, @Days, ReportDate), ReportCreateTS = DATEADD(DAY, @Days, ReportCreateTS)
	UPDATE NxtFeedItem SET CreateTS = DATEADD(DAY, @Days, CreateTS)
	UPDATE NxtFeedItemComment SET CreateTS = DATEADD(DAY, @Days, CreateTS)

	DELETE FROM hcReport WHERE ReportDate > DATEADD(DAY, -3, GETDATE())
	DELETE FROM NxtFeedItem WHERE CreateTS > DATEADD(DAY, -3, GETDATE())
	DELETE FROM NxtFeedItemComment WHERE CreateTS > DATEADD(DAY, -3, GETDATE())

END
GO