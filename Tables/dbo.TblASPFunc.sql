CREATE TABLE [dbo].[TblASPFunc] (
  [ASPFuncID] [int] IDENTITY,
  [ASPFuncCategoryID] [int] NULL,
  [ASPFuncName] [nvarchar](100) NULL,
  [ASPFuncLocation] [nvarchar](255) NULL,
  [ASPFuncDescription] [ntext] NULL,
  [ASPFuncSize] [int] NULL,
  [ASPFuncFileName] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaTblASPFunc_PK] PRIMARY KEY NONCLUSTERED ([ASPFuncID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblASPFunc]
  ON [dbo].[TblASPFunc] ([ASPFuncCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblASPFunc] WITH NOCHECK
  ADD CONSTRAINT [TblASPFunc_FK00] FOREIGN KEY ([ASPFuncCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO