CREATE TABLE [dbo].[FmwUser] (
  [UserID] [int] IDENTITY (2000, 1),
  [Username] [nvarchar](50) NULL,
  [Password] [nvarchar](32) NULL,
  [Email] [nvarchar](100) NULL,
  [Created] [datetime] NULL CONSTRAINT [DF__FmwUser__Created__5165187F] DEFAULT (getdate()),
  [LastLogin] [datetime] NULL,
  [LastIP] [nvarchar](50) NULL,
  [FirstName] [nvarchar](255) NULL,
  [LastName] [nvarchar](255) NULL,
  [FullName] [nvarchar](255) NULL,
  [DOB] [datetime] NULL,
  [Expire] [datetime] NULL,
  [Address1] [nvarchar](100) NULL,
  [Address2] [nvarchar](100) NULL,
  [Postcode] [nvarchar](50) NULL,
  [Web] [nvarchar](100) NULL,
  [Phone] [nvarchar](50) NULL,
  [Fax] [nvarchar](50) NULL,
  [Mobile] [nvarchar](50) NULL,
  [Comments] [ntext] NULL,
  [GenderFK] [int] NULL CONSTRAINT [DF__FmwUser__GenderF__52593CB8] DEFAULT (0),
  [Level] [int] NULL,
  [Active] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Active__534D60F1] DEFAULT (0),
  [Mailstop] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Mailsto__5441852A] DEFAULT (0),
  [TeamFK] [int] NULL CONSTRAINT [DF__FmwUser__TeamFK__5535A963] DEFAULT (0),
  [Newsletter] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Newslet__5629CD9C] DEFAULT (0),
  [EmployeeNo] [nvarchar](50) NULL,
  [Height] [int] NULL CONSTRAINT [DF__FmwUser__Height__571DF1D5] DEFAULT (0),
  [Statistics] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Statist__5812160E] DEFAULT (0),
  [Healthgroup] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Healthg__59063A47] DEFAULT (0),
  [MessageType] [int] NULL CONSTRAINT [DF__FmwUser__Message__59FA5E80] DEFAULT (0),
  [UserIndex] [int] NULL CONSTRAINT [DF__FmwUser__UserInd__5AEE82B9] DEFAULT (0),
  [UserPercent] [float] NULL CONSTRAINT [DF__FmwUser__UserPer__5BE2A6F2] DEFAULT (0),
  [UserPercent1d] [float] NULL CONSTRAINT [DF__FmwUser__UserPer__5CD6CB2B] DEFAULT (0),
  [UserPercent1w] [float] NULL CONSTRAINT [DF__FmwUser__UserPer__5DCAEF64] DEFAULT (0),
  [UserReports] [int] NULL CONSTRAINT [DF__FmwUser__UserRep__5EBF139D] DEFAULT (0),
  [UserLastReport] [datetime] NULL,
  [Company] [nvarchar](255) NULL,
  [ImageBefore] [nvarchar](100) NULL,
  [ImageAfter] [nvarchar](100) NULL,
  [BattlePointsTotal] [int] NULL CONSTRAINT [DF__FmwUser__BattleP__5FB337D6] DEFAULT (0),
  [MayLogin] [bit] NOT NULL CONSTRAINT [DF__FmwUser__MayLogi__60A75C0F] DEFAULT (1),
  [Unit] [nvarchar](50) NULL,
  [Hidden] [bit] NOT NULL CONSTRAINT [DF__FmwUser__Hidden__619B8048] DEFAULT (0),
  [LastNotifyDate] [datetime] NULL,
  [BattleStop] [bit] NULL CONSTRAINT [DF_FmwUser_BattleStop] DEFAULT (0),
  [ProPackage] [bit] NULL CONSTRAINT [DF_FmwUser_ProPackage] DEFAULT (0),
  [ProPackage1] [int] NULL CONSTRAINT [DF_FmwUser_ProPackage1] DEFAULT (0),
  [BodyAge] [float] NULL CONSTRAINT [DF_FmwUser_BodyAge] DEFAULT (0),
  [Age] [int] NULL CONSTRAINT [DF_FmwUser_Age] DEFAULT (0),
  [BodyAgeEnd] [float] NULL CONSTRAINT [DF_FmwUser_BodyAgeEnd] DEFAULT (0),
  [UserIndexEnd] [int] NULL CONSTRAINT [DF_FmwUser_UserIndexEnd] DEFAULT (0),
  [UserReportPercent] [real] NULL CONSTRAINT [DF_FmwUser_UserReportPercent] DEFAULT (0),
  [Friend] [int] NULL,
  [CountryCode] [nvarchar](5) NULL,
  [SurveyComplete] [bit] NOT NULL CONSTRAINT [DF_FmwUser_SurveyComplete] DEFAULT (0),
  [GradeStart] [float] NULL,
  [GradeEnd] [float] NULL,
  [UserXP] [int] NOT NULL CONSTRAINT [DF_FmwUser_UserXP] DEFAULT (0),
  [UserXPLevelFK] [int] NOT NULL CONSTRAINT [DF_FmwUser_UserXPLevelFK] DEFAULT (1),
  [GradeMax] [int] NULL,
  [ContactAllowed] [bit] NOT NULL CONSTRAINT [DF_FmwUser_ContactAllowed] DEFAULT (0),
  [SponsorFK] [int] NULL,
  [BillettoEmail] [nvarchar](100) NULL,
  [RecommendedBy] [nvarchar](100) NULL,
  [SurveyEndComplete] [bit] NOT NULL CONSTRAINT [DF_FmwUser_SurveyEndComplete] DEFAULT (0),
  [VacationStart] [datetime] NULL,
  [VacationEnd] [datetime] NULL,
  [BattleSentDate] [datetime] NOT NULL CONSTRAINT [DF_FmwUser_BattleSentDate] DEFAULT (CONVERT([date],getdate(),(0))),
  [BattleSentCount] [int] NOT NULL CONSTRAINT [DF_FmwUser_BattleSentCount] DEFAULT (0),
  [BattleReceivedDate] [datetime] NOT NULL CONSTRAINT [DF_FmwUser_BattleReceivedDate] DEFAULT (CONVERT([date],getdate(),(0))),
  [BattleReceivedCount] [int] NOT NULL CONSTRAINT [DF_FmwUser_BattleReceivedCount] DEFAULT (0),
  [StripePayment] [bit] NOT NULL CONSTRAINT [DF_FmwUser_StripePayment] DEFAULT (0),
  [PrepaidCodeFK] [int] NULL,
  [StripePaymentId] [nvarchar](50) NULL,
  [SponsorActive] [bit] NOT NULL CONSTRAINT [DF_FmwUser_SponsorActive] DEFAULT (0),
  [OccupationFK] [int] NULL,
  [CampaignReasonFK] [int] NULL,
  [CampaignReferenceFK] [int] NULL,
  [CampaignReferrer] [nvarchar](500) NULL,
  [SignupTrackingLinkFK] [int] NULL,
  [FacebookLoginToken] [nvarchar](500) NULL,
  [FacebookId] [bigint] NULL,
  [FirebaseToken] [nvarchar](255) NULL,
  [Administrator] [bit] NOT NULL CONSTRAINT [DF_FmwUser_Administrator] DEFAULT (0),
  [AltEmail] [nvarchar](250) NULL,
  [AppVersion] [int] NULL,
  [Mailchimp_unique_email_id] [nvarchar](50) NULL,
  [EndEventStripePaymentId] [nvarchar](50) NULL,
  CONSTRAINT [aaaaaFmwUser_PK] PRIMARY KEY NONCLUSTERED ([UserID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ix_Healthgroup]
  ON [dbo].[FmwUser] ([Healthgroup])
  INCLUDE ([UserID], [TeamFK])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_CstTeam] FOREIGN KEY ([TeamFK]) REFERENCES [dbo].[CstTeam] ([TeamID])
GO

ALTER TABLE [dbo].[FmwUser] WITH NOCHECK
  ADD CONSTRAINT [FK_FmwUser_NxtPrepaidCode] FOREIGN KEY ([PrepaidCodeFK]) REFERENCES [dbo].[NxtPrepaidCode] ([PrepaidCodeID])
GO

ALTER TABLE [dbo].[FmwUser]
  NOCHECK CONSTRAINT [FK_FmwUser_NxtPrepaidCode]
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_NxtProfileOption_Occupation] FOREIGN KEY ([OccupationFK]) REFERENCES [dbo].[NxtProfileOption] ([ProfileOptionID])
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_NxtProfileOption_Reason] FOREIGN KEY ([CampaignReasonFK]) REFERENCES [dbo].[NxtProfileOption] ([ProfileOptionID])
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_NxtProfileOption_Reference] FOREIGN KEY ([CampaignReferenceFK]) REFERENCES [dbo].[NxtProfileOption] ([ProfileOptionID])
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_NxtTrackingLink] FOREIGN KEY ([SignupTrackingLinkFK]) REFERENCES [dbo].[NxtTrackingLink] ([TrackingLinkID])
GO

ALTER TABLE [dbo].[FmwUser] WITH NOCHECK
  ADD CONSTRAINT [FK_FmwUser_NxtXPLevel] FOREIGN KEY ([UserXPLevelFK]) REFERENCES [dbo].[NxtXPLevel] ([ID])
GO

ALTER TABLE [dbo].[FmwUser]
  ADD CONSTRAINT [FK_FmwUser_Sponsor] FOREIGN KEY ([SponsorFK]) REFERENCES [dbo].[Sponsor] ([SponsorID])
GO