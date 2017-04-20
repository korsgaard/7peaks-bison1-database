CREATE TABLE [dbo].[NxtSurveyInterviewAnswer] (
  [SurveyInterviewFK] [uniqueidentifier] NOT NULL,
  [SurveyQuestionFK] [uniqueidentifier] NOT NULL,
  [SurveyQuestionAnswerFK] [uniqueidentifier] NULL,
  [AnswerValue] [decimal](18, 2) NULL,
  [AnswerValueString] [nvarchar](max) NULL,
  CONSTRAINT [PK_NxtSurveyInterviewAnswer_1] PRIMARY KEY CLUSTERED ([SurveyInterviewFK], [SurveyQuestionFK])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtSurveyInterviewAnswer]
  ADD CONSTRAINT [FK_NxtSurveyInterviewAnswer_NxtSurveyInterview] FOREIGN KEY ([SurveyInterviewFK]) REFERENCES [dbo].[NxtSurveyInterview] ([SurveyInterviewID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[NxtSurveyInterviewAnswer]
  ADD CONSTRAINT [FK_NxtSurveyInterviewAnswer_NxtSurveyQuestion] FOREIGN KEY ([SurveyQuestionFK]) REFERENCES [dbo].[NxtSurveyQuestion] ([SurveyQuestionID])
GO

ALTER TABLE [dbo].[NxtSurveyInterviewAnswer]
  ADD CONSTRAINT [FK_NxtSurveyInterviewAnswer_NxtSurveyQuestionAnswer] FOREIGN KEY ([SurveyQuestionAnswerFK]) REFERENCES [dbo].[NxtSurveyQuestionAnswer] ([SurveyQuestionAnswerID])
GO