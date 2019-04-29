CREATE TABLE [dbo].[Zaposleni] (
    [Zaposleni_ID]      INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Poz_zaposlenog_ID] INT           NOT NULL,
    [Agencija_ID]       INT           NOT NULL,
    [Nadredjeni_ID]     INT           NULL,
    [Ime]               NVARCHAR (20) NULL,
    [Prezime]           NVARCHAR (20) NULL,
    [JMBG]              CHAR (13)     NULL,
    [Email]             CHAR (20)     NULL,
    [Telefon]           CHAR (18)     NULL,
    PRIMARY KEY CLUSTERED ([Zaposleni_ID] ASC),
    CONSTRAINT [FK_Agencija_Zaposleni] FOREIGN KEY ([Agencija_ID]) REFERENCES [dbo].[Agencija] ([Agencija_ID]),
    CONSTRAINT [FK_Nardredjeni_Zaposleni] FOREIGN KEY ([Nadredjeni_ID]) REFERENCES [dbo].[Zaposleni] ([Zaposleni_ID]),
    CONSTRAINT [FK_Poz_zaposlenog_Zaposleni] FOREIGN KEY ([Poz_zaposlenog_ID]) REFERENCES [dbo].[Pozicija_zaposlenog] ([Poz_zaposlenog_ID])
);

