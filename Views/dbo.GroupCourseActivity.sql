SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[GroupCourseActivity]
AS
SELECT     dbo.FmwGroup.GroupID, dbo.hcActivity.ActivityID, dbo.hcCourseActivity.CourseActivityID, dbo.hcActivity.ActivityName, dbo.hcActivity.ActivitySortDesc, 
                      dbo.hcCourseActivity.CourseActivityPointsPrUnit, dbo.hcActivity.ActivityCheckbox, dbo.hcActivity.ActivityMinValue, dbo.hcActivity.ActivityMaxValue, 
                      dbo.hcActivity.ActivityMaxAllowed, dbo.hcActivity.ActivityDescription, dbo.FmwGroup.CourseStartDate, dbo.FmwGroup.CourseEndDate, dbo.hcActivity.ActivityValues, 
                      dbo.hcActivity.ActivityUnit
FROM         dbo.hcReportDefinition LEFT OUTER JOIN
                      dbo.hcActivity RIGHT OUTER JOIN
                      dbo.hcCourseActivity ON dbo.hcActivity.ActivityID = dbo.hcCourseActivity.CourseActivityActivityID ON 
                      dbo.hcReportDefinition.CourseID = dbo.hcCourseActivity.CourseActivityCourseID RIGHT OUTER JOIN
                      dbo.FmwGroup ON dbo.hcReportDefinition.CourseID = dbo.FmwGroup.ReportDefinitionFK
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
         Begin Table = "hcReportDefinition"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 99
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcCourseActivity"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FmwGroup"
            Begin Extent = 
               Top = 114
               Left = 284
               Bottom = 222
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcActivity"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 114
               Right = 416
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
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'GroupCourseActivity'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'GroupCourseActivity'
GO