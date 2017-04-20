CREATE TABLE [dbo].[NxtFeedItemComment] (
  [FeedItemCommentID] [int] IDENTITY,
  [FeedItemFK] [int] NOT NULL,
  [UserFK] [int] NOT NULL,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtFeedItemComment_CreateTS] DEFAULT (getdate()),
  [Comment] [nvarchar](max) NOT NULL,
  CONSTRAINT [PK_NxtFeedItemComment] PRIMARY KEY CLUSTERED ([FeedItemCommentID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtFeedItemComment]
  ADD CONSTRAINT [FK_NxtFeedItemComment_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtFeedItemComment]
  ADD CONSTRAINT [FK_NxtFeedItemComment_NxtFeedItem] FOREIGN KEY ([FeedItemFK]) REFERENCES [dbo].[NxtFeedItem] ([FeedItemID]) ON DELETE CASCADE
GO