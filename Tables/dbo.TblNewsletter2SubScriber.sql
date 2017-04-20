CREATE TABLE [dbo].[TblNewsletter2SubScriber] (
  [NewsletterID] [int] NOT NULL CONSTRAINT [DF__TblNewsle__Newsl__7EC1CEDB] DEFAULT (0),
  [SubScriberID] [int] NOT NULL CONSTRAINT [DF__TblNewsle__SubSc__7FB5F314] DEFAULT (0),
  CONSTRAINT [aaaaaTblNewsletter2SubScriber_PK] PRIMARY KEY NONCLUSTERED ([NewsletterID], [SubScriberID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NewsletterID]
  ON [dbo].[TblNewsletter2SubScriber] ([NewsletterID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SubScriberID]
  ON [dbo].[TblNewsletter2SubScriber] ([SubScriberID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblNewsletterTblNewsletter2SubScriber]
  ON [dbo].[TblNewsletter2SubScriber] ([NewsletterID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblSubscriberTblNewsletter2SubScriber]
  ON [dbo].[TblNewsletter2SubScriber] ([SubScriberID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblNewsletter2SubScriber] WITH NOCHECK
  ADD CONSTRAINT [TblNewsletter2SubScriber_FK00] FOREIGN KEY ([NewsletterID]) REFERENCES [dbo].[TblNewsletter] ([NewsletterID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblNewsletter2SubScriber] WITH NOCHECK
  ADD CONSTRAINT [TblNewsletter2SubScriber_FK01] FOREIGN KEY ([SubScriberID]) REFERENCES [dbo].[TblSubscriber] ([SubscriberID]) ON DELETE CASCADE
GO