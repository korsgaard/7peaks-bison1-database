CREATE TABLE [dbo].[CstUserCommunication] (
  [ID] [int] IDENTITY,
  [Message] [ntext] NULL,
  [FromUserFK] [int] NULL,
  [ToUserFK] [int] NULL,
  [CreateTS] [datetime] NULL,
  CONSTRAINT [PK_CstUserCommunaction] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO