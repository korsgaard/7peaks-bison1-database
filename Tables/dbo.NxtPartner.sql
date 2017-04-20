CREATE TABLE [dbo].[NxtPartner] (
  [PartnerID] [int] IDENTITY,
  [Heading] [nvarchar](100) NULL,
  [PartnerLevel] [int] NOT NULL CONSTRAINT [DF_NxtPartner_PartnerLevel] DEFAULT (1),
  [LinkUrl] [nvarchar](250) NULL,
  [LinkTarget] [nvarchar](10) NULL,
  [ImageFilename] [nvarchar](50) NULL,
  CONSTRAINT [PK_NxtPartner] PRIMARY KEY CLUSTERED ([PartnerID])
)
ON [PRIMARY]
GO