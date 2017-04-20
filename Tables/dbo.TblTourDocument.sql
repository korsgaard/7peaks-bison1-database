CREATE TABLE [dbo].[TblTourDocument] (
  [TourID] [int] NULL CONSTRAINT [DF__TblTourDo__TourI__61F08603] DEFAULT (0),
  [TourDocumentID] [int] NULL CONSTRAINT [DF__TblTourDo__TourD__62E4AA3C] DEFAULT (0),
  [TourDocumentOrder] [int] NULL CONSTRAINT [DF__TblTourDo__TourD__63D8CE75] DEFAULT (0)
)
ON [PRIMARY]
GO

CREATE INDEX [TblTourTblTourDocument]
  ON [dbo].[TblTourDocument] ([TourID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TourID]
  ON [dbo].[TblTourDocument] ([TourID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblTourDocument] WITH NOCHECK
  ADD CONSTRAINT [TblTourDocument_FK00] FOREIGN KEY ([TourID]) REFERENCES [dbo].[TblTour] ([TourID]) ON DELETE CASCADE
GO