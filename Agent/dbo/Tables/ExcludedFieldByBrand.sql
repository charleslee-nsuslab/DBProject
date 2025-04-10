CREATE TABLE [dbo].[ExcludedFieldByBrand] (
    [BrandId] BIGINT NOT NULL,
    [FieldId] BIGINT NOT NULL,
    CONSTRAINT [PK_ExcludedFieldByBrand] PRIMARY KEY CLUSTERED ([BrandId] ASC, [FieldId] ASC)
);

