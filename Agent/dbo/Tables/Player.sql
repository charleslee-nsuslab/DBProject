CREATE TABLE [dbo].[Player] (
    [Id]            BIGINT           IDENTITY (10000000, 1) NOT NULL,
    [AccountId]     UNIQUEIDENTIFIER NOT NULL,
    [BrandId]       BIGINT           NOT NULL,
    [BrandPlayerId] BIGINT           NOT NULL,
    [AgentCodeId]   BIGINT           NULL,
    [Email]         NVARCHAR (256)   NULL,
    [SiteId]        BIGINT           NOT NULL,
    [CountryCode]   NVARCHAR (2)     NOT NULL,
    [RowVersion]    ROWVERSION       NULL,
    [Nickname]      NVARCHAR (64)    NULL,
    CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Player_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_Player_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]),
    CONSTRAINT [FK_Player_Country_CountryCode] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [FK_Player_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);





GO
ALTER TABLE [dbo].[Player] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Player_AccountId]
    ON [dbo].[Player]([AccountId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Player_AgentCodeId]
    ON [dbo].[Player]([AgentCodeId] ASC) WHERE ([AgentCodeId] IS NOT NULL);


GO
CREATE NONCLUSTERED INDEX [IX_Player_BrandId]
    ON [dbo].[Player]([BrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Player_CountryCode]
    ON [dbo].[Player]([CountryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Player_SiteId]
    ON [dbo].[Player]([SiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Player_BrandId_AgentCodeId]
    ON [dbo].[Player]([BrandId] ASC, [AgentCodeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Player_BrandPlayerId]
    ON [dbo].[Player]([BrandPlayerId] ASC);

