CREATE TABLE [dbo].[NxtProfileOption] (
  [ProfileOptionID] [int] IDENTITY,
  [ProfileOptionGroupFK] [int] NOT NULL,
  [ProfileOptionText] [nvarchar](250) NOT NULL,
  CONSTRAINT [PK_ProfileOption] PRIMARY KEY CLUSTERED ([ProfileOptionID])
)
ON [PRIMARY]
GO