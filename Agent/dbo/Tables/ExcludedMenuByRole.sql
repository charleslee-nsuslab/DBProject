CREATE TABLE [dbo].[ExcludedMenuByRole] (
    [AccountRole] SMALLINT NOT NULL,
    [MenuId]      BIGINT   NOT NULL,
    CONSTRAINT [PK_ExcludedMenuByRole] PRIMARY KEY CLUSTERED ([AccountRole] ASC, [MenuId] ASC)
);

