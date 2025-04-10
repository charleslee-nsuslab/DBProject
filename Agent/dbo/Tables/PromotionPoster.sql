CREATE TABLE [dbo].[PromotionPoster] (
    [Id]                 BIGINT          IDENTITY (1, 1) NOT NULL,
    [BrandId]            BIGINT          NOT NULL,
    [Poster]             VARBINARY (MAX) NULL,
    [MimeType]           NVARCHAR (256)  NULL,
    [QrContent]          NVARCHAR (MAX)  NULL,
    [QrPositionX]        INT             NOT NULL,
    [QrPositionY]        INT             NOT NULL,
    [QrWidth]            INT             NOT NULL,
    [QrHeight]           INT             NOT NULL,
    [AllowedAgentCodeId] BIGINT          NULL,
    [IncludeDownline]    BIT             NULL,
    [AllowType]          INT             NOT NULL,
    [CreatedBy]          BIGINT          NOT NULL,
    [CreatedAt]          DATETIME2 (7)   NOT NULL,
    [UpdatedAt]          DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_PromotionPoster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PromotionPoster_AgentCode_AllowedAgentCodeId] FOREIGN KEY ([AllowedAgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PromotionPoster_AllowedAgentCodeId]
    ON [dbo].[PromotionPoster]([AllowedAgentCodeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PromotionPoster_BrandId]
    ON [dbo].[PromotionPoster]([BrandId] ASC);

