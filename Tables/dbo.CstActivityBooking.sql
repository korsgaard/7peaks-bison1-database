CREATE TABLE [dbo].[CstActivityBooking] (
  [ID] [int] IDENTITY,
  [ActivityFK] [int] NOT NULL,
  [UserFK] [int] NOT NULL,
  CONSTRAINT [PK_CstActivityBooking] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_CstActivityBooking]
  ON [dbo].[CstActivityBooking] ([ActivityFK], [UserFK])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstActivityBooking]
  ADD CONSTRAINT [FK_CstActivityBooking_CstActivity] FOREIGN KEY ([ActivityFK]) REFERENCES [dbo].[CstActivity] ([ID])
GO

ALTER TABLE [dbo].[CstActivityBooking]
  ADD CONSTRAINT [FK_CstActivityBooking_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID])
GO