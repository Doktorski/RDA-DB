CREATE PROCEDURE Insert_Politicka_stranka
(
	@Naziv NVARCHAR (30),
	@Mesto NVARCHAR (20),
	@Opstina NVARCHAR (20),
	@Adresa NVARCHAR (30)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Politicka_stranka(Naziv, Mesto, Opstina, Adresa)
	VALUES (@Naziv, @Mesto, @Opstina, @Adresa)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END