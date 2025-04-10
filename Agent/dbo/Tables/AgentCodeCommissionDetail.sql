CREATE TABLE [dbo].[AgentCodeCommissionDetail] (
    [Id]                                 BIGINT              IDENTITY (1, 1) NOT NULL,
    [AgentCodeId]                        BIGINT              NOT NULL,
    [BrandId]                            BIGINT              NOT NULL,
    [Week]                               INT                 NOT NULL,
    [SettlementAgentHierarchyId]         [sys].[hierarchyid] NOT NULL,
    [PokerGGR]                           DECIMAL (22, 6)     NOT NULL,
    [PokerCommissionPercent]             DECIMAL (18, 4)     NOT NULL,
    [PokerGrossCommission]               DECIMAL (22, 6)     NOT NULL,
    [PokerRakeback]                      DECIMAL (22, 6)     NOT NULL,
    [CasinoSubTotal]                     DECIMAL (22, 6)     NOT NULL,
    [CasinoCommissionPercent]            DECIMAL (18, 4)     NOT NULL,
    [CasinoGrossCommission]              DECIMAL (22, 6)     NOT NULL,
    [CasinoCashback]                     DECIMAL (22, 6)     NOT NULL,
    [RewardProgram]                      DECIMAL (22, 6)     NOT NULL,
    [RewardProgramPercent]               DECIMAL (18, 4)     NOT NULL,
    [RewardProgramGrossCommission]       DECIMAL (22, 6)     NOT NULL,
    [CasinoContribution]                 DECIMAL (22, 6)     NOT NULL,
    [CasinoContributionPercent]          DECIMAL (18, 4)     NOT NULL,
    [CasinoContributionGrossCommission]  DECIMAL (22, 6)     NOT NULL,
    [PokerDeductionGGR]                  DECIMAL (22, 6)     NOT NULL,
    [DeductionPercent]                   DECIMAL (18, 4)     NOT NULL,
    [PokerDeductionGrossCommission]      DECIMAL (22, 6)     NOT NULL,
    [DeductionCashback]                  DECIMAL (22, 6)     NOT NULL,
    [TotalGrossCommission]               DECIMAL (22, 6)     NOT NULL,
    [TotalRakebackCashback]              DECIMAL (22, 6)     NOT NULL,
    [TotalDownlineCommission]            DECIMAL (22, 6)     NOT NULL,
    [TotalCommission]                    DECIMAL (18, 2)     NOT NULL,
    [Currency]                           NVARCHAR (3)        NULL,
    [ExchangeRate]                       DECIMAL (18, 12)    NOT NULL,
    [CreatedAt]                          DATETIME2 (7)       NOT NULL,
    [CasinoGGR]                          DECIMAL (22, 6)     NOT NULL,
    [CasinoRoyalty]                      DECIMAL (22, 6)     NOT NULL,
    [AgentCommissionVersion]             INT                 NOT NULL,
    [PokerNGR]                           DECIMAL (22, 6)     NOT NULL,
    [PokerCNGR]                          DECIMAL (22, 6)     NOT NULL,
    [CasinoNGR]                          DECIMAL (22, 6)     NOT NULL,
    [PokerRewardProgram]                 DECIMAL (22, 6)     NOT NULL,
    [PokerRewardProgramGrossCommission]  DECIMAL (22, 6)     NOT NULL,
    [CasinoRewardProgram]                DECIMAL (22, 6)     NOT NULL,
    [CasinoRewardProgramGrossCommission] DECIMAL (22, 6)     NOT NULL,
    [CommissionBaseType]                 SMALLINT            NOT NULL,
    [CasinoDeductionGGR]                 DECIMAL (22, 6)     NOT NULL,
    [CasinoDeductionGrossCommission]     DECIMAL (22, 6)     NOT NULL,
    [CasinoLicenseFee]                   DECIMAL (22, 6)     NOT NULL,
    [PokerGamingTax]                     DECIMAL (22, 6)     NOT NULL,
    [CasinoGamingTax]                    DECIMAL (22, 6)     NOT NULL,
    [CommissionDetailId]                 BIGINT              NOT NULL,
    CONSTRAINT [PK_AgentCodeCommissionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AgentCodeCommissionDetail_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]) ON DELETE CASCADE
);


GO
ALTER TABLE [dbo].[AgentCodeCommissionDetail] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeCommissionDetail_AgentCodeId]
    ON [dbo].[AgentCodeCommissionDetail]([AgentCodeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeCommissionDetail_CommissionDetailId]
    ON [dbo].[AgentCodeCommissionDetail]([CommissionDetailId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeCommissionDetail_Week_BrandId_AgentCodeId]
    ON [dbo].[AgentCodeCommissionDetail]([Week] ASC, [BrandId] ASC, [AgentCodeId] ASC);

