CREATE TABLE [dbo].[NxtFeedItem] (
  [FeedItemID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [FeedItemTypeFK] [int] NOT NULL,
  [PostHeading] [nvarchar](max) NULL,
  [PostContent] [nvarchar](max) NULL,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtFeedItem_CreateTS] DEFAULT (getdate()),
  [FromUserFK] [int] NULL,
  [StickyUntilTS] [datetime] NULL,
  CONSTRAINT [PK_NxtFeedItem] PRIMARY KEY CLUSTERED ([FeedItemID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtFeedItem]
  ADD CONSTRAINT [FK_NxtFeedItem_NxtFeedItemType] FOREIGN KEY ([FeedItemTypeFK]) REFERENCES [dbo].[NxtFeedItemType] ([FeedItemTypeID])
GO