CREATE TABLE [dbo].[ExcludedFilterByRole] (
    [AccountRole] SMALLINT NOT NULL,
    [FilterId]    BIGINT   NOT NULL,
    CONSTRAINT [PK_ExcludedFilterByRole] PRIMARY KEY CLUSTERED ([AccountRole] ASC, [FilterId] ASC)
);

