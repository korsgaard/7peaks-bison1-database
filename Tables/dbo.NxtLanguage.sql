CREATE TABLE [dbo].[NxtLanguage] (
  [LanguageID] [int] IDENTITY,
  [Heading] [nvarchar](50) NOT NULL,
  [IsDefault] [bit] NOT NULL CONSTRAINT [DF_NxtLanguage_IsDefault] DEFAULT (0),
  CONSTRAINT [PK_NxtLanguage] PRIMARY KEY CLUSTERED ([LanguageID])
)
ON [PRIMARY]
GO