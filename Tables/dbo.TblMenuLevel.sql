CREATE TABLE [dbo].[TblMenuLevel] (
  [MenuID] [int] NOT NULL CONSTRAINT [DF__TblMenuLe__MenuI__5555A4F4] DEFAULT (0),
  [MenuLevelDepth] [int] NOT NULL CONSTRAINT [DF__TblMenuLe__MenuL__5649C92D] DEFAULT (0),
  [MenuLevelStyle] [nvarchar](50) NULL,
  [MenuLevelStyleOver] [nvarchar](50) NULL,
  [MenuLevelStyleBorder] [nvarchar](50) NULL,
  [MenuLevelRows] [nvarchar](1) NULL,
  [MenuLevelAlign] [nvarchar](50) NULL,
  [MenuLevelOffsetX] [int] NULL CONSTRAINT [DF__TblMenuLe__MenuL__573DED66] DEFAULT (0),
  [MenuLevelOffsetY] [int] NULL CONSTRAINT [DF__TblMenuLe__MenuL__5832119F] DEFAULT (0),
  [MenuLevelArrowImageID] [int] NULL CONSTRAINT [DF__TblMenuLe__MenuL__592635D8] DEFAULT (0),
  [MenuLevelArrowWidth] [int] NULL CONSTRAINT [DF__TblMenuLe__MenuL__5A1A5A11] DEFAULT (0),
  [MenuLevelArrowHeight] [int] NULL CONSTRAINT [DF__TblMenuLe__MenuL__5B0E7E4A] DEFAULT (0),
  CONSTRAINT [aaaaaTblMenuLevel_PK] PRIMARY KEY NONCLUSTERED ([MenuID], [MenuLevelDepth]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MenuLevelArrowImageID]
  ON [dbo].[TblMenuLevel] ([MenuLevelArrowImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MenuLevelMenuID]
  ON [dbo].[TblMenuLevel] ([MenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblMenuTblMenuLevel]
  ON [dbo].[TblMenuLevel] ([MenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblMenuLevel] WITH NOCHECK
  ADD CONSTRAINT [TblMenuLevel_FK00] FOREIGN KEY ([MenuID]) REFERENCES [dbo].[TblMenu] ([MenuID]) ON DELETE CASCADE
GO