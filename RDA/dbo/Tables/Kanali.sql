CREATE TABLE [dbo].[Kanali] (
    [Kanali_ID]  INT           IDENTITY (1, 1) NOT NULL,
    [TV_kuca_ID] INT           NOT NULL,
    [Naziv]      NVARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Kanali_ID] ASC),
    CONSTRAINT [FK_TVkuca_Kanali] FOREIGN KEY ([TV_kuca_ID]) REFERENCES [dbo].[TV_kuca] ([TV_kuca_ID])
);

