CREATE TABLE [dbo].[TblDocument_Tour] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__49E3F248] DEFAULT (0),
  [TourID] [int] NOT NULL CONSTRAINT [DF__TblDocume__TourI__4AD81681] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Tour_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [TourID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Tour] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [LeftDocumentID]
  ON [dbo].[TblDocument_Tour] ([TourID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Tour]
  ON [dbo].[TblDocument_Tour] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblTourTblDocument_Tour]
  ON [dbo].[TblDocument_Tour] ([TourID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Tour] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Tour_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Tour] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Tour_FK01] FOREIGN KEY ([TourID]) REFERENCES [dbo].[TblTour] ([TourID]) ON DELETE CASCADE
GO