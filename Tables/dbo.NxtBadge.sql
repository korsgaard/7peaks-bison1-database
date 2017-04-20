CREATE TABLE [dbo].[NxtBadge] (
  [BadgeID] [int] IDENTITY,
  [BadgeKey] [nvarchar](10) NOT NULL,
  [Name] [nvarchar](200) NOT NULL,
  [Targets] [nvarchar](20) NULL,
  [Levels] [nvarchar](max) NULL,
  [LevelDescriptions] [nvarchar](max) NULL,
  [LevelMotivations] [nvarchar](max) NULL,
  [StartDate] [datetime] NULL,
  [EndDate] [datetime] NULL,
  CONSTRAINT [PK_NxtBadge] PRIMARY KEY CLUSTERED ([BadgeID]),
  CONSTRAINT [IX_NxtBadge] UNIQUE ([BadgeKey])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO