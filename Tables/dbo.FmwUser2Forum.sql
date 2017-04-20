CREATE TABLE [dbo].[FmwUser2Forum] (
  [User2ForumID] [int] IDENTITY,
  [ForumFK] [int] NULL,
  [UserFK] [int] NULL,
  [Timestamp] [datetime] NULL
)
ON [PRIMARY]
GO