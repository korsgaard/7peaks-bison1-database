CREATE TABLE [dbo].[TblVoteOption] (
  [VoteOptionVoteID] [int] NOT NULL CONSTRAINT [DF__TblVoteOp__VoteO__4119A21D] DEFAULT (0),
  [VoteOptionLabel] [nvarchar](50) NOT NULL,
  [VoteOptionVoteCount] [int] NULL CONSTRAINT [DF__TblVoteOp__VoteO__420DC656] DEFAULT (0),
  CONSTRAINT [aaaaaTblVoteOption_PK] PRIMARY KEY NONCLUSTERED ([VoteOptionVoteID], [VoteOptionLabel]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TblVoteTblVoteOption]
  ON [dbo].[TblVoteOption] ([VoteOptionVoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VoteID]
  ON [dbo].[TblVoteOption] ([VoteOptionVoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblVoteOption] WITH NOCHECK
  ADD CONSTRAINT [TblVoteOption_FK00] FOREIGN KEY ([VoteOptionVoteID]) REFERENCES [dbo].[TblVote] ([VoteID]) ON DELETE CASCADE
GO