CREATE TABLE [dbo].[ExcludedFieldByRole] (
    [AccountRole] SMALLINT NOT NULL,
    [FieldId]     BIGINT   NOT NULL,
    CONSTRAINT [PK_ExcludedFieldByRole] PRIMARY KEY CLUSTERED ([AccountRole] ASC, [FieldId] ASC)
);

