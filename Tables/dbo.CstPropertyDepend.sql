CREATE TABLE [dbo].[CstPropertyDepend] (
  [PropertyFK] [int] NOT NULL CONSTRAINT [DF__CstProper__Prope__76619304] DEFAULT (0),
  [DependsOnPropertyFK] [int] NOT NULL CONSTRAINT [DF__CstProper__Depen__7755B73D] DEFAULT (0),
  CONSTRAINT [aaaaaCstPropertyDepend_PK] PRIMARY KEY NONCLUSTERED ([PropertyFK], [DependsOnPropertyFK]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO