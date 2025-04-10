CREATE TABLE [dbo].[ConnectedPlayerHistory] (
    [Id]                BIGINT        IDENTITY (1, 1) NOT NULL,
    [AgentCodeId]       BIGINT        NOT NULL,
    [BrandId]           BIGINT        NOT NULL,
    [ConnectedPlayerId] BIGINT        NULL,
    [ConnectedByUserId] BIGINT        NOT NULL,
    [ConnectedAt]       DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_ConnectedPlayerHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

