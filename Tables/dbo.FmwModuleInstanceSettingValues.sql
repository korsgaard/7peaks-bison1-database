CREATE TABLE [dbo].[FmwModuleInstanceSettingValues] (
  [ModuleInstanceID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__2B3F6F97] DEFAULT (0),
  [Key] [nvarchar](50) NOT NULL CONSTRAINT [DF__FmwModuleIn__Key__2C3393D0] DEFAULT (''),
  [Value] [nvarchar](100) NULL,
  CONSTRAINT [aaaaaFmwModuleInstanceSettingValues_PK] PRIMARY KEY NONCLUSTERED ([Key], [ModuleInstanceID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwModuleInstanceSettingValues] ([ModuleInstanceID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SettingName]
  ON [dbo].[FmwModuleInstanceSettingValues] ([Key])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO