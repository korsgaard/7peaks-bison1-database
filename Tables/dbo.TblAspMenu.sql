CREATE TABLE [dbo].[TblAspMenu] (
  [AspMenuID] [int] IDENTITY,
  [AspMenuName] [nvarchar](50) NULL,
  [ASPMenuCategoryID] [int] NULL CONSTRAINT [DF__TblAspMen__ASPMe__114A936A] DEFAULT (1),
  [ASPMenuDescription] [ntext] NULL,
  CONSTRAINT [aaaaaTblAspMenu_PK] PRIMARY KEY NONCLUSTERED ([AspMenuID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ASPMenuCategoryID]
  ON [dbo].[TblAspMenu] ([ASPMenuCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [AspMenuID]
  ON [dbo].[TblAspMenu] ([AspMenuID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO