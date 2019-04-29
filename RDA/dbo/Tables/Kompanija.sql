CREATE TABLE [dbo].[Kompanija] (
    [Kompanija_ID] INT           IDENTITY (1, 1) NOT NULL,
    [Naziv]        NVARCHAR (30) NULL,
    [Sifra]        CHAR (6)      NULL,
    [Sediste]      NVARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Kompanija_ID] ASC)
);

