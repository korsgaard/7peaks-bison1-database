CREATE TABLE [dbo].[TblVote] (
  [VoteID] [int] IDENTITY,
  [VoteTitle] [nvarchar](100) NULL,
  [VoteDate] [datetime] NULL,
  [VoteTeaser] [nvarchar](255) NULL,
  [VoteDocumentID] [int] NULL CONSTRAINT [DF__TblVote__VoteDoc__7CA47C3F] DEFAULT (0),
  [VoteExpire] [datetime] NULL,
  [VoteCategoryID] [int] NULL CONSTRAINT [DF__TblVote__VoteCat__7D98A078] DEFAULT (1),
  CONSTRAINT [aaaaaTblVote_PK] PRIMARY KEY NONCLUSTERED ([VoteID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NewsDocumentID]
  ON [dbo].[TblVote] ([VoteDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NewsID]
  ON [dbo].[TblVote] ([VoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VoteCategoryID]
  ON [dbo].[TblVote] ([VoteCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO