CREATE TABLE [dbo].[TblMenu] (
  [MenuID] [int] NOT NULL CONSTRAINT [DF__TblMenu__MenuID__3DB3258D] DEFAULT (0),
  [MenuName] [nvarchar](50) NULL,
  [MenuPlacement] [nvarchar](50) NULL,
  [MenuRows] [nvarchar](50) NULL,
  [MenuTop] [nvarchar](50) NULL,
  [MenuLeft] [nvarchar](50) NULL,
  [MenuZindex] [nvarchar](50) NULL,
  [MenuSpeed] [int] NULL CONSTRAINT [DF__TblMenu__MenuSpe__3EA749C6] DEFAULT (0),
  [MenuStyle] [nvarchar](50) NULL,
  [MenuStyleOver] [nvarchar](50) NULL,
  [MenuStyleBorder] [nvarchar](50) NULL,
  CONSTRAINT [aaaaaTblMenu_PK] PRIMARY KEY NONCLUSTERED ([MenuID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MenuID]
  ON [dbo].[TblMenu] ([MenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO