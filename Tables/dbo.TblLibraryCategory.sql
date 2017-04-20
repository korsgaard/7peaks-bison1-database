CREATE TABLE [dbo].[TblLibraryCategory] (
  [LibraryCategoryID] [int] IDENTITY,
  [LibraryCategoryName] [nvarchar](100) NULL,
  [LibraryCategoryDesc] [ntext] NULL,
  [LibraryCategoryPrivilegeNeeded] [int] NOT NULL CONSTRAINT [DF__TblLibrar__Libra__284DF453] DEFAULT (0),
  CONSTRAINT [aaaaaTblLibraryCategory_PK] PRIMARY KEY NONCLUSTERED ([LibraryCategoryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO