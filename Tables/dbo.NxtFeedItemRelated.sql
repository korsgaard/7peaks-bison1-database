CREATE TABLE [dbo].[NxtFeedItemRelated] (
  [FeedItemRelatedID] [int] IDENTITY,
  [FeedItemFK] [int] NOT NULL,
  [hcReportFK] [int] NULL,
  CONSTRAINT [PK_NxtFeedItemRelated] PRIMARY KEY CLUSTERED ([FeedItemRelatedID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtFeedItemRelated]
  ADD CONSTRAINT [FK_NxtFeedItemRelated_hcReport] FOREIGN KEY ([hcReportFK]) REFERENCES [dbo].[hcReport] ([ReportID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[NxtFeedItemRelated]
  ADD CONSTRAINT [FK_NxtFeedItemRelated_NxtFeedItem] FOREIGN KEY ([FeedItemFK]) REFERENCES [dbo].[NxtFeedItem] ([FeedItemID]) ON DELETE CASCADE
GO