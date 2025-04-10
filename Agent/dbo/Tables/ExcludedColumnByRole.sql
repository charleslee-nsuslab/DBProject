CREATE TABLE [dbo].[ExcludedColumnByRole] (
    [AccountRole] SMALLINT NOT NULL,
    [ColumnId]    BIGINT   NOT NULL,
    CONSTRAINT [PK_ExcludedColumnByRole] PRIMARY KEY CLUSTERED ([AccountRole] ASC, [ColumnId] ASC)
);

