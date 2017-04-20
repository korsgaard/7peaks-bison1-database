CREATE TABLE [dbo].[TblLicense] (
  [LicenseID] [int] IDENTITY,
  [LicenseCompanyName] [nvarchar](100) NULL,
  [LicenseCompanyName1] [nvarchar](70) NULL,
  [LicenseCompanyAddress] [nvarchar](150) NULL,
  [LicenseCompanyZip] [nvarchar](50) NULL,
  [LicenseCompanyCity] [nvarchar](50) NULL,
  [LicenseCompanyPhone] [nvarchar](50) NULL,
  [LicenseCompanyFax] [nvarchar](50) NULL,
  [LicenseCompanyEmail] [nvarchar](50) NULL,
  [LicenseCompanyWWW] [nvarchar](50) NULL,
  [LicenseCompanyCountry] [nvarchar](50) NULL,
  [LicenseCompanyLogo] [nvarchar](200) NULL,
  [ShowLicenseCompanyAddress] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__2D12A970] DEFAULT (0),
  [ShowLicenseCompanyCity] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__2E06CDA9] DEFAULT (0),
  [ShowLicenseCompanyCountry] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__2EFAF1E2] DEFAULT (0),
  [ShowLicenseCompanyEmail] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__2FEF161B] DEFAULT (0),
  [ShowLicenseCompanyFax] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__30E33A54] DEFAULT (0),
  [ShowLicenseCompanyName] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__31D75E8D] DEFAULT (0),
  [ShowLicenseCompanyName1] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__32CB82C6] DEFAULT (0),
  [ShowLicenseCompanyPhone] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__33BFA6FF] DEFAULT (0),
  [ShowLicenseCompanyWWW] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__34B3CB38] DEFAULT (0),
  [ShowLicenseCompanyZip] [bit] NOT NULL CONSTRAINT [DF__TblLicens__ShowL__35A7EF71] DEFAULT (0),
  CONSTRAINT [aaaaaTblLicense_PK] PRIMARY KEY NONCLUSTERED ([LicenseID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [LicenseID]
  ON [dbo].[TblLicense] ([LicenseID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO