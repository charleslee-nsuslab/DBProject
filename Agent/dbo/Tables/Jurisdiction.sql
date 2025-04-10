CREATE TABLE [dbo].[Jurisdiction] (
    [Id]            BIGINT        NOT NULL,
    [Name]          NVARCHAR (50) NOT NULL,
    [CanMovePlayer] BIT           NOT NULL,
    CONSTRAINT [PK_Jurisdiction] PRIMARY KEY CLUSTERED ([Id] ASC)
);

