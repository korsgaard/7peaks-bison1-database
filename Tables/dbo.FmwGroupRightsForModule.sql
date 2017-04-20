CREATE TABLE [dbo].[FmwGroupRightsForModule] (
  [ID] [int] IDENTITY,
  [GroupFK] [int] NULL CONSTRAINT [DF__FmwGroupR__Group__0CBAE877] DEFAULT (0),
  [ModuleFK] [int] NULL CONSTRAINT [DF__FmwGroupR__Modul__0DAF0CB0] DEFAULT (0),
  [ReadLevelRequired] [int] NULL CONSTRAINT [DF__FmwGroupR__ReadL__0EA330E9] DEFAULT (0),
  [ModeratorLevelRequired] [int] NULL CONSTRAINT [DF__FmwGroupR__Moder__0F975522] DEFAULT (0),
  [AdminLevelRequired] [int] NULL CONSTRAINT [DF__FmwGroupR__Admin__108B795B] DEFAULT (0),
  CONSTRAINT [aaaaaFmwGroupRightsForModule_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwGroupRightsForModule] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModuleID1]
  ON [dbo].[FmwGroupRightsForModule] ([GroupFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO