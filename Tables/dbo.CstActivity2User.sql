CREATE TABLE [dbo].[CstActivity2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [ActivityFK] [int] NULL,
  CONSTRAINT [aaaaaCstActivity2User_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstActivityCstActivity2User]
  ON [dbo].[CstActivity2User] ([ActivityFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstActivity2User]
  ON [dbo].[CstActivity2User] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[CstActivity2User] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstActivity2User] WITH NOCHECK
  ADD CONSTRAINT [CstActivity2User_FK00] FOREIGN KEY ([ActivityFK]) REFERENCES [dbo].[CstActivity] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstActivity2User] WITH NOCHECK
  ADD CONSTRAINT [CstActivity2User_FK01] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO