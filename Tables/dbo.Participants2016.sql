CREATE TABLE [dbo].[Participants2016] (
  [JoinDate] [datetime] NOT NULL,
  [JoinCount] [int] NOT NULL,
  CONSTRAINT [PK_Participants2016] PRIMARY KEY CLUSTERED ([JoinDate])
)
ON [PRIMARY]
GO