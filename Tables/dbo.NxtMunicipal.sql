CREATE TABLE [dbo].[NxtMunicipal] (
  [MunicipalID] [int] NOT NULL,
  [RegionFK] [int] NOT NULL,
  [Name] [nvarchar](150) NOT NULL,
  CONSTRAINT [PK_NxtMunicipal] PRIMARY KEY CLUSTERED ([MunicipalID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NxtMunicipal]
  ADD CONSTRAINT [FK_NxtMunicipal_NxtMunicipal] FOREIGN KEY ([MunicipalID]) REFERENCES [dbo].[NxtMunicipal] ([MunicipalID])
GO