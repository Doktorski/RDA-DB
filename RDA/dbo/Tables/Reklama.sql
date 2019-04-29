CREATE TABLE [dbo].[Reklama] (
    [Reklama_ID]      INT           IDENTITY (1, 1) NOT NULL,
    [Odbor_ID]        INT           NULL,
    [Tip_reklame_ID]  INT           NOT NULL,
    [Priv_grana_ID]   INT           NULL,
    [Agencija_ID]     INT           NOT NULL,
    [Cenovnik_ID]     INT           NOT NULL,
    [Naziv]           NVARCHAR (20) NULL,
    [Sifra]           CHAR (6)      NULL,
    [Duzina_trajanja] INT           NULL,
    PRIMARY KEY CLUSTERED ([Reklama_ID] ASC),
    CONSTRAINT [FK_Agencija_Reklama] FOREIGN KEY ([Agencija_ID]) REFERENCES [dbo].[Agencija] ([Agencija_ID]),
    CONSTRAINT [FK_Cenovinik_Reklama] FOREIGN KEY ([Cenovnik_ID]) REFERENCES [dbo].[Cenovnik] ([Cenovnik_ID]),
    CONSTRAINT [FK_Odbor_Reklama] FOREIGN KEY ([Odbor_ID]) REFERENCES [dbo].[Odbor] ([Odbor_ID]),
    CONSTRAINT [FK_Privredna_grana_Reklama] FOREIGN KEY ([Priv_grana_ID]) REFERENCES [dbo].[Privredna_grana] ([Priv_grana_ID]),
    CONSTRAINT [FK_Tip_reklame_Reklama] FOREIGN KEY ([Tip_reklame_ID]) REFERENCES [dbo].[Tip_reklame] ([Tip_reklame_ID])
);

