CREATE TABLE [dbo].[NxtPage] (
  [PageID] [int] IDENTITY,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtPage_CreateTS] DEFAULT (getdate()),
  [ModifyTS] [datetime] NOT NULL CONSTRAINT [DF_NxtPage_ModifyTS] DEFAULT (getdate()),
  [DeleteTS] [datetime] NULL,
  CONSTRAINT [PK_NxtPage] PRIMARY KEY CLUSTERED ([PageID])
)
ON [PRIMARY]
GO