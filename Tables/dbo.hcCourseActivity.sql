CREATE TABLE [dbo].[hcCourseActivity] (
  [CourseActivityID] [int] IDENTITY,
  [CourseActivityActivityID] [int] NULL CONSTRAINT [DF__hcCourseA__Cours__75A278F5] DEFAULT (0),
  [CourseActivityCourseID] [int] NULL CONSTRAINT [DF__hcCourseA__Cours__76969D2E] DEFAULT (0),
  [CourseActivityPointsPrUnit] [int] NULL CONSTRAINT [DF__hcCourseA__Cours__778AC167] DEFAULT (0),
  CONSTRAINT [aaaaahcCourseActivity_PK] PRIMARY KEY NONCLUSTERED ([CourseActivityID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CourseActivityActivityID]
  ON [dbo].[hcCourseActivity] ([CourseActivityActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CourseActivityCourseID]
  ON [dbo].[hcCourseActivity] ([CourseActivityCourseID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CourseActivityID]
  ON [dbo].[hcCourseActivity] ([CourseActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [hcActivityhcCourseActivity]
  ON [dbo].[hcCourseActivity] ([CourseActivityActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [hcCoursehcCourseActivity]
  ON [dbo].[hcCourseActivity] ([CourseActivityCourseID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[hcCourseActivity] WITH NOCHECK
  ADD CONSTRAINT [hcCourseActivity_FK00] FOREIGN KEY ([CourseActivityActivityID]) REFERENCES [dbo].[hcActivity] ([ActivityID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[hcCourseActivity] WITH NOCHECK
  ADD CONSTRAINT [hcCourseActivity_FK01] FOREIGN KEY ([CourseActivityCourseID]) REFERENCES [dbo].[hcReportDefinition] ([CourseID]) ON DELETE CASCADE
GO