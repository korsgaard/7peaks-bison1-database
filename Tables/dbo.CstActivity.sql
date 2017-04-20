CREATE TABLE [dbo].[CstActivity] (
  [ID] [int] IDENTITY,
  [Heading] [nvarchar](100) NULL,
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstActivi__Creat__282DF8C2] DEFAULT (getdate()),
  [GroupFK] [int] NULL,
  [UserFK] [int] NULL,
  [Responsible] [nvarchar](100) NULL,
  [Location] [nvarchar](100) NULL,
  [StartDate] [datetime] NULL,
  [EndDate] [datetime] NULL,
  [SignupRequired] [bit] NOT NULL CONSTRAINT [DF__CstActivi__Signu__29221CFB] DEFAULT (0),
  [SignupDeadline] [datetime] NULL,
  [ShowUsers] [bit] NOT NULL CONSTRAINT [DF__CstActivi__ShowU__2A164134] DEFAULT (0),
  [Description] [ntext] NULL,
  [HitCount] [int] NULL CONSTRAINT [DF__CstActivi__HitCo__2B0A656D] DEFAULT (0),
  CONSTRAINT [aaaaaCstActivity_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityGroupID]
  ON [dbo].[CstActivity] ([GroupFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ActivityUserID]
  ON [dbo].[CstActivity] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO