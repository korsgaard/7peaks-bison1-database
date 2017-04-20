CREATE TABLE [dbo].[NxtNotification] (
  [NotificationID] [int] IDENTITY,
  [UserFK] [int] NOT NULL,
  [ReceiveTS] [datetime] NOT NULL CONSTRAINT [DF_NxtNotification_ReceiveTS] DEFAULT (getdate()),
  [Heading] [nvarchar](250) NOT NULL,
  [Body] [nvarchar](max) NULL,
  [NotificationTypeFK] [int] NULL,
  [UniqueID] [int] NULL,
  CONSTRAINT [PK_NxtNotification] PRIMARY KEY CLUSTERED ([NotificationID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtNotification]
  ADD CONSTRAINT [FK_NxtNotification_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID])
GO