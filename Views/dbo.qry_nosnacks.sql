SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[qry_nosnacks]
AS
SELECT     TOP (100) PERCENT SUM(dbo.hcReportCourseActivity.RepActAmount) AS totalsnacks, dbo.hcReportCourseActivity.RepActCourseActivityID, 
                      dbo.FmwUser.UserID, dbo.CstContest2User.ContestFK, dbo.FmwUser.Username, dbo.FmwUser.FirstName, dbo.FmwUser.LastName, 
                      dbo.FmwUser.Email, dbo.FmwUser.FullName
FROM         dbo.hcReportCourseActivity INNER JOIN
                      dbo.hcReport ON dbo.hcReportCourseActivity.RepActRepID = dbo.hcReport.ReportID INNER JOIN
                      dbo.FmwUser ON dbo.hcReport.ReportPersonID = dbo.FmwUser.UserID RIGHT OUTER JOIN
                      dbo.CstContest2User ON dbo.FmwUser.UserID = dbo.CstContest2User.UserFK
WHERE     (dbo.hcReport.ReportDate >= CONVERT(DATETIME, '2007-09-19 00:00:00', 102)) AND (dbo.hcReportCourseActivity.RepActCourseActivityID = 20) AND 
                      (dbo.hcReport.ReportDate <= CONVERT(DATETIME, '2007-09-25 00:00:00', 102))
GROUP BY dbo.FmwUser.UserID, dbo.hcReportCourseActivity.RepActCourseActivityID, dbo.CstContest2User.ContestFK, dbo.FmwUser.Username, 
                      dbo.FmwUser.FirstName, dbo.FmwUser.LastName, dbo.FmwUser.Email, dbo.FmwUser.FullName
HAVING      (dbo.CstContest2User.ContestFK = 52)
ORDER BY totalsnacks
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[4] 3) )"
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
         Begin Table = "hcReportCourseActivity"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReport"
            Begin Extent = 
               Top = 6
               Left = 288
               Bottom = 114
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FmwUser"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 332
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstContest2User"
            Begin Extent = 
               Top = 178
               Left = 299
               Bottom = 271
               Right = 466
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3165
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2220
         Alias = 900
         Table = 2580
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3390
         Or = 1350
      ', 'SCHEMA', N'dbo', 'VIEW', N'qry_nosnacks'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'   Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'qry_nosnacks'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'qry_nosnacks'
GO