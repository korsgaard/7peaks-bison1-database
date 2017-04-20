CREATE TABLE [dbo].[FmwModuleTextSymbol] (
  [TextSymbol] [nvarchar](50) NOT NULL,
  [ModuleID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__46E78A0C] DEFAULT (0),
  [TextSymbolLabel] [nvarchar](50) NULL,
  [TextSymbolOrder] [int] NULL CONSTRAINT [DF__FmwModule__TextS__47DBAE45] DEFAULT (0),
  CONSTRAINT [aaaaaFmwModuleTextSymbol_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol], [ModuleID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModuleID]
  ON [dbo].[FmwModuleTextSymbol] ([ModuleID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModuleTextSymbolTextSymbol]
  ON [dbo].[FmwModuleTextSymbol] ([TextSymbol])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO