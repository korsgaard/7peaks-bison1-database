CREATE TABLE [dbo].[CstPropertyFormula] (
  [FormulaID] [int] IDENTITY,
  [FormulaAllowEdit] [bit] NOT NULL CONSTRAINT [DF__CstProper__Formu__603D47BB] DEFAULT (0),
  [FormulaName] [nvarchar](100) NULL,
  [FormulaDescription] [ntext] NULL,
  CONSTRAINT [aaaaaCstPropertyFormula_PK] PRIMARY KEY NONCLUSTERED ([FormulaID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [PropertyFormulaID]
  ON [dbo].[CstPropertyFormula] ([FormulaID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO