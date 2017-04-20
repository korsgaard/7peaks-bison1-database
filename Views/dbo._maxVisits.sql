SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[_maxVisits]
AS
SELECT     MAX(StatsHitCount) AS MaxHitCount, MAX(StatsVisitCount) AS MaxVisits, StatsDate
FROM         u7734201.TblStats
GROUP BY StatsDate
GO