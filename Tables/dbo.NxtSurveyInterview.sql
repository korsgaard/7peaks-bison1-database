CREATE TABLE [dbo].[NxtSurveyInterview] (
  [SurveyInterviewID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NxtSurveyInterview_SurveyInterviewID] DEFAULT (newid()),
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_SurveyInterview_CreateTS] DEFAULT (getdate()),
  [SurveyFK] [uniqueidentifier] NOT NULL,
  [UserFK] [int] NULL,
  [UserUniqueID] [uniqueidentifier] NULL,
  CONSTRAINT [PK_SurveyInterview] PRIMARY KEY CLUSTERED ([SurveyInterviewID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtSurveyInterview]
  ADD CONSTRAINT [FK_NxtSurveyInterview_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE SET NULL
GO

ALTER TABLE [dbo].[NxtSurveyInterview]
  ADD CONSTRAINT [FK_NxtSurveyInterview_NxtSurvey] FOREIGN KEY ([SurveyFK]) REFERENCES [dbo].[NxtSurvey] ([SurveyID])
GO