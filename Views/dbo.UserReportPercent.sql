SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[UserReportPercent]
AS
SELECT        dbo.FmwUser.UserID, dbo.FmwUser.Hidden, dbo.hcReport.ReportID, dbo.hcReport.ReportDate, ISNULL(100 * SUM(dbo.hcReportCourseActivity.RepActPoints) / CAST(dbo.hcReport.ReportIndexGoal AS decimal), 0) 
                         AS [Percent], dbo.hcReport.ReportIndexGoal, SUM(dbo.hcReportCourseActivity.RepActPoints) AS ReportPoints, ISNULL(100 * SUM(dbo.hcReportCourseActivity.RepActPoints) 
                         / CAST(dbo.FmwUser.UserIndex AS decimal), 0) AS PercentOriginal, ISNULL(100 * dbo.hcReport.ReportIndexGoal / dbo.FmwUser.UserIndex, 0) AS LevelPercent, dbo.FmwUser.FullName
FROM            dbo.FmwUser RIGHT OUTER JOIN
                         dbo.hcReport ON dbo.FmwUser.UserID = dbo.hcReport.ReportPersonID LEFT OUTER JOIN
                         dbo.hcReportCourseActivity ON dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID
GROUP BY dbo.FmwUser.UserID, dbo.FmwUser.Hidden, dbo.hcReport.ReportID, dbo.hcReport.ReportDate, dbo.hcReport.ReportIndexGoal, dbo.FmwUser.UserIndex, 
                         ISNULL(100 * dbo.hcReport.ReportIndexGoal / dbo.FmwUser.UserIndex, 0), dbo.FmwUser.FullName
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
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
         Begin Table = "FmwUser (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "hcReport (dbo)"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReportCourseActivity (dbo)"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
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
         Column = 5415
         Alias = 2460
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
', 'SCHEMA', N'dbo', 'VIEW', N'UserReportPercent'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'UserReportPercent'
GO