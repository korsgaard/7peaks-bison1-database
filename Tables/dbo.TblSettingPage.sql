CREATE TABLE [dbo].[TblSettingPage] (
  [SettingPageID] [nvarchar](50) NOT NULL,
  [SettingPageTitle] [nvarchar](50) NULL,
  [SettingPageItemText] [nvarchar](50) NULL,
  [SettingPageDescription] [ntext] NULL,
  [SettingPageDevNotes] [ntext] NULL,
  [SettingPagePrivilegeNeeded] [int] NULL CONSTRAINT [DF__TblSettin__Setti__28B808A7] DEFAULT (0),
  CONSTRAINT [aaaaaTblSettingPage_PK] PRIMARY KEY NONCLUSTERED ([SettingPageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [SettingGroupPageID]
  ON [dbo].[TblSettingPage] ([SettingPageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO