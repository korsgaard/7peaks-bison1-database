CREATE TABLE [dbo].[TblNCUser] (
  [NCUserID] [int] IDENTITY,
  [NCUserName] [nvarchar](50) NULL,
  [NCUserPassword] [nvarchar](50) NULL,
  [NCUserEmail] [nvarchar](50) NULL,
  [NCUserCategoryID] [int] NULL CONSTRAINT [DF__TblNCUser__NCUse__6CA31EA0] DEFAULT (1),
  CONSTRAINT [aaaaaTblNCUser_PK] PRIMARY KEY NONCLUSTERED ([NCUserID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NCUserCategoryID]
  ON [dbo].[TblNCUser] ([NCUserCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NCUserID]
  ON [dbo].[TblNCUser] ([NCUserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO