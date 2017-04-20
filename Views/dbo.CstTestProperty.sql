﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CstTestProperty]
AS
SELECT     TOP (100) PERCENT dbo.CstTest.TestID, dbo.CstProperty.PropertyID, dbo.CstProperty.Number AS PropertyNumber, dbo.CstProperty.Name AS PropertyName, 
                      dbo.CstProperty.FormulaFK AS PropertyFormulaFK, dbo.CstPropertyFormula.FormulaAllowEdit AS PropertyFormulaAllowEdit, 
                      dbo.CstProperty.Checkbox AS PropertyCheckbox, dbo.CstProperty.InputOnly AS PropertyInputOnly, dbo.CstProperty.NoPoints AS PropertyNoPoints, 
                      dbo.CstProperty.Unit AS PropertyUnit, dbo.CstProperty.Description AS PropertyDescription, dbo.CstProperty.Tooltip AS PropertyTooltip
FROM         dbo.CstPropertyFormula RIGHT OUTER JOIN
                      dbo.CstProperty RIGHT OUTER JOIN
                      dbo.CstTestProp RIGHT OUTER JOIN
                      dbo.CstTest ON dbo.CstTestProp.TestDefFK = dbo.CstTest.TestDefFK ON dbo.CstProperty.PropertyID = dbo.CstTestProp.PropFK ON 
                      dbo.CstPropertyFormula.FormulaID = dbo.CstProperty.FormulaFK
ORDER BY PropertyNumber, PropertyName
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
         Begin Table = "CstPropertyFormula"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstProperty"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 114
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "CstTestProp"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CstTest"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
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
', 'SCHEMA', N'dbo', 'VIEW', N'CstTestProperty'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'CstTestProperty'
GO