CREATE TABLE [dbo].[TblPlugin] (
  [PlugInID] [int] IDENTITY,
  [PlugInName] [nvarchar](50) NOT NULL CONSTRAINT [DF__TblPlugin__PlugI__047AA831] DEFAULT (''),
  [PlugInMenuTitle] [nvarchar](50) NOT NULL CONSTRAINT [DF__TblPlugin__PlugI__056ECC6A] DEFAULT (''),
  [PlugInDescription] [ntext] NULL CONSTRAINT [DF__TblPlugin__PlugI__0662F0A3] DEFAULT (''),
  [PlugInDevNotes] [ntext] NULL CONSTRAINT [DF__TblPlugin__PlugI__075714DC] DEFAULT (''),
  [PlugInActive] [bit] NOT NULL CONSTRAINT [DF__TblPlugin__PlugI__084B3915] DEFAULT (0),
  [PlugInVersion] [int] NOT NULL CONSTRAINT [DF__TblPlugin__PlugI__093F5D4E] DEFAULT (0),
  [PlugInSetting] [nvarchar](50) NOT NULL,
  [PlugInIsVisibleBackEnd] [bit] NOT NULL CONSTRAINT [DF__TblPlugin__PlugI__0A338187] DEFAULT (0),
  CONSTRAINT [aaaaaTblPlugin_PK] PRIMARY KEY NONCLUSTERED ([PlugInID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [pluginID]
  ON [dbo].[TblPlugin] ([PlugInID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO