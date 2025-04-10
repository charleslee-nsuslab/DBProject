CREATE TABLE [dbo].[AgentCodeInfoManage] (
    [AgentCodeId]              BIGINT          NOT NULL,
    [BrandId]                  BIGINT          NOT NULL,
    [IsShowNotification]       BIT             NOT NULL,
    [Notification]             NVARCHAR (1000) NULL,
    [UpdatedNotificationCount] INT             NOT NULL,
    [UpdatedAt]                DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_AgentCodeInfoManage] PRIMARY KEY CLUSTERED ([AgentCodeId] ASC, [BrandId] ASC),
    CONSTRAINT [FK_AgentCodeInfoManage_AgentCodeBrand_AgentCodeId_BrandId] FOREIGN KEY ([AgentCodeId], [BrandId]) REFERENCES [dbo].[AgentCodeBrand] ([AgentCodeId], [BrandId]) ON DELETE CASCADE
);

