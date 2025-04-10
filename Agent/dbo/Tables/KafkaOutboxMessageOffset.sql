CREATE TABLE [dbo].[KafkaOutboxMessageOffset] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [Offset]     BIGINT        NOT NULL,
    [CreatedAt]  DATETIME2 (7) NOT NULL,
    [RowVersion] ROWVERSION    NULL,
    CONSTRAINT [PK_KafkaOutboxMessageOffset] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_KafkaOutboxMessageOffset_CreatedAt]
    ON [dbo].[KafkaOutboxMessageOffset]([CreatedAt] ASC);

