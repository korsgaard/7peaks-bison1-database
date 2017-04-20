CREATE TABLE [dbo].[FmwModuleInstanceTextTranslation] (
  [TextSymbol] [nvarchar](100) NOT NULL,
  [ModuleInstanceID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__36B12243] DEFAULT (0),
  [LanguageID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Langu__37A5467C] DEFAULT (0),
  [TextTranslation] [ntext] NULL,
  CONSTRAINT [aaaaaFmwModuleInstanceTextTranslation_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol], [ModuleInstanceID], [LanguageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwModuleInstanceTextTranslation] ([ModuleInstanceID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLanguageModuleInstanceTextTranslation1]
  ON [dbo].[FmwModuleInstanceTextTranslation] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TextLanguageID]
  ON [dbo].[FmwModuleInstanceTextTranslation] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FmwModuleInstanceTextTranslation] WITH NOCHECK
  ADD CONSTRAINT [FmwModuleInstanceTextTran_FK00] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[TblLanguage] ([LanguageID]) ON DELETE CASCADE ON UPDATE CASCADE
GO