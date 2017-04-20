CREATE TABLE [dbo].[TblTour] (
  [TourID] [int] IDENTITY,
  [TourName] [nvarchar](255) NULL,
  [TourRefreshInterval] [nvarchar](255) NULL,
  [TourCategoryID] [int] NULL CONSTRAINT [DF__TblTour__TourCat__5D2BD0E6] DEFAULT (1),
  CONSTRAINT [aaaaaTblTour_PK] PRIMARY KEY NONCLUSTERED ([TourID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ToruID]
  ON [dbo].[TblTour] ([TourID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TourCategoryID]
  ON [dbo].[TblTour] ([TourCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO