CREATE TABLE [dbo].[TblForm] (
  [FormID] [int] IDENTITY,
  [FormName] [nvarchar](50) NULL,
  [FormType] [nvarchar](50) NULL,
  [FormStyleText] [nvarchar](50) NULL,
  [FormStyleField] [nvarchar](50) NULL,
  [FormActive] [bit] NOT NULL CONSTRAINT [DF__TblForm__FormAct__7E57BA87] DEFAULT (0),
  [FormRedirectDocumentID] [int] NULL CONSTRAINT [DF__TblForm__FormRed__7F4BDEC0] DEFAULT (0),
  [FormSaveReplyToDB] [bit] NOT NULL CONSTRAINT [DF__TblForm__FormSav__004002F9] DEFAULT (0),
  [FormSendReplyAsMail] [bit] NOT NULL CONSTRAINT [DF__TblForm__FormSen__01342732] DEFAULT (0),
  CONSTRAINT [aaaaaTblForm_PK] PRIMARY KEY NONCLUSTERED ([FormID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FormID]
  ON [dbo].[TblForm] ([FormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FormRedirectDocumentID]
  ON [dbo].[TblForm] ([FormRedirectDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO