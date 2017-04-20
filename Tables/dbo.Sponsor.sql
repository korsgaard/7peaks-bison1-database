CREATE TABLE [dbo].[Sponsor] (
  [SponsorID] [int] IDENTITY,
  [ParentSponsorFK] [int] NULL,
  [Heading] [nvarchar](100) NULL,
  [ShortText] [nvarchar](max) NULL,
  [ContactName] [nvarchar](150) NULL,
  [ContactEmail] [nvarchar](150) NULL,
  [ContactPassword] [nvarchar](150) NULL,
  [LogoImage] [nvarchar](50) NULL,
  [LinkUrl] [nvarchar](250) NULL,
  [LinkTarget] [nvarchar](10) NULL,
  [Bank] [nvarchar](100) NULL,
  CONSTRAINT [PK_Sponsor] PRIMARY KEY CLUSTERED ([SponsorID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sponsor]
  ADD CONSTRAINT [ParentSponsor_Sponsor] FOREIGN KEY ([ParentSponsorFK]) REFERENCES [dbo].[Sponsor] ([SponsorID])
GO