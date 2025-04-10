CREATE TABLE [dbo].[PlayerMigration] (
    [Id]                          BIGINT           IDENTITY (1, 1) NOT NULL,
    [AgentCodeId]                 BIGINT           NULL,
    [AccountId]                   UNIQUEIDENTIFIER NOT NULL,
    [State]                       INT              NOT NULL,
    [CreatedAt]                   DATETIME2 (7)    NOT NULL,
    [UpdatedAt]                   DATETIME2 (7)    NOT NULL,
    [InitialRequestedAgentCodeId] BIGINT           NULL,
    [PreviousAgentCodeId]         BIGINT           NULL,
    [IsImmediatelyRequested]      BIT              NOT NULL,
    [RequestedAdminId]            BIGINT           NULL,
    [RequestedAgentUserId]        BIGINT           NULL,
    CONSTRAINT [PK_PlayerMigration] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
ALTER TABLE [dbo].[PlayerMigration] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_PlayerMigration_State]
    ON [dbo].[PlayerMigration]([State] ASC);

