CREATE TABLE [dbo].[inactivePlayerTempJobs] (
    [PlayerId]          BIGINT         NOT NULL,
    [Nickname]          NVARCHAR (64)  NULL,
    [Email]             NVARCHAR (256) NULL,
    [TargetAgentCodeId] BIGINT         NULL,
    [PlayerMoveDate]    DATETIME2 (7)  NOT NULL,
    [IsDone]            BIT            NOT NULL,
    CONSTRAINT [PK_inactivePlayerTempJobs] PRIMARY KEY CLUSTERED ([PlayerId] ASC),
    CONSTRAINT [FK_inactivePlayerTempJobs_AgentCode_TargetAgentCodeId] FOREIGN KEY ([TargetAgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_inactivePlayerTempJobs_Player_PlayerId] FOREIGN KEY ([PlayerId]) REFERENCES [dbo].[Player] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_inactivePlayerTempJobs_PlayerMoveDate_IsDone]
    ON [dbo].[inactivePlayerTempJobs]([PlayerMoveDate] ASC, [IsDone] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_inactivePlayerTempJobs_TargetAgentCodeId]
    ON [dbo].[inactivePlayerTempJobs]([TargetAgentCodeId] ASC);

