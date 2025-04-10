CREATE TABLE [dbo].[ExcludedFilterByBrand] (
    [BrandId]  BIGINT NOT NULL,
    [FilterId] BIGINT NOT NULL,
    CONSTRAINT [PK_ExcludedFilterByBrand] PRIMARY KEY CLUSTERED ([BrandId] ASC, [FilterId] ASC)
);

