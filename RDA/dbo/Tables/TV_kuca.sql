CREATE TABLE [dbo].[TV_kuca] (
    [TV_kuca_ID]              INT           IDENTITY (1, 1) NOT NULL,
    [Struktura_vlasnistva_ID] INT           NOT NULL,
    [Naziv]                   NVARCHAR (20) NULL,
    [Sediste]                 NVARCHAR (30) NULL,
    [Adresa]                  NVARCHAR (50) NULL,
    [Telefon]                 CHAR (18)     NULL,
    [Email]                   CHAR (25)     NULL,
    PRIMARY KEY CLUSTERED ([TV_kuca_ID] ASC),
    CONSTRAINT [FK_Str_Vlasnistva_TV_kuca] FOREIGN KEY ([Struktura_vlasnistva_ID]) REFERENCES [dbo].[Struktura_vlasnistva] ([Struktura_vlasnistva_ID])
);

