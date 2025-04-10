CREATE TABLE [dbo].[AgentWallet] (
    [Id]          BIGINT           IDENTITY (1, 1) NOT NULL,
    [AgentCodeId] BIGINT           NOT NULL,
    [BrandId]     BIGINT           NOT NULL,
    [Currency]    NVARCHAR (3)     NOT NULL,
    [ReferenceId] NVARCHAR (50)    NOT NULL,
    [WalletId]    UNIQUEIDENTIFIER NOT NULL,
    [UpdatedAt]   DATETIME2 (7)    NOT NULL,
    [RowVersion]  ROWVERSION       NULL,
    CONSTRAINT [PK_AgentWallet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AgentWallet_AgentCodeBrand_AgentCodeId_BrandId] FOREIGN KEY ([AgentCodeId], [BrandId]) REFERENCES [dbo].[AgentCodeBrand] ([AgentCodeId], [BrandId])
);


GO
ALTER TABLE [dbo].[AgentWallet] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_AgentWallet_AgentCodeId]
    ON [dbo].[AgentWallet]([AgentCodeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AgentWallet_AgentCodeId_BrandId]
    ON [dbo].[AgentWallet]([AgentCodeId] ASC, [BrandId] ASC);

