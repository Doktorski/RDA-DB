CREATE TABLE [dbo].[Cenovnik] (
    [Cenovnik_ID]   INT      IDENTITY (1, 1) NOT NULL,
    [CenaVazenjaOd] DATETIME NULL,
    [CenaVazenjaDo] DATETIME NULL,
    [Cena]          INT      NULL,
    PRIMARY KEY CLUSTERED ([Cenovnik_ID] ASC)
);

