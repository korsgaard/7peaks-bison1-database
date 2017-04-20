SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportStatistics]
	@StartDate datetime,
	@EndDate datetime,
	@UserID int
AS
BEGIN
	SET NOCOUNT ON;

DECLARE @EndDatePossible datetime;

SET @EndDatePossible = CASE WHEN @EndDate IS NOT NULL AND @EndDate <= dateadd(d, 0, datediff(d, 0, getdate())) THEN @EndDate ELSE dateadd(d, 0, datediff(d, 0, getdate() - 1)) END;

SELECT SUM(CASE WHEN ReportsMissed=0 AND ReportsBelow100Percent=0 AND ReportsPossible>0 AND ReportsDone>0  THEN 1 ELSE 0 END) AS AllReportsAbove100Percent,
SUM(CASE WHEN ReportsMissed=0 AND ReportsAbove100Percent=ReportsPossible THEN 1 ELSE 0 END) AS AllReportsAbove100PercentAndUpToDate,
SUM(CASE WHEN ReportsMissed=0 THEN 1 ELSE 0 END) AS NoMissedReports, 
SUM(CASE WHEN ReportsMissed=0 AND ScoreAvg>=100 THEN 1 ELSE 0 END) AS Above100PercentAverage,
SUM(CASE WHEN UserID=@UserID THEN ReportsMissed ELSE 0 END) AS UserReportsMissed,
SUM(CASE WHEN UserID=@UserID THEN ReportsPossible ELSE 0 END) AS UserReportsPossible,
SUM(CASE WHEN UserID=@UserID THEN ReportsDone ELSE 0 END) AS UserReportsDone,
SUM(CASE WHEN UserID=@UserID THEN ReportsBelow100Percent ELSE 0 END) AS UserReportsBelow100Percent,
SUM(CASE WHEN UserID=@UserID THEN ReportsAbove100Percent ELSE 0 END) AS UserReportsAbove100Percent,
SUM(CASE WHEN UserID=@UserID THEN ScoreAvg ELSE 0 END) AS UserScoreAvg
 FROM 
(
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
WHERE Healthgroup=0
GROUP BY UserID, FmwGroup.CourseStartDate, FmwGroup.CourseEndDate
) t1

END
GO