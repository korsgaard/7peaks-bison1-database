CREATE TABLE [dbo].[TblPromotion] (
  [PromotionID] [int] IDENTITY,
  [PromotionTitle] [nvarchar](255) NULL,
  [PromotionAuthor] [nvarchar](255) NULL,
  [PromotionOwner] [nvarchar](255) NULL,
  [PromotionDescription] [ntext] NULL CONSTRAINT [DF__TblPromot__Promo__0EF836A4] DEFAULT (''),
  [PromotionWords] [ntext] NULL CONSTRAINT [DF__TblPromot__Promo__0FEC5ADD] DEFAULT (''),
  [PromotionRedirect] [nvarchar](255) NULL,
  [PromotionLanguage] [nvarchar](50) NULL,
  [PromotionRobot] [nvarchar](50) NULL,
  [PromotionRating] [nvarchar](50) NULL,
  CONSTRAINT [aaaaaTblPromotion_PK] PRIMARY KEY NONCLUSTERED ([PromotionID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO