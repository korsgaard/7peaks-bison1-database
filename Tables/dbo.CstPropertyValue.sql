CREATE TABLE [dbo].[CstPropertyValue] (
  [PropertyValueID] [int] IDENTITY,
  [PropertyFK] [int] NULL CONSTRAINT [DF__CstProper__Prope__02C769E9] DEFAULT (0),
  [MinAge] [int] NULL CONSTRAINT [DF__CstProper__MinAg__03BB8E22] DEFAULT (0),
  [MaxAge] [int] NULL CONSTRAINT [DF__CstProper__MaxAg__04AFB25B] DEFAULT (0),
  [Points] [int] NULL CONSTRAINT [DF__CstProper__Point__05A3D694] DEFAULT (0),
  [GenderFK] [int] NULL CONSTRAINT [DF__CstProper__Gende__0697FACD] DEFAULT (0),
  [MinValue] [real] NULL CONSTRAINT [DF__CstProper__MinVa__078C1F06] DEFAULT (0),
  [MaxValue] [real] NULL CONSTRAINT [DF__CstProper__MaxVa__0880433F] DEFAULT (0),
  CONSTRAINT [aaaaaCstPropertyValue_PK] PRIMARY KEY NONCLUSTERED ([PropertyValueID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [{D0C724F3-B860-416D-8B63-1EAE0055DFBB}]
  ON [dbo].[CstPropertyValue] ([PropertyFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [{F0885E1C-93EE-4F6F-9E8C-153D9EB66A6F}]
  ON [dbo].[CstPropertyValue] ([GenderFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PropertyValueID]
  ON [dbo].[CstPropertyValue] ([PropertyValueID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PropertyValuePropertyID]
  ON [dbo].[CstPropertyValue] ([PropertyFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstPropertyValue] WITH NOCHECK
  ADD CONSTRAINT [CstPropertyValue_FK00] FOREIGN KEY ([PropertyFK]) REFERENCES [dbo].[CstProperty] ([PropertyID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[CstPropertyValue] WITH NOCHECK
  ADD CONSTRAINT [CstPropertyValue_FK01] FOREIGN KEY ([GenderFK]) REFERENCES [dbo].[CstGender] ([GenderID]) ON DELETE CASCADE ON UPDATE CASCADE
GO