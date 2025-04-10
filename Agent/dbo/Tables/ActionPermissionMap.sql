CREATE TABLE [dbo].[ActionPermissionMap] (
    [ActionId]      BIGINT NOT NULL,
    [PermissionId]  BIGINT NULL,
    [AllowAdmin]    BIT    NOT NULL,
    [AllowOperator] BIT    NOT NULL,
    [AllowStaff]    BIT    NOT NULL,
    CONSTRAINT [PK_ActionPermissionMap] PRIMARY KEY CLUSTERED ([ActionId] ASC),
    CONSTRAINT [FK_ActionPermissionMap_Action_ActionId] FOREIGN KEY ([ActionId]) REFERENCES [dbo].[Action] ([Id]),
    CONSTRAINT [FK_ActionPermissionMap_Permission_PermissionId] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permission] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ActionPermissionMap_PermissionId]
    ON [dbo].[ActionPermissionMap]([PermissionId] ASC);

