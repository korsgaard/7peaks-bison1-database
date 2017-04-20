CREATE TABLE [dbo].[TblCSSSelector] (
  [SelectorKey] [nvarchar](100) NOT NULL,
  [SelectorTitle] [nvarchar](250) NULL,
  [SelectorTypeID] [int] NULL CONSTRAINT [DF__TblCSSSel__Selec__2180FB33] DEFAULT (0),
  [SelectorCategoryID] [int] NULL CONSTRAINT [DF__TblCSSSel__Selec__22751F6C] DEFAULT (1),
  [SelectorIsStandard] [bit] NOT NULL CONSTRAINT [DF__TblCSSSel__Selec__236943A5] DEFAULT (0),
  [SelectorDEVNotes] [nvarchar](50) NULL,
  CONSTRAINT [aaaaaTblCSSSelector_PK] PRIMARY KEY NONCLUSTERED ([SelectorKey]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO