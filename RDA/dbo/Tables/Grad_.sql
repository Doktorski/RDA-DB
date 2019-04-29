CREATE TABLE [dbo].[Grad] (
    [Grad_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Region_ID] INT           NOT NULL,
    [Naziv]     NVARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Grad_ID] ASC),
    CONSTRAINT [FK_Region_Grad] FOREIGN KEY ([Region_ID]) REFERENCES [dbo].[Region] ([Region_ID])
);

