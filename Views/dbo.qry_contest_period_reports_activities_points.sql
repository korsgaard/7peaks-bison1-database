SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[qry_contest_period_reports_activities_points]
AS
SELECT     TOP 100 PERCENT u7734201.FmwUser.UserID, SUM(u7734201.hcReportCourseActivity.RepActPoints) AS Expr1, 
                      COUNT(DISTINCT u7734201.hcReport.ReportDate) AS Expr2
FROM         u7734201.hcReport INNER JOIN
                      u7734201.hcReportCourseActivity ON u7734201.hcReport.ReportID = u7734201.hcReportCourseActivity.RepActRepID INNER JOIN
                      u7734201.hcCourseActivity ON u7734201.hcReportCourseActivity.RepActCourseActivityID = u7734201.hcCourseActivity.CourseActivityID INNER JOIN
                      u7734201.FmwUser ON u7734201.hcReport.ReportPersonID = u7734201.FmwUser.UserID INNER JOIN
                      u7734201.CstContest2User ON u7734201.FmwUser.UserID = u7734201.CstContest2User.UserFK
WHERE     (u7734201.hcCourseActivity.CourseActivityID = 17 OR
                      u7734201.hcCourseActivity.CourseActivityID = 18 OR
                      u7734201.hcCourseActivity.CourseActivityID = 19 OR
                      u7734201.hcCourseActivity.CourseActivityID = 20) AND (u7734201.hcReport.ReportDate > CONVERT(DATETIME, '2005-11-08 00:00:00', 102)) AND 
                      (u7734201.hcReport.ReportDate <= CONVERT(DATETIME, '2005-11-15 00:00:00', 102)) AND (u7734201.FmwUser.Hidden = 0) AND 
                      (u7734201.FmwUser.TeamFK > 44 AND u7734201.FmwUser.TeamFK < 57) AND (u7734201.CstContest2User.ContestFK = 50)
GROUP BY u7734201.FmwUser.UserID
HAVING      (COUNT(DISTINCT u7734201.hcReport.ReportDate) = 7)
ORDER BY SUM(u7734201.hcReportCourseActivity.RepActPoints) DESC
GO