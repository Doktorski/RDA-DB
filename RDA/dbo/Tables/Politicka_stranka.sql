CREATE TABLE [dbo].[Politicka_stranka] (
    [Politicka_stranka_ID] INT           IDENTITY (1, 1) NOT NULL,
    [Naziv]                NVARCHAR (30) NULL,
    [Mesto]                NVARCHAR (20) NULL,
    [Opstina]              NVARCHAR (20) NULL,
    [Adresa]               NVARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Politicka_stranka_ID] ASC)
);

