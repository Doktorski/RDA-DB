CREATE TABLE [dbo].[Stavka_narudzenice] (
    [Stavka_narudzenice_ID] INT IDENTITY (1, 1) NOT NULL,
    [Reklama_ID]            INT NOT NULL,
    [Narudzbenica_ID]       INT NOT NULL,
    [Kolicina]              INT NULL,
    PRIMARY KEY CLUSTERED ([Stavka_narudzenice_ID] ASC),
    CONSTRAINT [FK_Narudzbenica_Stavke_narudzbenice] FOREIGN KEY ([Narudzbenica_ID]) REFERENCES [dbo].[Narudzbenica] ([Narudzbenica_ID]),
    CONSTRAINT [FK_Reklama_Stavke_narudzbenice] FOREIGN KEY ([Reklama_ID]) REFERENCES [dbo].[Reklama] ([Reklama_ID])
);

