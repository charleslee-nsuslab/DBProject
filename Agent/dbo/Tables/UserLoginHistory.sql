CREATE TABLE [dbo].[UserLoginHistory] (
    [Id]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [UserId]      BIGINT        NOT NULL,
    [CountryCode] NVARCHAR (2)  NOT NULL,
    [IPAddress]   NVARCHAR (45) NOT NULL,
    [CreatedAt]   DATETIME2 (7) NOT NULL,
    [Status]      INT           NOT NULL,
    CONSTRAINT [PK_UserLoginHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserLoginHistory_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserLoginHistory_UserId]
    ON [dbo].[UserLoginHistory]([UserId] ASC);

