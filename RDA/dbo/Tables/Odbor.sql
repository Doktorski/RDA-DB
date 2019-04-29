CREATE TABLE [dbo].[Odbor] (
    [Odbor_ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Grad_ID]              INT           NOT NULL,
    [Politicka_stranka_ID] INT           NOT NULL,
    [Naziv]                NVARCHAR (30) NULL,
    [Oznaka]               NVARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([Odbor_ID] ASC),
    CONSTRAINT [FK_Grad_Odbor] FOREIGN KEY ([Grad_ID]) REFERENCES [dbo].[Grad] ([Grad_ID]),
    CONSTRAINT [FK_Politicka_stranka_Odbor] FOREIGN KEY ([Politicka_stranka_ID]) REFERENCES [dbo].[Politicka_stranka] ([Politicka_stranka_ID])
);

