CREATE TABLE [dbo].[Tbl_Import] (
  [Email] [nvarchar](200) NOT NULL,
  [FirstName] [nvarchar](200) NULL,
  [LastName] [nvarchar](50) NULL,
  [Country] [nvarchar](50) NULL,
  [Age] [int] NULL,
  [BodyAgeStart] [decimal](2) NULL,
  [IndexStart] [int] NULL,
  [TeamID] [int] NULL,
  [TeamName] [nvarchar](200) NULL,
  CONSTRAINT [PK_Tbl_Import] PRIMARY KEY CLUSTERED ([Email])
)
ON [PRIMARY]
GO