CREATE TABLE [dbo].[Country] (
    [Code]           NVARCHAR (2)   NOT NULL,
    [Code3]          NVARCHAR (3)   NOT NULL,
    [Name]           NVARCHAR (100) NOT NULL,
    [JurisdictionId] BIGINT         NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Code] ASC),
    CONSTRAINT [FK_Country_Jurisdiction_JurisdictionId] FOREIGN KEY ([JurisdictionId]) REFERENCES [dbo].[Jurisdiction] ([Id])
);


GO
ALTER TABLE [dbo].[Country] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = OFF);


GO
CREATE NONCLUSTERED INDEX [IX_Country_JurisdictionId]
    ON [dbo].[Country]([JurisdictionId] ASC);

