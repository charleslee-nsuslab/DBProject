CREATE TABLE [dbo].[User] (
    [Id]                     BIGINT         IDENTITY (1, 1) NOT NULL,
    [Type]                   SMALLINT       NOT NULL,
    [Name]                   NVARCHAR (256) NOT NULL,
    [Email]                  NVARCHAR (256) NULL,
    [Password]               NVARCHAR (200) NOT NULL,
    [DisplayCurrency]        NVARCHAR (3)   NULL,
    [IsEnabledMfa]           BIT            NOT NULL,
    [IsEmailVerified]        BIT            NOT NULL,
    [IsSuspended]            BIT            NOT NULL,
    [IsDeleted]              BIT            NOT NULL,
    [CreatedAt]              DATETIME2 (7)  NOT NULL,
    [UpdatedAt]              DATETIME2 (7)  NOT NULL,
    [PasswordFirstUpdatedAt] DATETIME2 (7)  NULL,
    [LastLoginAt]            DATETIME2 (7)  NULL,
    [CreatedByUserId]        BIGINT         NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_User_CreatedByUserId] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[User] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_User_CreatedByUserId]
    ON [dbo].[User]([CreatedByUserId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_Email]
    ON [dbo].[User]([Email] ASC) WHERE ([Email] IS NOT NULL);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_Name]
    ON [dbo].[User]([Name] ASC);

