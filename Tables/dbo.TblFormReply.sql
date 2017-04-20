CREATE TABLE [dbo].[TblFormReply] (
  [FormReplyID] [int] IDENTITY,
  [FormReplyFormID] [int] NULL CONSTRAINT [DF__TblFormRe__FormR__0CA5D9DE] DEFAULT (0),
  [FormReplyTime] [datetime] NULL,
  [FormReplyIP] [nvarchar](50) NULL,
  [FormReplyProcessed] [bit] NOT NULL CONSTRAINT [DF__TblFormRe__FormR__0D99FE17] DEFAULT (0),
  CONSTRAINT [aaaaaTblFormReply_PK] PRIMARY KEY NONCLUSTERED ([FormReplyID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ReplyFormID]
  ON [dbo].[TblFormReply] ([FormReplyFormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ReplyID]
  ON [dbo].[TblFormReply] ([FormReplyID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblFormTblFormReply]
  ON [dbo].[TblFormReply] ([FormReplyFormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblFormReply] WITH NOCHECK
  ADD CONSTRAINT [TblFormReply_FK00] FOREIGN KEY ([FormReplyFormID]) REFERENCES [dbo].[TblForm] ([FormID]) ON DELETE CASCADE
GO