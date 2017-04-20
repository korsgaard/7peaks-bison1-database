CREATE TABLE [dbo].[FmwModuleTextTranslation] (
  [TextSymbol] [nvarchar](100) NOT NULL,
  [ModuleID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__2FCF1A8A] DEFAULT (0),
  [LanguageID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Langu__30C33EC3] DEFAULT (0),
  [TextTranslation] [ntext] NULL,
  CONSTRAINT [aaaaaFmwModuleTextTranslation_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol], [ModuleID], [LanguageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwModuleTextTranslation] ([ModuleID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModuleTextTranslationTextSymbol]
  ON [dbo].[FmwModuleTextTranslation] ([TextSymbol])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TextLanguageID]
  ON [dbo].[FmwModuleTextTranslation] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO