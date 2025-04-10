CREATE TABLE [dbo].[KafkaOutboxMessage] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [RegionType]      NVARCHAR (50)  NOT NULL,
    [Topic]           NVARCHAR (256) NOT NULL,
    [MessageKey]      NVARCHAR (256) NULL,
    [MessageHashCode] INT            NOT NULL,
    [MessageValue]    NVARCHAR (MAX) NOT NULL,
    [CreatedAt]       DATETIME2 (7)  NOT NULL,
    [RowVersion]      ROWVERSION     NULL,
    CONSTRAINT [PK_KafkaOutboxMessage] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_KafkaOutboxMessage_CreatedAt]
    ON [dbo].[KafkaOutboxMessage]([CreatedAt] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_KafkaOutboxMessage_RegionType]
    ON [dbo].[KafkaOutboxMessage]([RegionType] ASC);

