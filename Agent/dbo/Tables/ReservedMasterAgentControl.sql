CREATE TABLE [dbo].[ReservedMasterAgentControl] (
    [Id]                  BIGINT         IDENTITY (1, 1) NOT NULL,
    [ApplyWeek]           INT            NOT NULL,
    [ExecutorAgentUserId] BIGINT         NULL,
    [TargetAgentCodeId]   BIGINT         NULL,
    [Command]             INT            NOT NULL,
    [Parameters]          NVARCHAR (500) NULL,
    [TargetPlayerId]      BIGINT         NULL,
    CONSTRAINT [PK_ReservedMasterAgentControl] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ReservedMasterAgentControl_ApplyWeek]
    ON [dbo].[ReservedMasterAgentControl]([ApplyWeek] ASC);

