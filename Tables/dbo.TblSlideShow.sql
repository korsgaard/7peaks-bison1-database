CREATE TABLE [dbo].[TblSlideShow] (
  [SlideShowID] [int] IDENTITY,
  [SlideShowName] [nvarchar](255) NULL,
  [SlideShowRefreshInterval] [nvarchar](50) NULL,
  [SlideShowCategoryID] [int] NULL CONSTRAINT [DF__TblSlideS__Slide__2D7CBDC4] DEFAULT (1),
  CONSTRAINT [aaaaaTblSlideShow_PK] PRIMARY KEY NONCLUSTERED ([SlideShowID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SlideShowCategoryID]
  ON [dbo].[TblSlideShow] ([SlideShowCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ToruID]
  ON [dbo].[TblSlideShow] ([SlideShowID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO