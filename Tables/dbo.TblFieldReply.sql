CREATE TABLE [dbo].[TblFieldReply] (
  [FieldReplyFormReplyID] [int] NOT NULL CONSTRAINT [DF__TblFieldR__Field__74CE504D] DEFAULT (0),
  [FieldReplyOrder] [int] NOT NULL CONSTRAINT [DF__TblFieldR__Field__75C27486] DEFAULT (0),
  [FieldReplyValue] [ntext] NULL,
  CONSTRAINT [aaaaaTblFieldReply_PK] PRIMARY KEY NONCLUSTERED ([FieldReplyFormReplyID], [FieldReplyOrder]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FieldReplyFormReplyID]
  ON [dbo].[TblFieldReply] ([FieldReplyFormReplyID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblFormReplyTblFieldReply]
  ON [dbo].[TblFieldReply] ([FieldReplyFormReplyID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblFieldReply] WITH NOCHECK
  ADD CONSTRAINT [TblFieldReply_FK00] FOREIGN KEY ([FieldReplyFormReplyID]) REFERENCES [dbo].[TblFormReply] ([FormReplyID]) ON DELETE CASCADE
GO