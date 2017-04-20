CREATE TABLE [dbo].[CstBattleQuestion] (
  [BattleQuestionID] [int] IDENTITY,
  [ThemeFK] [int] NULL,
  [KnowledgebaseFK] [int] NULL,
  [QuestionText] [ntext] NULL,
  [Answer1Text] [ntext] NULL,
  [Answer2Text] [ntext] NULL,
  [Answer3Text] [ntext] NULL,
  [CorrectAnswer] [smallint] NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO