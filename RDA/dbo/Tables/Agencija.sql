CREATE TABLE [dbo].[Agencija] (
    [Agencija_ID] INT           IDENTITY (1, 1) NOT NULL,
    [Naziv]       NVARCHAR (15) NULL,
    [Srediste]    NVARCHAR (30) NULL,
    [Adresa]      NVARCHAR (30) NULL,
    [Telefon]     CHAR (18)     NULL,
    [Email]       CHAR (20)     NULL,
    PRIMARY KEY CLUSTERED ([Agencija_ID] ASC)
);

