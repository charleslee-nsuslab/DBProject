CREATE TABLE [dbo].[TrustedBrowserToken] (
    [Id]                    BIGINT         IDENTITY (1, 1) NOT NULL,
    [UserId]                BIGINT         NOT NULL,
    [TrustedToken]          NVARCHAR (128) NULL,
    [TrustedTokenExpiresAt] DATETIME2 (7)  NOT NULL,
    [CreatedAt]             DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_TrustedBrowserToken] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TrustedBrowserToken_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_TrustedBrowserToken_UserId]
    ON [dbo].[TrustedBrowserToken]([UserId] ASC);

