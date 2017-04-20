CREATE TABLE [dbo].[NxtConfig] (
  [Symbol] [nvarchar](50) NOT NULL,
  [Setting] [nvarchar](max) NULL,
  [Datatype] [nvarchar](10) NULL,
  CONSTRAINT [PK_NxtConfig] PRIMARY KEY CLUSTERED ([Symbol])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO