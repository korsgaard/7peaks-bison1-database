CREATE TABLE [dbo].[hcReportDefinition] (
  [CourseID] [int] IDENTITY,
  [CourseName] [nvarchar](255) NULL,
  [CourseDescription] [ntext] NULL,
  CONSTRAINT [aaaaahcReportDefinition_PK] PRIMARY KEY NONCLUSTERED ([CourseID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [CourseID]
  ON [dbo].[hcReportDefinition] ([CourseID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO