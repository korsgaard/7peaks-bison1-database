CREATE TABLE [dbo].[NxtPostcode] (
  [PostcodeID] [int] IDENTITY,
  [RegionFK] [int] NOT NULL,
  [MunicipalFK] [int] NOT NULL,
  [Postcode] [int] NOT NULL,
  [Town] [nvarchar](150) NOT NULL,
  CONSTRAINT [PK_NxtPostcode] PRIMARY KEY CLUSTERED ([PostcodeID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtPostcode]
  ADD CONSTRAINT [FK_NxtPostcode_NxtMunicipal] FOREIGN KEY ([MunicipalFK]) REFERENCES [dbo].[NxtMunicipal] ([MunicipalID])
GO