CREATE TABLE [dbo].[Brand] (
    [Id]                       BIGINT         NOT NULL,
    [PlatformName]             NVARCHAR (50)  NOT NULL,
    [BrandName]                NVARCHAR (50)  NOT NULL,
    [BrandDefaultCurrency]     NVARCHAR (3)   NOT NULL,
    [IsPersonalMasking]        BIT            NOT NULL,
    [IsInvitePlayer]           BIT            NOT NULL,
    [AllowedTieredType]        BIT            NOT NULL,
    [CreatedAt]                DATETIME2 (7)  NOT NULL,
    [UpdatedAt]                DATETIME2 (7)  NOT NULL,
    [RegionType]               NVARCHAR (50)  NOT NULL,
    [GGNetworkBrandName]       NVARCHAR (256) DEFAULT (N'') NOT NULL,
    [PlayMigrationImmediately] BIT            DEFAULT (CONVERT([bit],(0))) NOT NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([Id] ASC)
);





GO
ALTER TABLE [dbo].[Brand] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_Brand_BrandName]
    ON [dbo].[Brand]([BrandName] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Brand_PlatformName]
    ON [dbo].[Brand]([PlatformName] ASC);

