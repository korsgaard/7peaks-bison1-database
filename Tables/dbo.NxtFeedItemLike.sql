CREATE TABLE [dbo].[NxtFeedItemLike] (
  [FeedItemLikeID] [int] IDENTITY,
  [FeedItemFK] [int] NOT NULL,
  [UserFK] [int] NOT NULL,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtFeedItemLike_CreateTS] DEFAULT (getdate()),
  CONSTRAINT [PK_NxtFeedItemLike] PRIMARY KEY CLUSTERED ([FeedItemLikeID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtFeedItemLike]
  ADD CONSTRAINT [FK_NxtFeedItemLike_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtFeedItemLike]
  ADD CONSTRAINT [FK_NxtFeedItemLike_NxtFeedItem] FOREIGN KEY ([FeedItemFK]) REFERENCES [dbo].[NxtFeedItem] ([FeedItemID]) ON DELETE CASCADE
GO