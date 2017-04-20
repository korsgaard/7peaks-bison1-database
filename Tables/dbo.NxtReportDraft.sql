CREATE TABLE [dbo].[NxtReportDraft] (
  [DraftID] [int] IDENTITY,
  [Date] [datetime] NOT NULL CONSTRAINT [DF_NxtReportDraft_Date] DEFAULT (getdate()),
  [CourseActivityFK] [int] NOT NULL,
  [Amount] [int] NOT NULL CONSTRAINT [DF_NxtReportDraft_RepActAmount] DEFAULT (0),
  [Points] [int] NOT NULL CONSTRAINT [DF_NxtReportDraft_RepActPoints] DEFAULT (0),
  [UserFK] [int] NOT NULL,
  CONSTRAINT [PK_NxtReportDraft] PRIMARY KEY CLUSTERED ([DraftID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtReportDraft]
  ADD CONSTRAINT [FK_NxtReportDraft_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtReportDraft]
  ADD CONSTRAINT [FK_NxtReportDraft_hcCourseActivity] FOREIGN KEY ([CourseActivityFK]) REFERENCES [dbo].[hcCourseActivity] ([CourseActivityID]) ON DELETE CASCADE
GO