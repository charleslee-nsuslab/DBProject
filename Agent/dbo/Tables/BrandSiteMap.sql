CREATE TABLE [dbo].[BrandSiteMap] (
    [BrandId] BIGINT NOT NULL,
    [SiteId]  BIGINT NOT NULL,
    CONSTRAINT [PK_BrandSiteMap] PRIMARY KEY CLUSTERED ([BrandId] ASC, [SiteId] ASC),
    CONSTRAINT [FK_BrandSiteMap_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_BrandSiteMap_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_BrandSiteMap_SiteId]
    ON [dbo].[BrandSiteMap]([SiteId] ASC);

