CREATE TABLE [dbo].[TaggingPolicySiteCountry] (
    [Id]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [BrandId]     BIGINT        NOT NULL,
    [SiteId]      BIGINT        NOT NULL,
    [CountryCode] NVARCHAR (2)  NOT NULL,
    [AllowType]   INT           NOT NULL,
    [CreatedAt]   DATETIME2 (7) NOT NULL,
    [UpdatedAt]   DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_TaggingPolicySiteCountry] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaggingPolicySiteCountry_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]),
    CONSTRAINT [FK_TaggingPolicySiteCountry_Country_CountryCode] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [FK_TaggingPolicySiteCountry_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_TaggingPolicySiteCountry_BrandId_SiteId_CountryCode]
    ON [dbo].[TaggingPolicySiteCountry]([BrandId] ASC, [SiteId] ASC, [CountryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicySiteCountry_CountryCode]
    ON [dbo].[TaggingPolicySiteCountry]([CountryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicySiteCountry_SiteId]
    ON [dbo].[TaggingPolicySiteCountry]([SiteId] ASC);

