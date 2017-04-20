CREATE TABLE [dbo].[CstContest2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [ContestFK] [int] NULL,
  CONSTRAINT [aaaaaCstContest2User_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstContestCstContest2User]
  ON [dbo].[CstContest2User] ([ContestFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstContest2User]
  ON [dbo].[CstContest2User] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[CstContest2User] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstContest2User] WITH NOCHECK
  ADD CONSTRAINT [CstContest2User_FK00] FOREIGN KEY ([ContestFK]) REFERENCES [dbo].[CstContest] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstContest2User] WITH NOCHECK
  ADD CONSTRAINT [CstContest2User_FK01] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO