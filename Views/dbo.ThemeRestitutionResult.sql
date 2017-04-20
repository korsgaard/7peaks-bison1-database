SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[ThemeRestitutionResult]
AS
SELECT        ReportPersonID,ReportMissed,ReportDate,SUM(CASE
						 WHEN ((dbo.hcReportCourseActivity.RepActCourseActivityID = 14 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 15 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 16 AND dbo.hcReportCourseActivity.RepActAmount = 1)) THEN 1 
						 WHEN (dbo.hcReportCourseActivity.RepActCourseActivityID = 39 AND dbo.hcReportCourseActivity.RepActAmount = 1) THEN -1
						 ELSE 0
						 END) AS FoodAndSleep,MIN(CASE
						 WHEN (dbo.hcReportCourseActivity.RepActCourseActivityID = 46 AND dbo.hcReportCourseActivity.RepActAmount = 1) THEN 0
						 ELSE 1
						 END) AS NoFish
FROM            dbo.hcReport LEFT OUTER JOIN
                         dbo.hcReportCourseActivity ON dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID
WHERE        (dbo.hcReport.ReportMissed = 1 OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 14 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 15 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 16 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR
                         (dbo.hcReportCourseActivity.RepActCourseActivityID = 39 AND dbo.hcReportCourseActivity.RepActAmount = 1) OR 
						 (dbo.hcReportCourseActivity.RepActCourseActivityID = 46 AND dbo.hcReportCourseActivity.RepActAmount = 1))
GROUP BY ReportPersonID,ReportDate,ReportMissed

GO