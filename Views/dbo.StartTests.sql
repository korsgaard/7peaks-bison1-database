SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[StartTests]
AS
SELECT     TOP 100 PERCENT u7734201.FmwUser.UserID, dbo.CstTestResultProperty.PropertyName, dbo.CstTestResultProperty.Value, 
                      dbo.CstTestResultProperty.Point, u7734201.FmwUser.UserPercent, u7734201.FmwUser.UserIndex, dbo.CstTestResultProperty.TestID, 
                      u7734201.CstGender.Gender, u7734201.CstTeam.Title, u7734201.FmwUser.Username
FROM         dbo.CstTestResultProperty INNER JOIN
                      u7734201.FmwUser ON dbo.CstTestResultProperty.UserFK = u7734201.FmwUser.UserID INNER JOIN
                      u7734201.CstGender ON u7734201.FmwUser.GenderFK = u7734201.CstGender.GenderID INNER JOIN
                      u7734201.CstTeam ON u7734201.FmwUser.TeamFK = u7734201.CstTeam.TeamID
WHERE     (dbo.CstTestResultProperty.TestID = 2 OR
                      dbo.CstTestResultProperty.TestID = 7) AND (u7734201.FmwUser.Hidden <> 1) AND (u7734201.FmwUser.TeamFK >= 45) AND 
                      (u7734201.FmwUser.TeamFK <= 57) AND (NOT (dbo.CstTestResultProperty.PropertyName = N'Diastole')) AND 
                      (NOT (dbo.CstTestResultProperty.PropertyName = N'Systole')) AND (NOT (dbo.CstTestResultProperty.PropertyName = N'Højde'))
ORDER BY dbo.CstTestResultProperty.UserFK, dbo.CstTestResultProperty.TestID, dbo.CstTestResultProperty.PropertyID
GO

DECLARE @value SQL_VARIANT = CAST(2 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_DefaultView', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
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
         Configuration = "(H (1 [56] 4 [18] 2))"
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
      ActivePaneConfig = 9
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CstTestResultProperty (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 288
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FmwUser"
            Begin Extent = 
               Top = 6
               Left = 240
               Bottom = 481
               Right = 401
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstGender"
            Begin Extent = 
               Top = 6
               Left = 439
               Bottom = 84
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstTeam"
            Begin Extent = 
               Top = 306
               Left = 578
               Bottom = 414
               Right = 736
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
      RowHeights = 220
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
         Filter = 3300
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

EXEC sys.sp_addextendedproperty N'MS_Filter', NULL, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

EXEC sys.sp_addextendedproperty N'MS_OrderBy', NULL, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_OrderByOn', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_Orientation', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

EXEC sys.sp_addextendedproperty N'MS_TableMaxRecords', 10000, 'SCHEMA', N'dbo', 'VIEW', N'StartTests'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(765 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'PropertyName'
GO

DECLARE @value SQL_VARIANT = CAST(7 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'PropertyName'
GO

DECLARE @value SQL_VARIANT = CAST(1605 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'PropertyName'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Value'
GO

DECLARE @value SQL_VARIANT = CAST(8 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Value'
GO

DECLARE @value SQL_VARIANT = CAST(675 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Value'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Point'
GO

DECLARE @value SQL_VARIANT = CAST(9 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Point'
GO

DECLARE @value SQL_VARIANT = CAST(630 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Point'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserPercent'
GO

DECLARE @value SQL_VARIANT = CAST(10 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserPercent'
GO

DECLARE @value SQL_VARIANT = CAST(1815 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserPercent'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserIndex'
GO

DECLARE @value SQL_VARIANT = CAST(6 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserIndex'
GO

DECLARE @value SQL_VARIANT = CAST(1050 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'UserIndex'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'TestID'
GO

DECLARE @value SQL_VARIANT = CAST(5 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'TestID'
GO

DECLARE @value SQL_VARIANT = CAST(735 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'TestID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Gender'
GO

DECLARE @value SQL_VARIANT = CAST(3 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Gender'
GO

DECLARE @value SQL_VARIANT = CAST(810 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Gender'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Title'
GO

DECLARE @value SQL_VARIANT = CAST(2 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Title'
GO

DECLARE @value SQL_VARIANT = CAST(1710 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Title'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Username'
GO

DECLARE @value SQL_VARIANT = CAST(4 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Username'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'VIEW', N'StartTests', 'COLUMN', N'Username'
GO