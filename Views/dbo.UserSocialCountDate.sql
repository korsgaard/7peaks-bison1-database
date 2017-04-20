SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[UserSocialCountDate]
AS
SELECT        TOP (100) PERCENT CASE WHEN dbo.LikeCountDate.UserFK IS NULL THEN dbo.CommentCountDate.UserFK ELSE dbo.LikeCountDate.UserFK END AS UserFK, CASE WHEN dbo.LikeCountDate.Date IS NULL 
                         THEN dbo.CommentCountDate.Date ELSE dbo.LikeCountDate.Date END AS Date, ISNULL(SUM(dbo.LikeCountDate.Likes), 0) AS Likes, ISNULL(SUM(dbo.CommentCountDate.Comments), 0) AS Comments
FROM            dbo.LikeCountDate FULL OUTER JOIN
                         dbo.CommentCountDate ON dbo.LikeCountDate.UserFK = dbo.CommentCountDate.UserFK AND dbo.LikeCountDate.Date = dbo.CommentCountDate.Date
GROUP BY CASE WHEN dbo.LikeCountDate.UserFK IS NULL THEN dbo.CommentCountDate.UserFK ELSE dbo.LikeCountDate.UserFK END, CASE WHEN dbo.LikeCountDate.Date IS NULL 
                         THEN dbo.CommentCountDate.Date ELSE dbo.LikeCountDate.Date END
ORDER BY UserFK, Date
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[14] 2[22] 3) )"
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
         Begin Table = "CommentCountDate (dbo)"
            Begin Extent = 
               Top = 88
               Left = 563
               Bottom = 201
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LikeCountDate (dbo)"
            Begin Extent = 
               Top = 78
               Left = 115
               Bottom = 191
               Right = 285
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
      Begin ColumnWidths = 12
         Column = 10380
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
', 'SCHEMA', N'dbo', 'VIEW', N'UserSocialCountDate'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'UserSocialCountDate'
GO