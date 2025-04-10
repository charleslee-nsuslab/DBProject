CREATE TABLE [dbo].[SystemConfiguration] (
    [ConfigurationId] INT             NOT NULL,
    [Value]           NVARCHAR (1024) NOT NULL,
    [RowVersion]      ROWVERSION      NULL,
    CONSTRAINT [PK_SystemConfiguration] PRIMARY KEY CLUSTERED ([ConfigurationId] ASC)
);

