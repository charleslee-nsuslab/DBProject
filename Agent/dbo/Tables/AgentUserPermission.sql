CREATE TABLE [dbo].[AgentUserPermission] (
    [AgentCodeId]  BIGINT NOT NULL,
    [UserId]       BIGINT NOT NULL,
    [PermissionId] BIGINT NOT NULL,
    CONSTRAINT [PK_AgentUserPermission] PRIMARY KEY CLUSTERED ([AgentCodeId] ASC, [UserId] ASC, [PermissionId] ASC),
    CONSTRAINT [FK_AgentUserPermission_AgentUser_AgentCodeId_UserId] FOREIGN KEY ([AgentCodeId], [UserId]) REFERENCES [dbo].[AgentUser] ([AgentCodeId], [UserId]) ON DELETE CASCADE,
    CONSTRAINT [FK_AgentUserPermission_Permission_PermissionId] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permission] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AgentUserPermission_PermissionId]
    ON [dbo].[AgentUserPermission]([PermissionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AgentUserPermission_UserId]
    ON [dbo].[AgentUserPermission]([UserId] ASC);

