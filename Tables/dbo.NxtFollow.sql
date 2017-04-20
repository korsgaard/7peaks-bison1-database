CREATE TABLE [dbo].[NxtFollow] (
  [NxtFollowID] [int] IDENTITY,
  [NxtUserFK] [int] NOT NULL,
  [NxtFollowUserFK] [int] NOT NULL,
  [Facebook] [bit] NOT NULL CONSTRAINT [DF_NxtFollow_Facebook] DEFAULT (0),
  CONSTRAINT [PK_NxtFollow] PRIMARY KEY CLUSTERED ([NxtFollowID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtFollow]
  ADD CONSTRAINT [FK_NxtFollow_FmwFollowUser] FOREIGN KEY ([NxtFollowUserFK]) REFERENCES [dbo].[FmwUser] ([UserID])
GO

ALTER TABLE [dbo].[NxtFollow]
  ADD CONSTRAINT [FK_NxtFollow_FmwUser] FOREIGN KEY ([NxtUserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO