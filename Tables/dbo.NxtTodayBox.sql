CREATE TABLE [dbo].[NxtTodayBox] (
  [TodayBoxID] [int] IDENTITY,
  [BoxFunction] [nvarchar](20) NULL,
  [Heading] [nvarchar](50) NULL,
  [Body] [nvarchar](500) NULL,
  [BodyFunction] [nvarchar](20) NULL,
  [Button1Icon] [nvarchar](20) NULL,
  [Button1Text] [nvarchar](20) NULL,
  [Button1Link] [nvarchar](50) NULL,
  [Button2Icon] [nvarchar](20) NULL,
  [Button2Text] [nvarchar](20) NULL,
  [Button2Link] [nvarchar](50) NULL,
  [StartTS] [datetime] NULL,
  [EndTS] [datetime] NULL,
  [Priority] [int] NOT NULL CONSTRAINT [DF_NxtTodayBox_Priority] DEFAULT (1),
  [FunctionStartTS] [datetime] NULL,
  [FunctionEndTS] [datetime] NULL,
  [MobileAppHidden] [bit] NOT NULL CONSTRAINT [DF_NxtTodayBox_HideInApp] DEFAULT (0),
  [TestMode] [bit] NOT NULL CONSTRAINT [DF_NxtTodayBox_TestMode] DEFAULT (0),
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_NxtTodayBox_Enabled] DEFAULT (1),
  CONSTRAINT [PK_NxtTodayBox] PRIMARY KEY CLUSTERED ([TodayBoxID])
)
ON [PRIMARY]
GO