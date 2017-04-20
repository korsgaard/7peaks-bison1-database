CREATE TABLE [dbo].[FmwModuleSettings] (
  [Key] [nvarchar](50) NOT NULL CONSTRAINT [DF__FmwModuleSe__Key__3C69FB99] DEFAULT (''),
  [Label] [nvarchar](255) NULL,
  [Type] [nvarchar](100) NULL,
  [Choices] [nvarchar](250) NULL,
  CONSTRAINT [aaaaaFmwModuleSettings_PK] PRIMARY KEY NONCLUSTERED ([Key]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SettingName]
  ON [dbo].[FmwModuleSettings] ([Key])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO