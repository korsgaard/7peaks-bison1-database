CREATE TABLE [dbo].[TblTextTranslation] (
  [TextSymbol] [nvarchar](100) NOT NULL,
  [LanguageID] [int] NOT NULL CONSTRAINT [DF__TblTextTr__Langu__51BA1E3A] DEFAULT (1),
  [TextTranslation] [ntext] NULL,
  CONSTRAINT [aaaaaTblTextTranslation_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol], [LanguageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TblLanguageTblTextTranslation]
  ON [dbo].[TblTextTranslation] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblTextSymbolTblTextTranslation]
  ON [dbo].[TblTextTranslation] ([TextSymbol])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TextLanguageID]
  ON [dbo].[TblTextTranslation] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblTextTranslation] WITH NOCHECK
  ADD CONSTRAINT [TblTextTranslation_FK00] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[TblLanguage] ([LanguageID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblTextTranslation] WITH NOCHECK
  ADD CONSTRAINT [TblTextTranslation_FK01] FOREIGN KEY ([TextSymbol]) REFERENCES [dbo].[TblTextSymbol] ([TextSymbol]) ON DELETE CASCADE
GO