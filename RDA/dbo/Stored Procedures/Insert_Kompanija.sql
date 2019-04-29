CREATE PROCEDURE Insert_Kompanija
(
	@Naziv NVARCHAR (30),
	@Sifra CHAR (6),
	@Sediste NVARCHAR (30)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Kompanija (Naziv, Sifra, Sediste) 
	VALUES (@Naziv, @Sifra, @Sediste)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END