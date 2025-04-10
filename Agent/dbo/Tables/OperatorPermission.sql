CREATE TABLE [dbo].[OperatorPermission] (
    [UserId]         BIGINT   NOT NULL,
    [PermissionType] SMALLINT NOT NULL,
    CONSTRAINT [PK_OperatorPermission] PRIMARY KEY CLUSTERED ([UserId] ASC, [PermissionType] ASC),
    CONSTRAINT [FK_OperatorPermission_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id]) ON DELETE CASCADE
);

