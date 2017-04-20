CREATE TABLE [dbo].[TblSubscriber] (
  [SubscriberID] [int] IDENTITY,
  [SubscriberName] [nvarchar](200) NULL,
  [SubscriberEmail] [nvarchar](200) NULL,
  [SubscriberDate] [datetime] NULL,
  CONSTRAINT [aaaaaTblSubscriber_PK] PRIMARY KEY NONCLUSTERED ([SubscriberID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SubscriberID]
  ON [dbo].[TblSubscriber] ([SubscriberID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO