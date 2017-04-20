CREATE TABLE [dbo].[CstTimeslotEntry] (
  [TimeslotEntryID] [int] IDENTITY,
  [TimeslotFK] [int] NULL,
  [UserFK] [int] NULL,
  [Pause] [bit] NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTimeslotEntry]
  ADD CONSTRAINT [FK_CstTimeslotEntry_CstTimeslot] FOREIGN KEY ([TimeslotFK]) REFERENCES [dbo].[CstTimeslot] ([TimeslotID]) ON DELETE CASCADE
GO