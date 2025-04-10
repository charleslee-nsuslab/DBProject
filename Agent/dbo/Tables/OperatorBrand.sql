CREATE TABLE [dbo].[OperatorBrand] (
    [UserId]  BIGINT NOT NULL,
    [BrandId] BIGINT NOT NULL,
    CONSTRAINT [PK_OperatorBrand] PRIMARY KEY CLUSTERED ([UserId] ASC, [BrandId] ASC),
    CONSTRAINT [FK_OperatorBrand_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]),
    CONSTRAINT [FK_OperatorBrand_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_OperatorBrand_BrandId]
    ON [dbo].[OperatorBrand]([BrandId] ASC);

