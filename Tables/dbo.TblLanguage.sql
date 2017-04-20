CREATE TABLE [dbo].[TblLanguage] (
  [LanguageID] [int] IDENTITY,
  [LanguageName] [nvarchar](50) NULL,
  [LanguageMenuID] [int] NULL CONSTRAINT [DF__TblLangua__Langu__1BE81D6E] DEFAULT (0),
  [LanguageIsDefault] [bit] NOT NULL CONSTRAINT [DF__TblLangua__Langu__1CDC41A7] DEFAULT (0),
  [LanguageAcceptKey] [nvarchar](50) NULL,
  [LanguageCategoryID] [int] NULL CONSTRAINT [DF__TblLangua__Langu__1DD065E0] DEFAULT (0),
  [LanguageImageID] [int] NULL CONSTRAINT [DF__TblLangua__Langu__1EC48A19] DEFAULT (0),
  [LanguageCode] [int] NULL CONSTRAINT [DF__TblLangua__Langu__1FB8AE52] DEFAULT (0),
  CONSTRAINT [aaaaaTblLanguage_PK] PRIMARY KEY NONCLUSTERED ([LanguageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [LanguageAcceptKey]
  ON [dbo].[TblLanguage] ([LanguageAcceptKey])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LanguageCode]
  ON [dbo].[TblLanguage] ([LanguageCode])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LanguageID]
  ON [dbo].[TblLanguage] ([LanguageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LanguageImageID]
  ON [dbo].[TblLanguage] ([LanguageImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LnguageCategoryID]
  ON [dbo].[TblLanguage] ([LanguageCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO