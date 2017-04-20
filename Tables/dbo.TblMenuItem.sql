CREATE TABLE [dbo].[TblMenuItem] (
  [MenuID] [int] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__658C0CBD] DEFAULT (0),
  [MenuItemID] [int] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__668030F6] DEFAULT (0),
  [MenuItemTitle] [nvarchar](50) NULL,
  [MenuItemToolTip] [nvarchar](255) NULL,
  [MenuItemActive] [bit] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__6774552F] DEFAULT (0),
  [MenuItemParentID] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__68687968] DEFAULT (0),
  [MenuItemDocumentID] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__695C9DA1] DEFAULT (0),
  [MenuItemLinkID] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__6A50C1DA] DEFAULT (0),
  [MenuItemTarget] [nvarchar](50) NULL,
  [MenuItemOrder] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__6B44E613] DEFAULT (0),
  [MenuItemImageID] [int] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__6C390A4C] DEFAULT (0),
  [MenuItemImageOverID] [int] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__6D2D2E85] DEFAULT (0),
  [MenuItemImageActiveID] [int] NOT NULL CONSTRAINT [DF__TblMenuIt__MenuI__6E2152BE] DEFAULT (0),
  [MenuItemStyle] [nvarchar](50) NULL,
  [MenuItemStyleOver] [nvarchar](50) NULL,
  [MenuItemStyleActive] [nvarchar](50) NULL,
  [MenuItemAlign] [nvarchar](50) NULL,
  [MenuItemRows] [nvarchar](1) NULL,
  [MenuItemIconImageID] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__6F1576F7] DEFAULT (0),
  [MenuItemOnClick] [nvarchar](50) NULL,
  [MenuItemOnMouseOver] [nvarchar](50) NULL,
  [MenuItemOnMouseOut] [nvarchar](50) NULL,
  [MenuItemAspMenuID] [int] NULL CONSTRAINT [DF__TblMenuIt__MenuI__70099B30] DEFAULT (0),
  CONSTRAINT [aaaaaTblMenuItem_PK] PRIMARY KEY NONCLUSTERED ([MenuID], [MenuItemID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MenuDocumentID]
  ON [dbo].[TblMenuItem] ([MenuItemDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuID]
  ON [dbo].[TblMenuItem] ([MenuItemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuID1]
  ON [dbo].[TblMenuItem] ([MenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemAspMenuID]
  ON [dbo].[TblMenuItem] ([MenuItemAspMenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemIconImageID]
  ON [dbo].[TblMenuItem] ([MenuItemIconImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemImageActiveID]
  ON [dbo].[TblMenuItem] ([MenuItemImageActiveID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemImageID]
  ON [dbo].[TblMenuItem] ([MenuItemImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemImageOnID]
  ON [dbo].[TblMenuItem] ([MenuItemImageOverID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemLinkID]
  ON [dbo].[TblMenuItem] ([MenuItemLinkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuItemOrder]
  ON [dbo].[TblMenuItem] ([MenuItemOrder])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuParentID]
  ON [dbo].[TblMenuItem] ([MenuItemParentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblMenuTblMenuItem]
  ON [dbo].[TblMenuItem] ([MenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblMenuItem] WITH NOCHECK
  ADD CONSTRAINT [TblMenuItem_FK00] FOREIGN KEY ([MenuID]) REFERENCES [dbo].[TblMenu] ([MenuID]) ON DELETE CASCADE
GO