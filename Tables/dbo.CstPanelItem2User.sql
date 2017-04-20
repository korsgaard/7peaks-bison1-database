CREATE TABLE [dbo].[CstPanelItem2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [PanelItemFK] [int] NULL,
  CONSTRAINT [aaaaaCstPanelItem2User_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstPanelItemCstPanelItem2User]
  ON [dbo].[CstPanelItem2User] ([PanelItemFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstPanelItem2User]
  ON [dbo].[CstPanelItem2User] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[CstPanelItem2User] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstPanelItem2User] WITH NOCHECK
  ADD CONSTRAINT [CstPanelItem2User_FK00] FOREIGN KEY ([PanelItemFK]) REFERENCES [dbo].[CstPanelItem] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstPanelItem2User] WITH NOCHECK
  ADD CONSTRAINT [CstPanelItem2User_FK01] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO