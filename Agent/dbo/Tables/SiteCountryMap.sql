CREATE TABLE [dbo].[SiteCountryMap] (
    [SiteId]      BIGINT       NOT NULL,
    [CountryCode] NVARCHAR (2) NOT NULL,
    CONSTRAINT [PK_SiteCountryMap] PRIMARY KEY CLUSTERED ([SiteId] ASC, [CountryCode] ASC),
    CONSTRAINT [FK_SiteCountryMap_Country_CountryCode] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [FK_SiteCountryMap_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_SiteCountryMap_CountryCode]
    ON [dbo].[SiteCountryMap]([CountryCode] ASC);

