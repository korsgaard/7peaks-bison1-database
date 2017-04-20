CREATE TABLE [dbo].[TblCSSSelectorTypeProperties] (
  [CSSSelectorTypeID] [int] NOT NULL CONSTRAINT [DF__TblCSSSel__CSSSe__4CA06362] DEFAULT (0),
  [PropertyKey] [nvarchar](100) NOT NULL,
  [PropertyValue] [nvarchar](50) NOT NULL,
  CONSTRAINT [aaaaaTblCSSSelectorTypeProperties_PK] PRIMARY KEY NONCLUSTERED ([CSSSelectorTypeID], [PropertyKey]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StyleElementID]
  ON [dbo].[TblCSSSelectorTypeProperties] ([CSSSelectorTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSPropertyTblCSSSelectorTypeProperties]
  ON [dbo].[TblCSSSelectorTypeProperties] ([PropertyKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSSelectorTypeTblCSSSelectorTypeProperties]
  ON [dbo].[TblCSSSelectorTypeProperties] ([CSSSelectorTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblCSSSelectorTypeProperties]
  ADD CONSTRAINT [FK_TblCSSSelectorTypeProperties_TblCSSProperty] FOREIGN KEY ([PropertyKey]) REFERENCES [dbo].[TblCSSProperty] ([PropertyKey]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblCSSSelectorTypeProperties]
  ADD CONSTRAINT [FK_TblCSSSelectorTypeProperties_TblCSSSelectorType] FOREIGN KEY ([CSSSelectorTypeID]) REFERENCES [dbo].[TblCSSSelectorType] ([CSSSelectorTypeID]) ON DELETE CASCADE
GO