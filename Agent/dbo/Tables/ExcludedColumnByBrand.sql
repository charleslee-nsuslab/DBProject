CREATE TABLE [dbo].[ExcludedColumnByBrand] (
    [BrandId]  BIGINT NOT NULL,
    [ColumnId] BIGINT NOT NULL,
    CONSTRAINT [PK_ExcludedColumnByBrand] PRIMARY KEY CLUSTERED ([BrandId] ASC, [ColumnId] ASC)
);

