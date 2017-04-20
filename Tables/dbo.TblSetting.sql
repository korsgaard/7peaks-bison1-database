CREATE TABLE [dbo].[TblSetting] (
  [SettingSectionID] [nvarchar](50) NULL,
  [SettingName] [nvarchar](50) NOT NULL CONSTRAINT [DF__TblSettin__Setti__22FF2F51] DEFAULT (''),
  [SettingValue] [nvarchar](100) NULL,
  [SettingLabel] [nvarchar](50) NULL,
  [SettingDevNotes] [ntext] NULL CONSTRAINT [DF__TblSettin__Setti__23F3538A] DEFAULT (''),
  [PropertyType] [nvarchar](100) NULL,
  [PropertyChoices] [nvarchar](250) NULL,
  [PropertyAdvanced] [nvarchar](1) NULL,
  CONSTRAINT [aaaaaTblSetting_PK] PRIMARY KEY NONCLUSTERED ([SettingName]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SettingName]
  ON [dbo].[TblSetting] ([SettingName])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblSettingSectionTblSetting]
  ON [dbo].[TblSetting] ([SettingSectionID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblSetting] WITH NOCHECK
  ADD CONSTRAINT [TblSetting_FK00] FOREIGN KEY ([SettingSectionID]) REFERENCES [dbo].[TblSection] ([SectionID])
GO