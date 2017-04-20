CREATE TABLE [dbo].[FmwModule] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  [LoadPriority] [int] NULL CONSTRAINT [DF__FmwModule__LoadP__1BFD2C07] DEFAULT (1000),
  [AllowUseInSolution] [bit] NOT NULL CONSTRAINT [DF__FmwModule__Allow__1CF15040] DEFAULT (0),
  [ClassPrefix] [nvarchar](50) NULL,
  [Version] [nvarchar](50) NULL,
  [Singleton] [bit] NOT NULL CONSTRAINT [DF__FmwModule__Singl__1DE57479] DEFAULT (0),
  [ClassName] [nvarchar](100) NULL,
  CONSTRAINT [aaaaaFmwModule_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[FmwModule] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Name]
  ON [dbo].[FmwModule] ([Name])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO