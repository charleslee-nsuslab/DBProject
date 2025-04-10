CREATE TABLE [dbo].[MessageDetail] (
    [Id]        BIGINT        IDENTITY (1, 1) NOT NULL,
    [MessageId] BIGINT        NOT NULL,
    [BrandId]   BIGINT        NOT NULL,
    [Receiver]  BIGINT        NOT NULL,
    [UserId]    BIGINT        NOT NULL,
    [IsRead]    BIT           NOT NULL,
    [CreatedAt] DATETIME2 (7) NOT NULL,
    [UpdatedAt] DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_MessageDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MessageDetail_Message_MessageId] FOREIGN KEY ([MessageId]) REFERENCES [dbo].[Message] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_MessageDetail_MessageId]
    ON [dbo].[MessageDetail]([MessageId] ASC);

