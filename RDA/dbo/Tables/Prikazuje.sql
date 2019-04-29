CREATE TABLE [dbo].[Prikazuje] (
    [Prikazuje_ID]      INT      IDENTITY (1, 1) NOT NULL,
    [Kanali_ID]         INT      NOT NULL,
    [Reklama_ID]        INT      NOT NULL,
    [Termin_prikaza_Od] DATETIME NULL,
    [Termin_prikaza_Do] DATETIME NULL,
    [Broj_prikaza]      INT      NULL,
    PRIMARY KEY CLUSTERED ([Prikazuje_ID] ASC),
    CONSTRAINT [FK_Kanali_Prikazuje] FOREIGN KEY ([Kanali_ID]) REFERENCES [dbo].[Kanali] ([Kanali_ID]),
    CONSTRAINT [FK_Reklama_Prikazuje] FOREIGN KEY ([Reklama_ID]) REFERENCES [dbo].[Reklama] ([Reklama_ID])
);

