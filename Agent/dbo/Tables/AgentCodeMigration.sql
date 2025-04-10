CREATE TABLE [dbo].[AgentCodeMigration] (
    [Id]                BIGINT        IDENTITY (1, 1) NOT NULL,
    [ParentAgentCodeId] BIGINT        NOT NULL,
    [ChildAgentCodeId]  BIGINT        NOT NULL,
    [State]             INT           NOT NULL,
    [CreatedAt]         DATETIME2 (7) NOT NULL,
    [UpdatedAt]         DATETIME2 (7) NOT NULL,
    [AdminAccountId]    BIGINT        NULL,
    [BrandId]           BIGINT        NULL,
    [IsImmediately]     BIT           NOT NULL,
    CONSTRAINT [PK_AgentCodeMigration] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AgentCodeMigration_State]
    ON [dbo].[AgentCodeMigration]([State] ASC);

