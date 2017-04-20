SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[GroupCourseUserReport]
AS
SELECT     GroupCourseActivity.GroupID, hcReport.ReportID, hcReport.ReportDate, FmwUser.UserID, 
                      SUM(hcReportCourseActivity.RepActPoints) * 100 / FmwUser.UserIndex AS Points, 
                      SUM(hcReportCourseActivity.RepActPoints) AS Total
FROM         GroupCourseActivity LEFT OUTER JOIN
                      hcReportCourseActivity ON 
                      hcReportCourseActivity.RepActCourseActivityID = GroupCourseActivity.CourseActivityID LEFT OUTER JOIN
                      hcReport ON hcReportCourseActivity.RepActRepID = hcReport.ReportID LEFT OUTER JOIN
                      FmwUser ON FmwUser.UserID = hcReport.ReportPersonID
GROUP BY GroupCourseActivity.GroupID, hcReport.ReportID, FmwUser.UserID, hcReport.ReportDate, 
                      FmwUser.UserIndex
HAVING      (hcReport.ReportDate IS NOT NULL)
GO