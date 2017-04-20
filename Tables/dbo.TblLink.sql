CREATE TABLE [dbo].[TblLink] (
  [LinkID] [int] IDENTITY,
  [LinkName] [nvarchar](50) NOT NULL CONSTRAINT [DF__TblLink__LinkNam__3A6CA48E] DEFAULT (''),
  [LinkURL] [nvarchar](255) NOT NULL CONSTRAINT [DF__TblLink__LinkURL__3B60C8C7] DEFAULT (''),
  [LinkCategoryID] [int] NULL CONSTRAINT [DF__TblLink__LinkCat__3C54ED00] DEFAULT (1),
  CONSTRAINT [aaaaaTblLink_PK] PRIMARY KEY NONCLUSTERED ([LinkID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [LinkCategoryID]
  ON [dbo].[TblLink] ([LinkCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LinkID]
  ON [dbo].[TblLink] ([LinkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO