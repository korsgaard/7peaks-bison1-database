SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ThemeFoodResultUser]
	@StartDate datetime,
	@EndDate datetime,
	@UserID int
AS
BEGIN
	SET NOCOUNT ON;

SELECT t1.*, ISNULL(t2.CurFoodAvg, 0) AS CurFoodAvg, ISNULL(t2.CurFruitAvg, 0) AS CurFruitAvg, ISNULL(t2.CurVeggieAvg, 0) AS CurVeggieAvg, MaxReportDate, ISNULL(ReportCount,  0) As ReportCount FROM (SELECT ISNULL(ReportPersonID, 0) AS ReportPersonID, ROUND(AVG(CAST(Food as float)),1) AS FoodAvg, ROUND(AVG(CAST(Fruit as float)),1) AS FruitAvg, ROUND(AVG(CAST(Veggies as float)),1) AS VeggieAvg FROM ThemeFoodReports WHERE ReportDate < @StartDate AND ReportMissed = 0 AND ReportPersonID=@UserID GROUP BY ReportPersonID) t1
LEFT JOIN (SELECT ISNULL(ReportPersonID, 0) AS ReportPersonID, ROUND(AVG(CAST(Food as float)),1) AS CurFoodAvg, ROUND(AVG(CAST(Fruit as float)),1) AS CurFruitAvg, ROUND(AVG(CAST(Veggies as float)),1) AS CurVeggieAvg, MAX(ReportDate) AS MaxReportDate, COUNT(ReportDate) AS ReportCount FROM ThemeFoodReports WHERE ReportDate >= @StartDate AND ReportDate <= @EndDate AND ReportMissed = 0 AND ReportPersonID=@UserID GROUP BY ReportPersonID) t2 ON t1.ReportPersonID = t2.ReportPersonID
END
GO