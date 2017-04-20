SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[_aktiviteter]
AS
SELECT     hcActivity.ActivityName, hcReport.ReportPersonID AS UserID, hcReport.ReportID, hcReport.ReportDate, 
                      hcReportCourseActivity.RepActAmount AS Amount, hcReportCourseActivity.RepActPoints AS Points, 
                      hcReportDefinition.CourseID, hcActivity.ActivityID
FROM         hcActivity INNER JOIN
                      hcCourseActivity ON hcActivity.ActivityID = hcCourseActivity.CourseActivityActivityID INNER JOIN
                      hcReportCourseActivity ON 
                      hcCourseActivity.CourseActivityID = hcReportCourseActivity.RepActCourseActivityID INNER JOIN
                      hcReport ON hcReportCourseActivity.RepActRepID = hcReport.ReportID INNER JOIN
                      hcReportDefinition ON hcCourseActivity.CourseActivityCourseID = hcReportDefinition.CourseID
WHERE     (hcReportDefinition.CourseID = 2)
GO