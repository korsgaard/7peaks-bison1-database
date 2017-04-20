SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[ReportTotals]
AS
SELECT        dbo.UserPlacement.UserID, dbo.UserPlacement.Placement, dbo.UserPlacement.UserReportPercent, dbo.UserPlacement.UserPercent, dbo.UserPlacement.FullName, dbo.UserPlacement.TeamID, 
                         SUM(CASE WHEN dbo.hcReportCourseActivity.RepActCourseActivityID = 21 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 22 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 23 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 24 THEN dbo.hcReportCourseActivity.RepActAmount ELSE 0 END) AS Motion, SUM(CASE WHEN dbo.hcReportCourseActivity.RepActCourseActivityID = 17 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 18 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 19 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 20 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 39 OR
                         dbo.hcReportCourseActivity.RepActCourseActivityID = 45 THEN dbo.hcReportCourseActivity.RepActPoints ELSE 0 END) AS MinusPoints
FROM            dbo.hcReport RIGHT OUTER JOIN
                         dbo.UserPlacement ON dbo.hcReport.ReportPersonID = dbo.UserPlacement.UserID LEFT OUTER JOIN
                         dbo.hcReportCourseActivity ON dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID
GROUP BY dbo.hcReport.ReportPersonID, dbo.UserPlacement.UserID, dbo.UserPlacement.Placement, dbo.UserPlacement.UserReportPercent, dbo.UserPlacement.UserPercent, dbo.UserPlacement.FullName, 
                         dbo.UserPlacement.TeamID
HAVING        (dbo.UserPlacement.UserReportPercent = 1) AND (dbo.UserPlacement.UserPercent >= 100)
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
         Begin Table = "hcReport (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReportCourseActivity (dbo)"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserPlacement (dbo)"
            Begin Extent = 
               Top = 31
               Left = 351
               Bottom = 161
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 2
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
         Column = 1440
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
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'ReportTotals'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'ReportTotals'
GO