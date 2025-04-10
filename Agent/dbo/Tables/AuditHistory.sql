CREATE TABLE [dbo].[AuditHistory] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [LoggedAt]        DATETIME2 (7)  NOT NULL,
    [ActivityType]    INT            NOT NULL,
    [ActivitySubType] INT            NOT NULL,
    [Message]         NVARCHAR (MAX) NOT NULL,
    [BrandId]         BIGINT         NULL,
    [BrandName]       NVARCHAR (50)  NULL,
    [ActorType]       INT            NOT NULL,
    [ActorId]         BIGINT         NOT NULL,
    [ActorName]       NVARCHAR (256) NOT NULL,
    [SourceType]      INT            NULL,
    [SourceId]        BIGINT         NULL,
    [SourceName]      NVARCHAR (256) NULL,
    [TargetType]      INT            NULL,
    [TargetId]        BIGINT         NULL,
    [TargetName]      NVARCHAR (256) NULL,
    [Request]         NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_AuditHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

