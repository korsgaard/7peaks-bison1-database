SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[JN visning 1]
AS
SELECT     dbo.hcActivity.ActivityName, SUM(dbo.hcReportCourseActivity.RepActAmount) AS Expr1
FROM         dbo.hcReportCourseActivity INNER JOIN
                      dbo.hcCourseActivity ON dbo.hcReportCourseActivity.RepActCourseActivityID = dbo.hcCourseActivity.CourseActivityID INNER JOIN
                      dbo.hcActivity ON dbo.hcCourseActivity.CourseActivityActivityID = dbo.hcActivity.ActivityID INNER JOIN
                      dbo.hcReport ON dbo.hcReportCourseActivity.RepActRepID = dbo.hcReport.ReportID
GROUP BY dbo.hcActivity.ActivityName
GO

DECLARE @value SQL_VARIANT = CAST(2 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_DefaultView', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
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
         Configuration = "(H (1[75] 4) )"
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
         Begin Table = "hcReportCourseActivity"
            Begin Extent = 
               Top = 164
               Left = 353
               Bottom = 351
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcCourseActivity"
            Begin Extent = 
               Top = 70
               Left = 611
               Bottom = 178
               Right = 819
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcActivity"
            Begin Extent = 
               Top = 50
               Left = 885
               Bottom = 311
               Right = 1058
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReport"
            Begin Extent = 
               Top = 221
               Left = 182
               Bottom = 366
               Right = 356
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
         Width = 3315
         Width = 3135
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
         Column = 4635
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2730
         Or = 1350
         Or = 1350
  ', 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'       Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_Filter', NULL, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_OrderBy', NULL, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_OrderByOn', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_Orientation', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

EXEC sys.sp_addextendedproperty N'MS_TableMaxRecords', 10000, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'ActivityName'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'ActivityName'
GO

DECLARE @value SQL_VARIANT = CAST(2760 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'ActivityName'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'Expr1'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'Expr1'
GO

DECLARE @value SQL_VARIANT = CAST(3420 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'JN visning 1', 'COLUMN', N'Expr1'
GO