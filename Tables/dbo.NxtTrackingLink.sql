CREATE TABLE [dbo].[NxtTrackingLink] (
  [TrackingLinkID] [int] IDENTITY,
  [Title] [nvarchar](100) NOT NULL,
  [Grouping] [nvarchar](50) NOT NULL,
  [ogDescription] [nvarchar](500) NULL,
  [ogImage] [nvarchar](100) NULL,
  [ogTitle] [nvarchar](250) NULL,
  CONSTRAINT [PK_NxtTrackingLink] PRIMARY KEY CLUSTERED ([TrackingLinkID])
)
ON [PRIMARY]
GO