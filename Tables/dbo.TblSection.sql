CREATE TABLE [dbo].[TblSection] (
  [SectionID] [nvarchar](50) NOT NULL,
  [SectionTitle] [ntext] NULL,
  [SectionDescription] [nvarchar](50) NULL,
  [SectionPageID] [nvarchar](50) NULL,
  [SectionOrder] [int] NULL CONSTRAINT [DF__TblSectio__Secti__1E3A7A34] DEFAULT (0),
  CONSTRAINT [aaaaaTblSection_PK] PRIMARY KEY NONCLUSTERED ([SectionID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TblSettingGroupTblSettingSection]
  ON [dbo].[TblSection] ([SectionPageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblSection] WITH NOCHECK
  ADD CONSTRAINT [TblSection_FK00] FOREIGN KEY ([SectionPageID]) REFERENCES [dbo].[TblSettingPage] ([SettingPageID])
GO