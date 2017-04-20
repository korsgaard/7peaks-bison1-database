CREATE TABLE [dbo].[TblDocument_Vote] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__46D27B73] DEFAULT (0),
  [VoteID] [int] NOT NULL CONSTRAINT [DF__TblDocume__VoteI__47C69FAC] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Vote_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [VoteID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Vote] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FormID]
  ON [dbo].[TblDocument_Vote] ([VoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Voting]
  ON [dbo].[TblDocument_Vote] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblVoteTblDocument_Voting]
  ON [dbo].[TblDocument_Vote] ([VoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Vote] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Vote_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Vote] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Vote_FK01] FOREIGN KEY ([VoteID]) REFERENCES [dbo].[TblVote] ([VoteID]) ON DELETE CASCADE
GO