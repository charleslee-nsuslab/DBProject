CREATE TABLE [dbo].[BrandInActivePlayerConfig] (
    [BrandId]              BIGINT        NOT NULL,
    [SiteId]               BIGINT        NOT NULL,
    [CountryCode]          NVARCHAR (2)  NOT NULL,
    [SendMessagePeriod]    SMALLINT      NOT NULL,
    [UntaggingPeriod]      SMALLINT      NOT NULL,
    [UntaggingAgentCodeId] BIGINT        NOT NULL,
    [CreatedAt]            DATETIME2 (7) NOT NULL,
    [UpdatedAt]            DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_BrandInActivePlayerConfig] PRIMARY KEY CLUSTERED ([BrandId] ASC, [SiteId] ASC, [CountryCode] ASC),
    CONSTRAINT [FK_BrandInActivePlayerConfig_AgentCode_UntaggingAgentCodeId] FOREIGN KEY ([UntaggingAgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_BrandInActivePlayerConfig_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_BrandInActivePlayerConfig_Country_CountryCode] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]) ON DELETE CASCADE,
    CONSTRAINT [FK_BrandInActivePlayerConfig_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_BrandInActivePlayerConfig_CountryCode]
    ON [dbo].[BrandInActivePlayerConfig]([CountryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BrandInActivePlayerConfig_SiteId]
    ON [dbo].[BrandInActivePlayerConfig]([SiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BrandInActivePlayerConfig_UntaggingAgentCodeId]
    ON [dbo].[BrandInActivePlayerConfig]([UntaggingAgentCodeId] ASC);

