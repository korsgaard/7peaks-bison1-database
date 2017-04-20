CREATE TABLE [dbo].[NxtPageTranslation] (
  [PageFK] [int] NOT NULL,
  [LanguageFK] [int] NOT NULL,
  [Title] [nvarchar](500) NOT NULL,
  [Body] [ntext] NOT NULL,
  CONSTRAINT [PK_NxtPageTranslation] PRIMARY KEY CLUSTERED ([PageFK], [LanguageFK])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtPageTranslation]
  ADD CONSTRAINT [FK_NxtPageTranslation_NxtLanguage] FOREIGN KEY ([LanguageFK]) REFERENCES [dbo].[NxtLanguage] ([LanguageID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtPageTranslation]
  ADD CONSTRAINT [FK_NxtPageTranslation_NxtPage] FOREIGN KEY ([PageFK]) REFERENCES [dbo].[NxtPage] ([PageID]) ON DELETE CASCADE
GO