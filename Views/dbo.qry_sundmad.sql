SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[qry_sundmad]
AS
SELECT     TOP 100 PERCENT FmwUser.UserID, COUNT(DISTINCT hcReport.ReportDate) AS reportcount, 
                      SUM(hcReportCourseActivity.RepActAmount) AS sundmad
FROM         FmwUser INNER JOIN
                      hcReport ON FmwUser.UserID = hcReport.ReportPersonID INNER JOIN
                      hcReportCourseActivity ON hcReport.ReportID = hcReportCourseActivity.RepActRepID INNER JOIN
                      hcCourseActivity ON hcReportCourseActivity.RepActCourseActivityID = hcCourseActivity.CourseActivityID INNER JOIN
                      CstContest2User ON FmwUser.UserID = CstContest2User.UserFK
WHERE     (hcReport.ReportDate >= CONVERT(DATETIME, '2005-11-09 00:00:00', 102) AND hcReport.ReportDate <= CONVERT(DATETIME, 
                      '2005-11-15 00:00:00', 102)) AND (CstContest2User.ContestFK = 50) AND (hcCourseActivity.CourseActivityID = 14 OR
                      hcCourseActivity.CourseActivityID = 15 OR
                      hcCourseActivity.CourseActivityID = 16)
GROUP BY FmwUser.UserID
HAVING      (COUNT(DISTINCT hcReport.ReportDate) = 7)
ORDER BY SUM(hcReportCourseActivity.RepActAmount) DESC
GO