CREATE TABLE [dbo].[hcActivity] (
  [ActivityID] [int] IDENTITY,
  [ActivityName] [nvarchar](50) NULL,
  [ActivityDescription] [ntext] NULL,
  [ActivityCheckbox] [bit] NOT NULL CONSTRAINT [DF__hcActivit__Activ__6D0D32F4] DEFAULT (0),
  [ActivityMinValue] [int] NULL CONSTRAINT [DF__hcActivit__Activ__6E01572D] DEFAULT (0),
  [ActivityMaxValue] [int] NULL CONSTRAINT [DF__hcActivit__Activ__6EF57B66] DEFAULT (0),
  [ActivityMaxAllowed] [int] NULL CONSTRAINT [DF__hcActivit__Activ__6FE99F9F] DEFAULT (0),
  [ActivitySortDesc] [bit] NOT NULL CONSTRAINT [DF__hcActivit__Activ__70DDC3D8] DEFAULT (1),
  [ActivityValues] [nvarchar](250) NULL,
  [ActivityUnit] [nvarchar](10) NULL,
  CONSTRAINT [aaaaahcActivity_PK] PRIMARY KEY NONCLUSTERED ([ActivityID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityID]
  ON [dbo].[hcActivity] ([ActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO