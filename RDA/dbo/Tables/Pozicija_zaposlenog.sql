CREATE TABLE [dbo].[Pozicija_zaposlenog] (
    [Poz_zaposlenog_ID] INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Pozicija]          NVARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Poz_zaposlenog_ID] ASC)
);

