CREATE TABLE [dbo].[Message] (
    [Id]                BIGINT         IDENTITY (1, 1) NOT NULL,
    [Type]              SMALLINT       NOT NULL,
    [BrandId]           BIGINT         NOT NULL,
    [UserId]            BIGINT         NULL,
    [IsIncludeDownline] BIT            NOT NULL,
    [Sender]            BIGINT         NOT NULL,
    [Title]             NVARCHAR (50)  NOT NULL,
    [Content]           NVARCHAR (MAX) NOT NULL,
    [CreatedAt]         DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([Id] ASC)
);

