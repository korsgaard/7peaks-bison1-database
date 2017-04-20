CREATE TABLE [dbo].[FmwMembership] (
  [GroupID] [int] NOT NULL,
  [UserID] [int] NOT NULL,
  [Mailstop] [bit] NOT NULL CONSTRAINT [DF__FmwMember__Mails__15502E78] DEFAULT (0),
  [Default] [bit] NOT NULL CONSTRAINT [DF__FmwMember__Defau__164452B1] DEFAULT (0),
  [Level] [int] NULL CONSTRAINT [DF__FmwMember__Level__173876EA] DEFAULT (0),
  CONSTRAINT [aaaaaFmwMembership_PK] PRIMARY KEY NONCLUSTERED ([GroupID], [UserID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FmwGroupFmwMembership]
  ON [dbo].[FmwMembership] ([GroupID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserFmwMembership]
  ON [dbo].[FmwMembership] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FmwMembership] WITH NOCHECK
  ADD CONSTRAINT [FmwMembership_FK00] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[FmwGroup] ([GroupID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[FmwMembership] WITH NOCHECK
  ADD CONSTRAINT [FmwMembership_FK01] FOREIGN KEY ([UserID]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO

DECLARE @value SQL_VARIANT = CAST(2 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_DefaultView', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

EXEC sys.sp_addextendedproperty N'MS_Filter', N'((FmwMembership.UserID=1846))', 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

EXEC sys.sp_addextendedproperty N'MS_OrderBy', NULL, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_OrderByOn', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS tinyint)
EXEC sys.sp_addextendedproperty N'MS_Orientation', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

EXEC sys.sp_addextendedproperty N'MS_TableMaxRecords', 10000, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'GroupID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'GroupID'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'GroupID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'UserID'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Mailstop'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Mailstop'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Mailstop'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Default'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Default'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Default'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS bit)
EXEC sys.sp_addextendedproperty N'MS_ColumnHidden', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Level'
GO

DECLARE @value SQL_VARIANT = CAST(0 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnOrder', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Level'
GO

DECLARE @value SQL_VARIANT = CAST(-1 AS smallint)
EXEC sys.sp_addextendedproperty N'MS_ColumnWidth', @value, 'SCHEMA', N'dbo', 'TABLE', N'FmwMembership', 'COLUMN', N'Level'
GO