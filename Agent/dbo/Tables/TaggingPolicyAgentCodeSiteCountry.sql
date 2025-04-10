CREATE TABLE [dbo].[TaggingPolicyAgentCodeSiteCountry] (
    [Id]                       BIGINT       IDENTITY (1, 1) NOT NULL,
    [TaggingPolicyAgentCodeId] BIGINT       NOT NULL,
    [BrandId]                  BIGINT       NOT NULL,
    [SiteId]                   BIGINT       NOT NULL,
    [CountryCode]              NVARCHAR (2) NOT NULL,
    CONSTRAINT [PK_TaggingPolicyAgentCodeSiteCountry] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaggingPolicyAgentCodeId_Id] FOREIGN KEY ([TaggingPolicyAgentCodeId]) REFERENCES [dbo].[TaggingPolicyAgentCode] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_TaggingPolicyAgentCodeSiteCountry_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]),
    CONSTRAINT [FK_TaggingPolicyAgentCodeSiteCountry_Country_CountryCode] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [FK_TaggingPolicyAgentCodeSiteCountry_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicyAgentCodeSiteCountry_BrandId]
    ON [dbo].[TaggingPolicyAgentCodeSiteCountry]([BrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicyAgentCodeSiteCountry_CountryCode]
    ON [dbo].[TaggingPolicyAgentCodeSiteCountry]([CountryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicyAgentCodeSiteCountry_SiteId]
    ON [dbo].[TaggingPolicyAgentCodeSiteCountry]([SiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicyAgentCodeSiteCountry_TaggingPolicyAgentCodeId]
    ON [dbo].[TaggingPolicyAgentCodeSiteCountry]([TaggingPolicyAgentCodeId] ASC);

