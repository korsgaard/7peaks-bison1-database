CREATE TABLE [dbo].[TblCSSSelectorType] (
  [CSSSelectorTypeID] [int] IDENTITY,
  [CSSSelectorTypeName] [nvarchar](50) NULL,
  [CSSSelectorTypePrivilegeNeeded] [int] NULL CONSTRAINT [DF__TblCSSSel__CSSSe__324172E1] DEFAULT (0),
  [CSSSelectorTypeDevNotes] [ntext] NULL,
  CONSTRAINT [aaaaaTblCSSSelectorType_PK] PRIMARY KEY NONCLUSTERED ([CSSSelectorTypeID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [StyleElementID]
  ON [dbo].[TblCSSSelectorType] ([CSSSelectorTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO