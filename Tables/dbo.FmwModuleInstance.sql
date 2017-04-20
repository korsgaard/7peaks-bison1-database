CREATE TABLE [dbo].[FmwModuleInstance] (
  [ID] [int] IDENTITY,
  [ModuleID] [int] NULL CONSTRAINT [DF__FmwModule__Modul__22AA2996] DEFAULT (0),
  [TemplateID] [int] NULL CONSTRAINT [DF__FmwModule__Templ__239E4DCF] DEFAULT (0),
  [PageID] [int] NULL CONSTRAINT [DF__FmwModule__PageI__24927208] DEFAULT (0),
  [ClassPrefix] [nvarchar](50) NULL,
  [WindowID] [nvarchar](50) NULL,
  [WindowPriority] [int] NULL CONSTRAINT [DF__FmwModule__Windo__25869641] DEFAULT (0),
  [CascadeContentUse] [bit] NOT NULL CONSTRAINT [DF__FmwModule__Casca__267ABA7A] DEFAULT (0),
  CONSTRAINT [aaaaaFmwModuleInstance_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[FmwModuleInstance] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwModuleInstance] ([ModuleID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PageID]
  ON [dbo].[FmwModuleInstance] ([PageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TemplateID]
  ON [dbo].[FmwModuleInstance] ([TemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [WindowID]
  ON [dbo].[FmwModuleInstance] ([WindowID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO