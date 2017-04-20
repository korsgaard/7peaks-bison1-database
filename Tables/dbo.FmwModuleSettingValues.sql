CREATE TABLE [dbo].[FmwModuleSettingValues] (
  [ModuleID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__412EB0B6] DEFAULT (0),
  [Key] [nvarchar](50) NOT NULL CONSTRAINT [DF__FmwModuleSe__Key__4222D4EF] DEFAULT (''),
  [Value] [ntext] NULL,
  CONSTRAINT [aaaaaFmwModuleSettingValues_PK] PRIMARY KEY NONCLUSTERED ([ModuleID], [Key]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [Key]
  ON [dbo].[FmwModuleSettingValues] ([Key])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModuleInstanceID]
  ON [dbo].[FmwModuleSettingValues] ([ModuleID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO