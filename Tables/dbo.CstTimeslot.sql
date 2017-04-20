CREATE TABLE [dbo].[CstTimeslot] (
  [TimeslotID] [int] IDENTITY (500, 1),
  [SessionFK] [int] NULL CONSTRAINT [DF__CstTimesl__Sessi__50FB042B] DEFAULT (0),
  [StartTime] [datetime] NULL,
  CONSTRAINT [aaaaaCstTimeslot_PK] PRIMARY KEY NONCLUSTERED ([TimeslotID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstSessionCstTimeslot]
  ON [dbo].[CstTimeslot] ([SessionFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StartTid]
  ON [dbo].[CstTimeslot] ([StartTime])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TimeSlotID]
  ON [dbo].[CstTimeslot] ([TimeslotID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTimeslot]
  ADD CONSTRAINT [FK_CstTimeslot_CstSession] FOREIGN KEY ([SessionFK]) REFERENCES [dbo].[CstSession] ([SessionID]) ON DELETE CASCADE
GO