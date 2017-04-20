CREATE TABLE [dbo].[NxtSurveyQuestionType] (
  [SurveyQuestionTypeID] [nvarchar](50) NOT NULL,
  [Heading] [nvarchar](50) NULL,
  [AllowChoices] [bit] NOT NULL,
  CONSTRAINT [PK_NxtSurveyQuestionType] PRIMARY KEY CLUSTERED ([SurveyQuestionTypeID])
)
ON [PRIMARY]
GO