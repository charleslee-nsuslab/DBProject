CREATE TABLE [dbo].[AgentUserBrand] (
    [AgentCodeId] BIGINT NOT NULL,
    [UserId]      BIGINT NOT NULL,
    [BrandId]     BIGINT NOT NULL,
    CONSTRAINT [PK_AgentUserBrand] PRIMARY KEY CLUSTERED ([AgentCodeId] ASC, [UserId] ASC, [BrandId] ASC),
    CONSTRAINT [FK_AgentUserBrand_AgentCodeBrand_AgentCodeId_BrandId] FOREIGN KEY ([AgentCodeId], [BrandId]) REFERENCES [dbo].[AgentCodeBrand] ([AgentCodeId], [BrandId]) ON DELETE CASCADE,
    CONSTRAINT [FK_AgentUserBrand_AgentUser_AgentCodeId_UserId] FOREIGN KEY ([AgentCodeId], [UserId]) REFERENCES [dbo].[AgentUser] ([AgentCodeId], [UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AgentUserBrand_AgentCodeId_BrandId]
    ON [dbo].[AgentUserBrand]([AgentCodeId] ASC, [BrandId] ASC);

