CREATE TABLE [dbo].[BrandMenu] (
    [BrandId] BIGINT NOT NULL,
    [MenuId]  BIGINT NOT NULL,
    CONSTRAINT [PK_BrandMenu] PRIMARY KEY CLUSTERED ([BrandId] ASC, [MenuId] ASC),
    CONSTRAINT [FK_BrandMenu_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_BrandMenu_Menu_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [dbo].[Menu] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_BrandMenu_MenuId]
    ON [dbo].[BrandMenu]([MenuId] ASC);

