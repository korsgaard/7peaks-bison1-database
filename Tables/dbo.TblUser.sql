CREATE TABLE [dbo].[TblUser] (
  [UserID] [int] IDENTITY,
  [UserName] [nvarchar](50) NULL,
  [UserPassword] [nvarchar](32) NULL,
  [UserLastLogin] [datetime] NULL,
  [UserCreated] [datetime] NULL,
  [UserLastIP] [nvarchar](50) NULL,
  [UserEmail] [nvarchar](50) NULL,
  [UserPublicName] [nvarchar](255) NULL,
  [UserUserTypeID] [int] NULL CONSTRAINT [DF__TblUser__UserUse__67A95F59] DEFAULT (0),
  [UserExpire] [datetime] NULL,
  CONSTRAINT [aaaaaTblUser_PK] PRIMARY KEY NONCLUSTERED ([UserID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BrugerID]
  ON [dbo].[TblUser] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblUserTypeTblUser]
  ON [dbo].[TblUser] ([UserUserTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UserUserTypeID]
  ON [dbo].[TblUser] ([UserUserTypeID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblUser] WITH NOCHECK
  ADD CONSTRAINT [TblUser_FK00] FOREIGN KEY ([UserUserTypeID]) REFERENCES [dbo].[TblUserType] ([UserTypeID])
GO