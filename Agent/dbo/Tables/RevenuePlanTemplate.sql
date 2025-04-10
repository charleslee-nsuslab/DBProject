CREATE TABLE [dbo].[RevenuePlanTemplate] (
    [Id]           BIGINT         NOT NULL,
    [BrandId]      BIGINT         NOT NULL,
    [TemplateName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_RevenuePlanTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RevenuePlanTemplate_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RevenuePlanTemplate_BrandId]
    ON [dbo].[RevenuePlanTemplate]([BrandId] ASC);

