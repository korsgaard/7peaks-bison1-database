CREATE TABLE [dbo].[TblTextPage] (
  [SettingPageID] [nvarchar](50) NOT NULL,
  [SettingPageTitle] [nvarchar](50) NULL,
  [SettingPageItemText] [nvarchar](50) NULL,
  [SettingPageDescription] [ntext] NULL,
  [SettingPageDevNotes] [ntext] NULL,
  [SettingPagePrivilegeNeeded] [int] NULL CONSTRAINT [DF__TblTextPa__Setti__436BFEE3] DEFAULT (0),
  CONSTRAINT [aaaaaTblTextPage_PK] PRIMARY KEY NONCLUSTERED ([SettingPageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [SettingGroupPageID]
  ON [dbo].[TblTextPage] ([SettingPageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO