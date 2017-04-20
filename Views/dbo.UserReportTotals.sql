SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[UserReportTotals]
AS
SELECT DISTINCT 
                         TOP (100) PERCENT dbo.hcActivity.ActivityID, dbo.hcReport.ReportPersonID, dbo.hcActivity.ActivityName, SUM(dbo.hcReportCourseActivity.RepActAmount) AS Total, 
                         ROUND(AVG(CAST(dbo.hcReportCourseActivity.RepActAmount AS float)), 1) AS Average, COUNT(dbo.hcReportCourseActivity.RepActAmount) AS Reports, dbo.hcActivity.ActivityCheckbox, dbo.hcActivity.ActivityUnit, 
                         MAX(dbo.hcReport.ReportIndexGoal) AS MaxIndex
FROM            dbo.hcActivity INNER JOIN
                         dbo.hcCourseActivity INNER JOIN
                         dbo.hcReport INNER JOIN
                         dbo.hcReportCourseActivity ON dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID ON dbo.hcCourseActivity.CourseActivityID = dbo.hcReportCourseActivity.RepActCourseActivityID ON 
                         dbo.hcActivity.ActivityID = dbo.hcCourseActivity.CourseActivityActivityID
WHERE        (dbo.hcReport.ReportMissed = 0)
GROUP BY dbo.hcReport.ReportPersonID, dbo.hcReportCourseActivity.RepActCourseActivityID, dbo.hcActivity.ActivityName, dbo.hcActivity.ActivityCheckbox, dbo.hcActivity.ActivityUnit, dbo.hcActivity.ActivityID
ORDER BY dbo.hcReport.ReportPersonID

GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "hcActivity (dbo)"
            Begin Extent = 
               Top = 6
               Left = 775
               Bottom = 153
               Right = 969
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcCourseActivity (dbo)"
            Begin Extent = 
               Top = 6
               Left = 505
               Bottom = 136
               Right = 737
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReport (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 260
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReportCourseActivity (dbo)"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 259
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 4440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
    ', 'SCHEMA', N'dbo', 'VIEW', N'UserReportTotals'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'     Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'UserReportTotals'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'UserReportTotals'
GO