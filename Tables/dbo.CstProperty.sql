CREATE TABLE [dbo].[CstProperty] (
  [PropertyID] [int] IDENTITY,
  [Number] [nvarchar](10) NULL,
  [Name] [nvarchar](100) NULL,
  [Description] [ntext] NULL,
  [Unit] [nvarchar](50) NULL,
  [NoPoints] [bit] NOT NULL CONSTRAINT [DF__CstProper__NoPoi__6BE40491] DEFAULT (0),
  [Checkbox] [bit] NOT NULL CONSTRAINT [DF__CstProper__Check__6CD828CA] DEFAULT (0),
  [FormulaFK] [int] NULL CONSTRAINT [DF__CstProper__Formu__6DCC4D03] DEFAULT (0),
  [InputOnly] [bit] NOT NULL CONSTRAINT [DF__CstProper__Input__6EC0713C] DEFAULT (0),
  [NoDelete] [bit] NOT NULL CONSTRAINT [DF__CstProper__NoDel__6FB49575] DEFAULT (0),
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstProper__Creat__70A8B9AE] DEFAULT (getdate()),
  [ModifyTS] [datetime] NULL CONSTRAINT [DF__CstProper__Modif__719CDDE7] DEFAULT (getdate()),
  [Tooltip] [nvarchar](1000) NULL,
  CONSTRAINT [aaaaaCstProperty_PK] PRIMARY KEY NONCLUSTERED ([PropertyID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [PropertyID]
  ON [dbo].[CstProperty] ([PropertyID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstProperty]
  ADD CONSTRAINT [FK_CstProperty_CstPropertyFormula] FOREIGN KEY ([FormulaFK]) REFERENCES [dbo].[CstPropertyFormula] ([FormulaID]) ON UPDATE CASCADE
GO