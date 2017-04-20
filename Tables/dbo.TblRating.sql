CREATE TABLE [dbo].[TblRating] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblRating__Docum__14B10FFA] DEFAULT (0),
  [Rating1VoteCount] [int] NULL CONSTRAINT [DF__TblRating__Ratin__15A53433] DEFAULT (0),
  [Rating2VoteCount] [int] NULL CONSTRAINT [DF__TblRating__Ratin__1699586C] DEFAULT (0),
  [Rating3VoteCount] [int] NULL CONSTRAINT [DF__TblRating__Ratin__178D7CA5] DEFAULT (0),
  [Rating4VoteCount] [int] NULL CONSTRAINT [DF__TblRating__Ratin__1881A0DE] DEFAULT (0),
  [Rating5VoteCount] [int] NULL CONSTRAINT [DF__TblRating__Ratin__1975C517] DEFAULT (0),
  CONSTRAINT [aaaaaTblRating_PK] PRIMARY KEY NONCLUSTERED ([DocumentID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblRating] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO