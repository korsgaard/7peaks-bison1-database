CREATE TABLE [dbo].[NxtPrepaidCode] (
  [PrepaidCodeID] [int] IDENTITY,
  [Code] [nvarchar](50) NOT NULL,
  [Active] [bit] NOT NULL CONSTRAINT [DF_NxtPrepaidCode_Active] DEFAULT (0),
  [MaxUses] [int] NOT NULL CONSTRAINT [DF_NxtPrepaidCode_MaxUses] DEFAULT (1),
  CONSTRAINT [PK_NxtPrepaidCode] PRIMARY KEY CLUSTERED ([PrepaidCodeID])
)
ON [PRIMARY]
GO