CREATE TABLE [dbo].[Narudzbenica] (
    [Narudzbenica_ID]   INT      IDENTITY (1, 1) NOT NULL,
    [Zaposleni_ID]      INT      NOT NULL,
    [Kompanija_ID]      INT      NOT NULL,
    [Broj_narudzbenice] INT      NULL,
    [Datum]             DATETIME NULL,
    PRIMARY KEY CLUSTERED ([Narudzbenica_ID] ASC),
    CONSTRAINT [FK_Kompanija_Narudzbenica] FOREIGN KEY ([Kompanija_ID]) REFERENCES [dbo].[Kompanija] ([Kompanija_ID]),
    CONSTRAINT [FK_Zaposleni_Nardzbenica] FOREIGN KEY ([Zaposleni_ID]) REFERENCES [dbo].[Zaposleni] ([Zaposleni_ID])
);

