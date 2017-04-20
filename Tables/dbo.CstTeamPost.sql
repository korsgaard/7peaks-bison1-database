CREATE TABLE [dbo].[CstTeamPost] (
  [TeamPostID] [int] IDENTITY,
  [TeamPostDate] [datetime] NULL,
  [TeamPostTeamID] [int] NOT NULL,
  [TeamPostUserID] [int] NOT NULL,
  [TeamPostText] [nvarchar](4000) NULL,
  CONSTRAINT [PK_CstTeamPost] PRIMARY KEY CLUSTERED ([TeamPostID])
)
ON [PRIMARY]
GO