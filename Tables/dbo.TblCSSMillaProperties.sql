CREATE TABLE [dbo].[TblCSSMillaProperties] (
  [SelectorKey] [nvarchar](100) NOT NULL,
  [PropertyKey] [nvarchar](100) NOT NULL,
  CONSTRAINT [aaaaaTblCSSMillaProperties_PK] PRIMARY KEY NONCLUSTERED ([SelectorKey], [PropertyKey]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TblCSSMillaPropertiesPropertyKey]
  ON [dbo].[TblCSSMillaProperties] ([PropertyKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSMillaPropertiesSelectorKey]
  ON [dbo].[TblCSSMillaProperties] ([SelectorKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSPropertyTblCSSMillaProperties]
  ON [dbo].[TblCSSMillaProperties] ([PropertyKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSSelectorTblCSSMillaProperties]
  ON [dbo].[TblCSSMillaProperties] ([SelectorKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblCSSMillaProperties] WITH NOCHECK
  ADD CONSTRAINT [TblCSSMillaProperties_FK00] FOREIGN KEY ([PropertyKey]) REFERENCES [dbo].[TblCSSProperty] ([PropertyKey]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblCSSMillaProperties] WITH NOCHECK
  ADD CONSTRAINT [TblCSSMillaProperties_FK01] FOREIGN KEY ([SelectorKey]) REFERENCES [dbo].[TblCSSSelector] ([SelectorKey]) ON DELETE CASCADE ON UPDATE CASCADE
GO