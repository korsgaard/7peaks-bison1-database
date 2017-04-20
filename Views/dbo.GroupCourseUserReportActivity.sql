SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[GroupCourseUserReportActivity]
AS
SELECT     TOP (100) PERCENT dbo.GroupCourseActivity.GroupID, dbo.hcReport.ReportID, dbo.hcReport.ReportDate, dbo.FmwUser.UserID, 
                      dbo.FmwUser.FullName AS UserFullName, dbo.FmwUser.UserIndex, dbo.GroupCourseActivity.ActivityID, dbo.GroupCourseActivity.CourseActivityID, 
                      dbo.GroupCourseActivity.ActivityName, dbo.hcReportCourseActivity.RepActAmount, dbo.hcReportCourseActivity.RepActPoints, dbo.hcReport.ReportNote, 
                      dbo.GroupCourseActivity.ActivityValues
FROM         dbo.GroupCourseActivity INNER JOIN
                      dbo.hcReport ON dbo.GroupCourseActivity.CourseStartDate <= dbo.hcReport.ReportDate AND 
                      dbo.GroupCourseActivity.CourseEndDate >= dbo.hcReport.ReportDate LEFT OUTER JOIN
                      dbo.FmwUser ON dbo.FmwUser.UserID = dbo.hcReport.ReportPersonID FULL OUTER JOIN
                      dbo.hcReportCourseActivity ON dbo.hcReportCourseActivity.RepActCourseActivityID = dbo.GroupCourseActivity.CourseActivityID AND 
                      dbo.hcReport.ReportID = dbo.hcReportCourseActivity.RepActRepID
WHERE     (dbo.hcReport.ReportDate IS NOT NULL)
ORDER BY dbo.GroupCourseActivity.GroupID, dbo.FmwUser.UserID, dbo.GroupCourseActivity.CourseActivityID
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
         Begin Table = "GroupCourseActivity"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "hcReport"
            Begin Extent = 
               Top = 136
               Left = 369
               Bottom = 244
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FmwUser"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReportCourseActivity"
            Begin Extent = 
               Top = 40
               Left = 724
               Bottom = 148
               Right = 920
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
      Begin ColumnWidths = 13
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
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410', 'SCHEMA', N'dbo', 'VIEW', N'GroupCourseUserReportActivity'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'GroupCourseUserReportActivity'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'GroupCourseUserReportActivity'
GO