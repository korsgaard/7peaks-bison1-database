SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[NxtFeedView]
AS
SELECT     dbo.NxtFeedItem.FeedItemID, COUNT(DISTINCT dbo.NxtFeedItemComment.FeedItemCommentID) AS CommentCount, 
                      COUNT(DISTINCT dbo.NxtFeedItemLike.FeedItemLikeID) AS LikeCount, dbo.NxtFeedItem.FeedItemTypeFK, dbo.NxtFeedItem.CreateTS, dbo.hcReport.ReportDate, 
                      dbo.NxtFeedItemType.Heading, PostUser.UserID, PostUser.FullName AS UserName, dbo.CstTeam.TeamID, dbo.CstTeam.Title AS TeamName, 
                      dbo.NxtFeedItem.FromUserFK, dbo.NxtFeedItem.PostHeading, dbo.NxtFeedItem.PostContent
FROM         dbo.NxtFeedItemComment RIGHT OUTER JOIN
                      dbo.CstTeam RIGHT OUTER JOIN
                      dbo.NxtFeedItem INNER JOIN
                      dbo.NxtFeedItemType ON dbo.NxtFeedItem.FeedItemTypeFK = dbo.NxtFeedItemType.FeedItemTypeID LEFT OUTER JOIN
                      dbo.FmwUser AS PostUser ON dbo.NxtFeedItem.UserFK = PostUser.UserID ON dbo.CstTeam.TeamID = PostUser.TeamFK ON 
                      dbo.NxtFeedItemComment.FeedItemFK = dbo.NxtFeedItem.FeedItemID LEFT OUTER JOIN
                      dbo.NxtFeedItemLike ON dbo.NxtFeedItem.FeedItemID = dbo.NxtFeedItemLike.FeedItemFK LEFT OUTER JOIN
                      dbo.NxtFeedItemRelated LEFT OUTER JOIN
                      dbo.hcReport ON dbo.NxtFeedItemRelated.hcReportFK = dbo.hcReport.ReportID ON dbo.NxtFeedItem.FeedItemID = dbo.NxtFeedItemRelated.FeedItemFK
GROUP BY dbo.NxtFeedItem.FeedItemID, dbo.NxtFeedItem.FeedItemTypeFK, dbo.NxtFeedItem.CreateTS, dbo.hcReport.ReportDate, dbo.NxtFeedItemType.Heading, 
                      dbo.NxtFeedItem.PostHeading, dbo.NxtFeedItem.PostContent, PostUser.UserID, PostUser.FullName, dbo.CstTeam.TeamID, dbo.CstTeam.Title, 
                      dbo.NxtFeedItem.FromUserFK
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[22] 2[4] 3) )"
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
         Top = -180
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NxtFeedItemComment"
            Begin Extent = 
               Top = 13
               Left = 160
               Bottom = 121
               Right = 342
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstTeam"
            Begin Extent = 
               Top = 390
               Left = 274
               Bottom = 498
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NxtFeedItem"
            Begin Extent = 
               Top = 211
               Left = 21
               Bottom = 319
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "NxtFeedItemType"
            Begin Extent = 
               Top = 410
               Left = 75
               Bottom = 488
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PostUser"
            Begin Extent = 
               Top = 309
               Left = 520
               Bottom = 417
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NxtFeedItemLike"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 99
               Right = 613
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NxtFeedItemRelated"
            Begin Extent = 
               Top = 148
               Left = 378
               Bottom = 241
               Right = 552
  ', 'SCHEMA', N'dbo', 'VIEW', N'NxtFeedView'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'          End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hcReport"
            Begin Extent = 
               Top = 166
               Left = 740
               Bottom = 363
               Right = 989
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
      Begin ColumnWidths = 14
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
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1680
         Table = 1665
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
', 'SCHEMA', N'dbo', 'VIEW', N'NxtFeedView'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'NxtFeedView'
GO