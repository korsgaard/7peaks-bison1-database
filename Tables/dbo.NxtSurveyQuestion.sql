CREATE TABLE [dbo].[NxtSurveyQuestion] (
  [SurveyQuestionID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NxtSurveyQuestion_SurveyQuestionID] DEFAULT (newid()),
  [SurveyFK] [uniqueidentifier] NOT NULL,
  [Heading] [nvarchar](max) NOT NULL,
  [Body] [nvarchar](max) NULL,
  [SortOrder] [int] NOT NULL CONSTRAINT [DF_NxtSurveyQuestion_SortOrder] DEFAULT (1),
  [Type] [nvarchar](50) NULL,
  [GroupHeading] [nvarchar](max) NULL,
  CONSTRAINT [PK_NxtSurveyQuestion] PRIMARY KEY CLUSTERED ([SurveyQuestionID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtSurveyQuestion]
  ADD CONSTRAINT [FK_NxtSurveyQuestion_NxtSurvey] FOREIGN KEY ([SurveyFK]) REFERENCES [dbo].[NxtSurvey] ([SurveyID])
GO

ALTER TABLE [dbo].[NxtSurveyQuestion]
  ADD CONSTRAINT [FK_NxtSurveyQuestion_NxtSurveyQuestionType] FOREIGN KEY ([Type]) REFERENCES [dbo].[NxtSurveyQuestionType] ([SurveyQuestionTypeID])
GO