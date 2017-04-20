CREATE TABLE [dbo].[TblUserType] (
  [UserTypeID] [int] IDENTITY,
  [UserTypeName] [nvarchar](50) NULL,
  [UserTypeDescription] [ntext] NULL,
  [UserTypePrivilege] [int] NULL CONSTRAINT [DF__TblUserTy__UserT__77DFC722] DEFAULT (0),
  CONSTRAINT [aaaaaTblUserType_PK] PRIMARY KEY NONCLUSTERED ([UserTypeID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [UserTypeID]
  ON [dbo].[TblUserType] ([UserTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO