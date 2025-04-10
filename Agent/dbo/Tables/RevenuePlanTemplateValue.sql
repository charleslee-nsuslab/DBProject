CREATE TABLE [dbo].[RevenuePlanTemplateValue] (
    [Id]                BIGINT          IDENTITY (1, 1) NOT NULL,
    [RevPlanTemplateId] BIGINT          NOT NULL,
    [GgrType]           SMALLINT        NOT NULL,
    [MinGgr]            DECIMAL (22, 6) NULL,
    [MaxGgr]            DECIMAL (22, 6) NULL,
    [Percentage]        DECIMAL (18, 4) NOT NULL,
    CONSTRAINT [PK_RevenuePlanTemplateValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RevPlanTemplateId_Id] FOREIGN KEY ([RevPlanTemplateId]) REFERENCES [dbo].[RevenuePlanTemplate] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RevenuePlanTemplateValue_RevPlanTemplateId]
    ON [dbo].[RevenuePlanTemplateValue]([RevPlanTemplateId] ASC);

