CREATE TABLE [dbo].[FmwModuleInstanceTextSymbol] (
  [TextSymbol] [nvarchar](50) NOT NULL,
  [ModuleInstanceID] [int] NOT NULL CONSTRAINT [DF__FmwModule__Modul__30F848ED] DEFAULT (0),
  [TextSymbolLabel] [nvarchar](50) NULL,
  [TextSymbolOrder] [int] NULL CONSTRAINT [DF__FmwModule__TextS__31EC6D26] DEFAULT (0),
  CONSTRAINT [aaaaaFmwModuleInstanceTextSymbol_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol], [ModuleInstanceID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModuleInstanceID]
  ON [dbo].[FmwModuleInstanceTextSymbol] ([ModuleInstanceID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO