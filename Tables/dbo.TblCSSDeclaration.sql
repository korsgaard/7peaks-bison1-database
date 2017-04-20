CREATE TABLE [dbo].[TblCSSDeclaration] (
  [SelectorKey] [nvarchar](100) NOT NULL,
  [PropertyKey] [nvarchar](100) NOT NULL,
  [PropertyValue] [nvarchar](100) NOT NULL,
  CONSTRAINT [aaaaaTblCSSDeclaration_PK] PRIMARY KEY NONCLUSTERED ([SelectorKey], [PropertyKey]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SelectorKey]
  ON [dbo].[TblCSSDeclaration] ([SelectorKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblCSSDeclarationPropertyKey]
  ON [dbo].[TblCSSDeclaration] ([PropertyKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TblCSSMillaPropertiesTblCSSDeclaration]
  ON [dbo].[TblCSSDeclaration] ([SelectorKey], [PropertyKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblCSSDeclaration] WITH NOCHECK
  ADD CONSTRAINT [TblCSSDeclaration_FK00] FOREIGN KEY ([SelectorKey], [PropertyKey]) REFERENCES [dbo].[TblCSSMillaProperties] ([SelectorKey], [PropertyKey]) ON DELETE CASCADE ON UPDATE CASCADE
GO