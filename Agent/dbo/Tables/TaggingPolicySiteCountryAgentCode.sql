CREATE TABLE [dbo].[TaggingPolicySiteCountryAgentCode] (
    [Id]                         BIGINT IDENTITY (1, 1) NOT NULL,
    [TaggingPolicySiteCountryId] BIGINT NOT NULL,
    [AgentCodeId]                BIGINT NOT NULL,
    [IsDefault]                  BIT    NOT NULL,
    [IncludeDownline]            BIT    NOT NULL,
    CONSTRAINT [PK_TaggingPolicySiteCountryAgentCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaggingPolicySiteCountryAgentCode_AgentCode_AgentCodeId] FOREIGN KEY ([AgentCodeId]) REFERENCES [dbo].[AgentCode] ([Id]),
    CONSTRAINT [FK_TaggingPolicySiteCountryId_Id] FOREIGN KEY ([TaggingPolicySiteCountryId]) REFERENCES [dbo].[TaggingPolicySiteCountry] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicySiteCountryAgentCode_AgentCodeId]
    ON [dbo].[TaggingPolicySiteCountryAgentCode]([AgentCodeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TaggingPolicySiteCountryAgentCode_TaggingPolicySiteCountryId]
    ON [dbo].[TaggingPolicySiteCountryAgentCode]([TaggingPolicySiteCountryId] ASC);

