﻿CREATE TABLE [HangFire].[JobParameter] (
  [Id] [int] IDENTITY,
  [JobId] [int] NOT NULL,
  [Name] [nvarchar](40) NOT NULL,
  [Value] [nvarchar](max) NULL,
  CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_JobParameter_JobIdAndName]
  ON [HangFire].[JobParameter] ([JobId], [Name])
  ON [PRIMARY]
GO

ALTER TABLE [HangFire].[JobParameter]
  ADD CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY ([JobId]) REFERENCES [HangFire].[Job] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
GO