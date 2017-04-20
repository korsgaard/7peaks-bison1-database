CREATE TABLE [dbo].[CstBattle] (
  [BattleID] [int] IDENTITY,
  [SenderFK] [int] NULL,
  [ReceiverFK] [int] NULL,
  [SendTS] [datetime] NULL,
  [DoneTS] [datetime] NULL,
  [SenderScore] [smallint] NULL CONSTRAINT [DF__CstBattle__Sende__4A8310C6] DEFAULT (0),
  [ReceiverScore] [smallint] NULL CONSTRAINT [DF__CstBattle__Recei__4B7734FF] DEFAULT (0),
  [QuestionFK1] [int] NULL,
  [QuestionFK2] [int] NULL,
  [QuestionFK3] [int] NULL,
  [QuestionFK4] [int] NULL,
  [QuestionFK5] [int] NULL,
  [SenderQuestionNo] [smallint] NULL,
  [ReceiverQuestionNo] [smallint] NULL,
  [MessageSent] [bit] NOT NULL CONSTRAINT [DF__CstBattle__Messa__4C6B5938] DEFAULT (0)
)
ON [PRIMARY]
GO