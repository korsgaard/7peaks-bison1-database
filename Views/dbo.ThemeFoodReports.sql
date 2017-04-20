SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[ThemeFoodReports]
AS
SELECT        ReportPersonID,ReportMissed,ReportDate,SUM(CASE
						 WHEN dbo.hcReportCourseActivity.RepActCourseActivityID = 14 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 15 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 16 THEN dbo.hcReportCourseActivity.RepActAmount
						 ELSE 0
						 END) AS Food, 
						 SUM(CASE
						 WHEN dbo.hcReportCourseActivity.RepActCourseActivityID = 12
						 THEN dbo.hcReportCourseActivity.RepActAmount
						 ELSE 0
						 END) AS Fruit, 
						 SUM(CASE
						 WHEN dbo.hcReportCourseActivity.RepActCourseActivityID = 38
						 THEN dbo.hcReportCourseActivity.RepActAmount
						 ELSE 0
						 END) AS Veggies
FROM            dbo.hcReport LEFT OUTER JOIN
                         dbo.hcReportCourseActivity ON dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID
WHERE        (dbo.hcReport.ReportMissed = 1 OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 14) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 15) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 16) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 12) OR 
						 (dbo.hcReportCourseActivity.RepActCourseActivityID = 38))
GROUP BY ReportPersonID,ReportDate,ReportMissed
GO