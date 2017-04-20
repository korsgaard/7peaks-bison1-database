SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportStatisticsUsers]
	@StartDate datetime,
	@EndDate datetime,
	@UserID int
AS
BEGIN
	SET NOCOUNT ON;

DECLARE @EndDatePossible datetime;

SET @EndDatePossible = CASE WHEN @EndDate IS NOT NULL AND @EndDate <= dateadd(d, 0, datediff(d, 0, getdate())) THEN @EndDate ELSE dateadd(d, 0, datediff(d, 0, getdate() - 1)) END;

SELECT 
UserID,
DATEDIFF(day , (CASE WHEN @StartDate IS NOT NULL AND @StartDate >= FmwGroup.CourseStartDate THEN @StartDate ELSE FmwGroup.CourseStartDate END), (CASE WHEN @EndDatePossible <= FmwGroup.CourseEndDate THEN @EndDatePossible ELSE FmwGroup.CourseEndDate END)) + 1 AS ReportsPossible,
SUM(CASE WHEN ReportMissed=1 THEN 1 ELSE 0 END) AS ReportsMissed, 
SUM(CASE WHEN ReportMissed=0 THEN 1 ELSE 0 END) AS ReportsDone, 
SUM(CASE WHEN ReportPercent < 100 AND ReportMissed=0 THEN 1 ELSE 0 END) AS ReportsBelow100Percent, 
SUM(CASE WHEN ReportPercent >= 100 AND ReportMissed=0 THEN 1 ELSE 0 END) AS ReportsAbove100Percent,
ISNULL(AVG(CAST(ReportPercent as float)),0) AS ScoreAvg
FROM FmwUser
LEFT JOIN CstTeam ON TeamFK=TeamID
LEFT JOIN FmwGroup ON GroupFK=GroupID
LEFT OUTER JOIN [hcReport] ON FmwUser.UserID=ReportPersonID AND ReportDate >= (CASE WHEN @StartDate >= FmwGroup.CourseStartDate THEN @StartDate ELSE FmwGroup.CourseStartDate END) AND ReportDate <= (CASE WHEN @EndDatePossible <= FmwGroup.CourseEndDate THEN @EndDatePossible ELSE FmwGroup.CourseEndDate END)
WHERE (@UserID IS NULL OR UserID=@UserID) AND Healthgroup=0
GROUP BY UserID, FmwGroup.CourseStartDate, FmwGroup.CourseEndDate

END
GO