CREATE TABLE [dbo].[TblTextSymbol] (
  [TextSymbol] [nvarchar](100) NOT NULL,
  [TextSymbolLabel] [nvarchar](50) NULL,
  [TextSymbolSection] [nvarchar](50) NULL,
  [TextSymbolOrder] [int] NULL CONSTRAINT [DF__TblTextSy__TextS__4C0144E4] DEFAULT (0),
  [TextSymbolType] [nvarchar](50) NULL CONSTRAINT [DF__TblTextSy__TextS__4CF5691D] DEFAULT ('longtext'),
  CONSTRAINT [aaaaaTblTextSymbol_PK] PRIMARY KEY NONCLUSTERED ([TextSymbol]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TblTextPageSectionTblTextSymbol]
  ON [dbo].[TblTextSymbol] ([TextSymbolSection])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TextSymbolID]
  ON [dbo].[TblTextSymbol] ([TextSymbol])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblTextSymbol] WITH NOCHECK
  ADD CONSTRAINT [TblTextSymbol_FK00] FOREIGN KEY ([TextSymbolSection]) REFERENCES [dbo].[TblTextPageSection] ([SectionID]) ON UPDATE CASCADE
GO