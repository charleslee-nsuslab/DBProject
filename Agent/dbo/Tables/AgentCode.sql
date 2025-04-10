CREATE TABLE [dbo].[AgentCode] (
    [Id]           BIGINT              IDENTITY (1, 1) NOT NULL,
    [Code]         NVARCHAR (50)       NOT NULL,
    [HierarchyId]  [sys].[hierarchyid] NOT NULL,
    [Level]        INT                 NOT NULL,
    [IsSuspended]  BIT                 NOT NULL,
    [SuspendLevel] INT                 NOT NULL,
    [IsDeleted]    BIT                 NOT NULL,
    [ContactInfo]  NVARCHAR (50)       NULL,
    [CreatedAt]    DATETIME2 (7)       NOT NULL,
    [UpdatedAt]    DATETIME2 (7)       NOT NULL,
    [RowVersion]   ROWVERSION          NULL,
    CONSTRAINT [PK_AgentCode] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
ALTER TABLE [dbo].[AgentCode] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AgentCode_Code]
    ON [dbo].[AgentCode]([Code] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AgentCode_HierarchyId]
    ON [dbo].[AgentCode]([HierarchyId] ASC);

