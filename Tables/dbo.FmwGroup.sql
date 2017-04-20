CREATE TABLE [dbo].[FmwGroup] (
  [GroupID] [int] IDENTITY,
  [Name] [nvarchar](100) NULL,
  [ForumFK] [int] NULL,
  [Description] [ntext] NULL,
  [Username] [nvarchar](50) NULL,
  [Password] [nvarchar](50) NULL,
  [CustomFieldDisabled] [bit] NOT NULL CONSTRAINT [DF__FmwGroup__Custom__79A81403] DEFAULT (0),
  [CustomFieldTitle] [nvarchar](255) NULL,
  [CustomFieldRequired] [bit] NOT NULL CONSTRAINT [DF__FmwGroup__Custom__7A9C383C] DEFAULT (0),
  [DisclaimerHeading] [nvarchar](255) NULL,
  [DisclaimerText] [ntext] NULL,
  [NoPoints] [bit] NOT NULL CONSTRAINT [DF__FmwGroup__NoPoin__7B905C75] DEFAULT (0),
  [MenuFK] [int] NULL CONSTRAINT [DF__FmwGroup__MenuFK__7C8480AE] DEFAULT (0),
  [DocumentFK] [int] NULL CONSTRAINT [DF__FmwGroup__Docume__7D78A4E7] DEFAULT (0),
  [ReportDefinitionFK] [int] NULL CONSTRAINT [DF__FmwGroup__Report__7E6CC920] DEFAULT (0),
  [CoursePrice] [nvarchar](50) NULL,
  [CourseStartDate] [datetime] NULL,
  [CourseEndDate] [datetime] NULL,
  [CourseCompleted] [bit] NOT NULL CONSTRAINT [DF__FmwGroup__Course__7F60ED59] DEFAULT (0),
  [CourseMaxAttend] [int] NULL CONSTRAINT [DF__FmwGroup__Course__00551192] DEFAULT (0),
  [GroupDesc] [ntext] NULL,
  [GroupShortDesc] [ntext] NULL,
  [GroupLastStatus] [datetime] NULL,
  [CourseScoreGroup] [int] NOT NULL CONSTRAINT [DF_FmwGroup_CourseScoreGroup] DEFAULT (0),
  [DisableNotifications] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_DisableNotifications] DEFAULT (0),
  [DisableLogin] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_DisableLogin] DEFAULT (0),
  [AllowNewUsers] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_AllowGlobalJoin] DEFAULT (0),
  [SurveyLink] [nvarchar](200) NULL,
  [EnableReportNotifications] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_EnableReportNotifications] DEFAULT (0),
  [EnableZeroReport] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_EnableZeroReport] DEFAULT (0),
  [EnablePushNotifications] [bit] NOT NULL CONSTRAINT [DF_FmwGroup_EnablePushNotifications] DEFAULT (0),
  [ZeroReportDays] [int] NOT NULL CONSTRAINT [DF_FmwGroup_ZeroReportDays] DEFAULT (3),
  CONSTRAINT [aaaaaFmwGroup_PK] PRIMARY KEY NONCLUSTERED ([GroupID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [hcReportDefinitionFmwGroup]
  ON [dbo].[FmwGroup] ([ReportDefinitionFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IX_FmwGroupScoreGroup]
  ON [dbo].[FmwGroup] ([CourseScoreGroup])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FmwGroup] WITH NOCHECK
  ADD CONSTRAINT [FmwGroup_FK00] FOREIGN KEY ([ReportDefinitionFK]) REFERENCES [dbo].[hcReportDefinition] ([CourseID]) ON DELETE CASCADE
GO