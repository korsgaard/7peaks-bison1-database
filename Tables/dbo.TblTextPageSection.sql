CREATE TABLE [dbo].[TblTextPageSection] (
  [SectionID] [nvarchar](50) NOT NULL,
  [SectionTitle] [nvarchar](255) NULL,
  [SectionDescription] [nvarchar](50) NULL,
  [SectionPageID] [nvarchar](50) NULL,
  [SectionOrder] [int] NULL,
  CONSTRAINT [aaaaaTblTextPageSection_PK] PRIMARY KEY NONCLUSTERED ([SectionID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TblTextPageTblTextPageSection]
  ON [dbo].[TblTextPageSection] ([SectionPageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblTextPageSection] WITH NOCHECK
  ADD CONSTRAINT [TblTextPageSection_FK00] FOREIGN KEY ([SectionPageID]) REFERENCES [dbo].[TblTextPage] ([SettingPageID]) ON UPDATE CASCADE
GO