CREATE TABLE [dbo].[TblFormField] (
  [FormFieldFormID] [int] NOT NULL CONSTRAINT [DF__TblFormFi__FormF__05F8DC4F] DEFAULT (0),
  [FormFieldFieldID] [int] NOT NULL CONSTRAINT [DF__TblFormFi__FormF__06ED0088] DEFAULT (0),
  [FormFieldLabel] [nvarchar](255) NULL,
  [FormFieldOrder] [int] NOT NULL CONSTRAINT [DF__TblFormFi__FormF__07E124C1] DEFAULT (0),
  CONSTRAINT [aaaaaTblFormField_PK] PRIMARY KEY NONCLUSTERED ([FormFieldFormID], [FormFieldFieldID], [FormFieldOrder]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FormFieldID]
  ON [dbo].[TblFormField] ([FormFieldFieldID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FormID]
  ON [dbo].[TblFormField] ([FormFieldFormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblFieldTblFormField]
  ON [dbo].[TblFormField] ([FormFieldFieldID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblFormTblFormField]
  ON [dbo].[TblFormField] ([FormFieldFormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblFormField] WITH NOCHECK
  ADD CONSTRAINT [TblFormField_FK00] FOREIGN KEY ([FormFieldFieldID]) REFERENCES [dbo].[TblField] ([FieldID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblFormField] WITH NOCHECK
  ADD CONSTRAINT [TblFormField_FK01] FOREIGN KEY ([FormFieldFormID]) REFERENCES [dbo].[TblForm] ([FormID]) ON DELETE CASCADE
GO