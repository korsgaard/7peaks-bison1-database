CREATE TABLE [dbo].[TblHelp] (
  [HelpID] [nvarchar](50) NOT NULL,
  [HelpText] [ntext] NULL,
  CONSTRAINT [aaaaaTblHelp_PK] PRIMARY KEY NONCLUSTERED ([HelpID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [HelpID]
  ON [dbo].[TblHelp] ([HelpID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO