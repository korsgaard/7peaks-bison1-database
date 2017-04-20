CREATE TABLE [dbo].[TblNewsletter] (
  [NewsletterID] [int] IDENTITY,
  [NewsletterTitle] [nvarchar](150) NULL,
  [NewsletterSent] [bit] NOT NULL CONSTRAINT [DF__TblNewsle__Newsl__7814D14C] DEFAULT (0),
  [NewsletterText] [ntext] NULL,
  [NewsletterDocumentID] [int] NULL CONSTRAINT [DF__TblNewsle__Newsl__7908F585] DEFAULT (0),
  [NewsletterSentDate] [datetime] NULL,
  [NewsletterSentAmount] [int] NULL CONSTRAINT [DF__TblNewsle__Newsl__79FD19BE] DEFAULT (0),
  [NewsletterSentBy] [int] NULL,
  CONSTRAINT [aaaaaTblNewsletter_PK] PRIMARY KEY NONCLUSTERED ([NewsletterID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NewsletterDocumentID]
  ON [dbo].[TblNewsletter] ([NewsletterDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NewsletterID]
  ON [dbo].[TblNewsletter] ([NewsletterID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO