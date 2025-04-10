CREATE TABLE [dbo].[AgentUser] (
    [AgentCodeId] BIGINT NOT NULL,
    [UserId]      BIGINT NOT NULL,
    [IsOwner]     BIT    NOT NULL,
    CONSTRAINT [PK_AgentUser] PRIMARY KEY CLUSTERED ([AgentCodeId] ASC, [UserId] ASC),
    CONSTRAINT [FK_AgentUser_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_AgentUser_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_AgentUser_UserId]
    ON [dbo].[AgentUser]([UserId] ASC);

