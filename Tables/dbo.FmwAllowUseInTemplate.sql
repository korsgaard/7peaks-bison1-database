CREATE TABLE [dbo].[FmwAllowUseInTemplate] (
  [ModuleID] [int] NOT NULL CONSTRAINT [DF__FmwAllowU__Modul__66603565] DEFAULT (0),
  [TemplateID] [int] NOT NULL CONSTRAINT [DF__FmwAllowU__Templ__6754599E] DEFAULT (0),
  [AllowUseInTemplate] [bit] NOT NULL CONSTRAINT [DF__FmwAllowU__Allow__68487DD7] DEFAULT (0),
  CONSTRAINT [aaaaaFmwAllowUseInTemplate_PK] PRIMARY KEY NONCLUSTERED ([ModuleID], [TemplateID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwAllowUseInTemplate] ([ModuleID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TemplateID]
  ON [dbo].[FmwAllowUseInTemplate] ([TemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO