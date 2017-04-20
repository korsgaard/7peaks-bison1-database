CREATE TABLE [dbo].[CstTestResultNote] (
  [TestResultNoteID] [int] IDENTITY,
  [TestFK] [int] NULL CONSTRAINT [DF__CstTestRe__TestF__4B422AD5] DEFAULT (0),
  [UserFK] [int] NULL CONSTRAINT [DF__CstTestRe__UserF__4C364F0E] DEFAULT (0),
  [Note] [ntext] NULL,
  [Note2] [ntext] NULL,
  CONSTRAINT [aaaaaCstTestResultNote_PK] PRIMARY KEY NONCLUSTERED ([TestResultNoteID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TestResultNoteID]
  ON [dbo].[CstTestResultNote] ([TestResultNoteID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO