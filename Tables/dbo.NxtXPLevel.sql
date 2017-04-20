CREATE TABLE [dbo].[NxtXPLevel] (
  [ID] [int] IDENTITY,
  [Heading] [nvarchar](50) NULL,
  [XPRequired] [int] NULL,
  [PenaltyPercent] [int] NULL,
  [LevelUpHeading] [nvarchar](max) NULL,
  [LevelDownHeading] [nvarchar](max) NULL,
  [HeadingShort] [nvarchar](10) NULL,
  CONSTRAINT [PK_NxtXPLevel] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO