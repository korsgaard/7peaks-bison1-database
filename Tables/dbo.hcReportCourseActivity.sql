CREATE TABLE [dbo].[hcReportCourseActivity] (
  [RepActID] [int] IDENTITY,
  [RepActRepID] [int] NULL CONSTRAINT [DF__hcReportC__RepAc__02084FDA] DEFAULT (0),
  [RepActCourseActivityID] [int] NULL CONSTRAINT [DF__hcReportC__RepAc__02FC7413] DEFAULT (0),
  [RepActAmount] [int] NULL CONSTRAINT [DF__hcReportC__RepAc__03F0984C] DEFAULT (0),
  [RepActPoints] [int] NULL CONSTRAINT [DF__hcReportC__RepAc__04E4BC85] DEFAULT (0),
  CONSTRAINT [aaaaahcReportCourseActivity_PK] PRIMARY KEY NONCLUSTERED ([RepActID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [hcCourseActivityhcReportCourseActivity]
  ON [dbo].[hcReportCourseActivity] ([RepActCourseActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [hcReporthcReportCourseActivity]
  ON [dbo].[hcReportCourseActivity] ([RepActRepID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ix_RepIDAmount]
  ON [dbo].[hcReportCourseActivity] ([RepActCourseActivityID])
  INCLUDE ([RepActRepID], [RepActAmount])
  ON [PRIMARY]
GO

CREATE INDEX [RepActActID]
  ON [dbo].[hcReportCourseActivity] ([RepActCourseActivityID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RepActID]
  ON [dbo].[hcReportCourseActivity] ([RepActID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RepActPoints]
  ON [dbo].[hcReportCourseActivity] ([RepActPoints])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RepActRepID]
  ON [dbo].[hcReportCourseActivity] ([RepActRepID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RepActRepIDPoints_Index]
  ON [dbo].[hcReportCourseActivity] ([RepActCourseActivityID])
  INCLUDE ([RepActRepID], [RepActPoints])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[hcReportCourseActivity]
  ADD CONSTRAINT [FK_hcReportCourseActivity_hcCourseActivity] FOREIGN KEY ([RepActCourseActivityID]) REFERENCES [dbo].[hcCourseActivity] ([CourseActivityID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[hcReportCourseActivity]
  ADD CONSTRAINT [FK_hcReportCourseActivity_hcReport] FOREIGN KEY ([RepActRepID]) REFERENCES [dbo].[hcReport] ([ReportID]) ON DELETE CASCADE
GO