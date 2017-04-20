CREATE TABLE [dbo].[NxtUserBadge] (
  [UserBadgeID] [int] IDENTITY,
  [UserFK] [int] NOT NULL,
  [BadgeFK] [int] NOT NULL,
  [CreateDate] [datetime] NOT NULL CONSTRAINT [DF_NxtUserBadge_CreateDate] DEFAULT (getdate()),
  [BadgeLevel] [tinyint] NOT NULL CONSTRAINT [DF_NxtUserBadge_BadgeLevel] DEFAULT (0),
  CONSTRAINT [PK_NxtUserBadge] PRIMARY KEY CLUSTERED ([UserBadgeID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtUserBadge]
  ADD CONSTRAINT [FK_NxtUserBadge_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtUserBadge]
  ADD CONSTRAINT [FK_NxtUserBadge_NxtBadge] FOREIGN KEY ([BadgeFK]) REFERENCES [dbo].[NxtBadge] ([BadgeID]) ON DELETE CASCADE
GO