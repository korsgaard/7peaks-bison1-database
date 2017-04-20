CREATE TABLE [dbo].[NxtFeedItemType] (
  [FeedItemTypeID] [int] IDENTITY,
  [Heading] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_NxtFeedItemType] PRIMARY KEY CLUSTERED ([FeedItemTypeID])
)
ON [PRIMARY]
GO