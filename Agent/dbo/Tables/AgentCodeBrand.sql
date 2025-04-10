CREATE TABLE [dbo].[AgentCodeBrand] (
    [AgentCodeId]                        BIGINT           NOT NULL,
    [BrandId]                            BIGINT           NOT NULL,
    [ConnectedPlayerId]                  BIGINT           NULL,
    [LocalCurrency]                      NVARCHAR (3)     NULL,
    [IsSuspended]                        BIT              NOT NULL,
    [Cashier]                            BIT              NOT NULL,
    [SuspendLevel]                       INT              NOT NULL,
    [SecretKey]                          NVARCHAR (256)   NULL,
    [Type]                               SMALLINT         NOT NULL,
    [CommissionBaseType]                 SMALLINT         NOT NULL,
    [RevenuePlanId]                      BIGINT           NULL,
    [TieredParentAgentCodeId]            BIGINT           NULL,
    [CommissionPoker]                    DECIMAL (18, 2)  NOT NULL,
    [CommissionCasino]                   DECIMAL (18, 2)  NOT NULL,
    [CommissionSports]                   DECIMAL (18, 2)  NOT NULL,
    [CommissionChinesePoker]             DECIMAL (18, 2)  NOT NULL,
    [CommissionCasinoBet]                DECIMAL (18, 4)  NOT NULL,
    [CommissionSideGame]                 DECIMAL (18, 2)  NOT NULL,
    [DefaultPokerRakeback]               DECIMAL (18, 2)  NOT NULL,
    [DefaultCasinoCashback]              DECIMAL (18, 2)  NOT NULL,
    [DefaultSportsCashback]              DECIMAL (18, 2)  NOT NULL,
    [DefaultDeductionPercent]            DECIMAL (18, 2)  NOT NULL,
    [DeductionPercent]                   DECIMAL (18, 2)  NOT NULL,
    [UpdatedAt]                          DATETIME2 (7)    NOT NULL,
    [IsIgnoreCngrDifferenceContribution] BIT              DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [IsDeleted]                          BIT              DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [WalletAccountId]                    UNIQUEIDENTIFIER DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
    CONSTRAINT [PK_AgentCodeBrand] PRIMARY KEY CLUSTERED ([AgentCodeId] ASC, [BrandId] ASC),
    CONSTRAINT [FK_AgentCodeBrand_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_AgentCodeBrand_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]),
    CONSTRAINT [FK_AgentCodeBrand_Player_ConnectedPlayerId] FOREIGN KEY ([ConnectedPlayerId]) REFERENCES [dbo].[Player] ([Id]),
    CONSTRAINT [FK_AgentCodeBrand_RevenuePlanTemplate_RevenuePlanId] FOREIGN KEY ([RevenuePlanId]) REFERENCES [dbo].[RevenuePlanTemplate] ([Id])
);





GO
ALTER TABLE [dbo].[AgentCodeBrand] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeBrand_BrandId]
    ON [dbo].[AgentCodeBrand]([BrandId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AgentCodeBrand_ConnectedPlayerId]
    ON [dbo].[AgentCodeBrand]([ConnectedPlayerId] ASC) WHERE ([ConnectedPlayerId] IS NOT NULL);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeBrand_RevenuePlanId]
    ON [dbo].[AgentCodeBrand]([RevenuePlanId] ASC);

