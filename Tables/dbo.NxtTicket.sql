CREATE TABLE [dbo].[NxtTicket] (
  [TicketID] [int] IDENTITY,
  [UserFK] [int] NOT NULL,
  [RandomKey] [int] NOT NULL,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtTicket_CreateTS] DEFAULT (getdate()),
  [StripePaymentId] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_NxtTicket] PRIMARY KEY CLUSTERED ([TicketID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtTicket]
  ADD CONSTRAINT [FK_NxtTicket_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID])
GO