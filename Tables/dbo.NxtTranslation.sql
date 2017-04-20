CREATE TABLE [dbo].[NxtTranslation] (
  [Symbol] [nvarchar](50) NOT NULL,
  [LangDA] [nvarchar](max) NULL,
  [LangEN] [nvarchar](max) NULL,
  CONSTRAINT [PK_NxtTranslation] PRIMARY KEY CLUSTERED ([Symbol])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO