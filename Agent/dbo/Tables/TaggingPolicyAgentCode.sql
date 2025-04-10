CREATE TABLE [dbo].[TaggingPolicyAgentCode] (
    [Id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [AgentCodeId]     BIGINT        NOT NULL,
    [IncludeDownline] BIT           NOT NULL,
    [AllowType]       INT           NOT NULL,
    [CreatedAt]       DATETIME2 (7) NOT NULL,
    [UpdatedAt]       DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_TaggingPolicyAgentCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaggingPolicyAgentCode_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_TaggingPolicyAgentCode_AgentCodeId]
    ON [dbo].[TaggingPolicyAgentCode]([AgentCodeId] ASC);

