CREATE TABLE [dbo].[NxtSurvey] (
  [SurveyID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NxtSurvey_SurveyID] DEFAULT (newid()),
  [Title] [nvarchar](250) NOT NULL,
  CONSTRAINT [PK_NxtSurvey] PRIMARY KEY CLUSTERED ([SurveyID])
)
ON [PRIMARY]
GO