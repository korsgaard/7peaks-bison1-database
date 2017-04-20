CREATE TABLE [dbo].[CstGender] (
  [GenderID] [int] IDENTITY,
  [Gender] [nvarchar](50) NULL,
  CONSTRAINT [aaaaaCstGender_PK] PRIMARY KEY NONCLUSTERED ([GenderID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GenderID]
  ON [dbo].[CstGender] ([GenderID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO