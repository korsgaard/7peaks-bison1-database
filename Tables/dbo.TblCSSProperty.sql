CREATE TABLE [dbo].[TblCSSProperty] (
  [PropertyKey] [nvarchar](100) NOT NULL,
  [PropertyTitle] [nvarchar](100) NULL,
  [PropertyType] [nvarchar](100) NULL,
  [PropertyChoices] [nvarchar](250) NULL,
  [PropertyAdvanced] [nvarchar](1) NULL,
  CONSTRAINT [aaaaaTblCSSProperty_PK] PRIMARY KEY NONCLUSTERED ([PropertyKey]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO