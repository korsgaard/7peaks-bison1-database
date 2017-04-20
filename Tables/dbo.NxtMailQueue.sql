CREATE TABLE [dbo].[NxtMailQueue] (
  [QueueID] [int] IDENTITY,
  [Subject] [nvarchar](250) NOT NULL,
  [Important] [bit] NOT NULL CONSTRAINT [DF_NxtMailQueue_Important] DEFAULT (0),
  [SenderName] [nvarchar](100) NULL,
  [SenderEmail] [nvarchar](100) NOT NULL,
  [RecipientName] [nvarchar](100) NULL,
  [RecipientEmail] [nvarchar](100) NOT NULL,
  [Body] [ntext] NULL,
  [BodyHtml] [ntext] NULL,
  [CreateTS] [datetime] NOT NULL CONSTRAINT [DF_NxtMailQueue_CreateTS] DEFAULT (getdate()),
  [SendTS] [datetime] NULL,
  [Tags] [nvarchar](50) NULL,
  [Images] [nvarchar](max) NULL,
  [Attachments] [nvarchar](max) NULL,
  [Status] [nvarchar](50) NULL,
  [RejectReason] [nvarchar](250) NULL,
  CONSTRAINT [PK_NxtMailQueue] PRIMARY KEY CLUSTERED ([QueueID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO