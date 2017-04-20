SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[ThemeSocialScore]
AS
SELECT        RANK() OVER ( ORDER BY (ISNULL(SUM(dbo.ThemeCommentCount.Comments), 0) + ISNULL(SUM(dbo.ThemePostCount.Posts), 0)) * 2 + ISNULL(SUM(dbo.ThemeLikeCount.Likes), 0) DESC) AS Placement, dbo.FmwUser.UserID AS UserFK, ISNULL(SUM(dbo.ThemeCommentCount.Comments), 0) + ISNULL(SUM(dbo.ThemePostCount.Posts), 0) AS Comments, ISNULL(SUM(dbo.ThemeLikeCount.Likes), 0) AS Likes, 
                         (ISNULL(SUM(dbo.ThemeCommentCount.Comments), 0) + ISNULL(SUM(dbo.ThemePostCount.Posts), 0)) * 2 + ISNULL(SUM(dbo.ThemeLikeCount.Likes), 0) AS Score
FROM            dbo.FmwUser LEFT OUTER JOIN
                         dbo.ThemeCommentCount ON dbo.FmwUser.UserID = dbo.ThemeCommentCount.UserFK LEFT OUTER JOIN
                         dbo.ThemeLikeCount ON dbo.FmwUser.UserID = dbo.ThemeLikeCount.UserFK LEFT OUTER JOIN
                         dbo.ThemePostCount ON dbo.FmwUser.UserID = dbo.ThemePostCount.FromUserFK
GROUP BY dbo.FmwUser.UserID
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
         Begin Table = "FmwUser (dbo)"
            Begin Extent = 
               Top = 73
               Left = 787
               Bottom = 203
               Right = 1024
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ThemeCommentCount (dbo)"
            Begin Extent = 
               Top = 21
               Left = 373
               Bottom = 117
               Right = 543
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ThemeLikeCount (dbo)"
            Begin Extent = 
               Top = 133
               Left = 431
               Bottom = 229
               Right = 601
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ThemePostCount (dbo)"
            Begin Extent = 
               Top = 225
               Left = 422
               Bottom = 321
               Right = 592
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
         Column = 7695
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
', 'SCHEMA', N'dbo', 'VIEW', N'ThemeSocialScore'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'ThemeSocialScore'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'ThemeSocialScore'
GO