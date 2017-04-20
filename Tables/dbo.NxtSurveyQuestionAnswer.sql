CREATE TABLE [dbo].[NxtSurveyQuestionAnswer] (
  [SurveyQuestionAnswerID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NxtSurveyQuestionAnswer_SurveyQuestionAnswerID] DEFAULT (newid()),
  [SurveyQuestionFK] [uniqueidentifier] NOT NULL,
  [Heading] [nvarchar](max) NOT NULL,
  [SortOrder] [int] NOT NULL CONSTRAINT [DF_NxtSurveyQuestionAnswer_SortOrder] DEFAULT (1),
  [Score] [decimal](10, 2) NOT NULL CONSTRAINT [DF_NxtSurveyQuestionAnswer_Score] DEFAULT (0),
  [Value] [decimal](10, 2) NULL,
  CONSTRAINT [PK_NxtSurveyQuestionAnswer] PRIMARY KEY CLUSTERED ([SurveyQuestionAnswerID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtSurveyQuestionAnswer]
  ADD CONSTRAINT [FK_NxtSurveyQuestionAnswer_NxtSurveyQuestion] FOREIGN KEY ([SurveyQuestionFK]) REFERENCES [dbo].[NxtSurveyQuestion] ([SurveyQuestionID])
GO