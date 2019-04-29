CREATE PROCEDURE Insert_Agencija
(
	@Naziv NVARCHAR (20),
	@Srediste NVARCHAR (30),
	@Adresa NVARCHAR (50),
	@Telefon CHAR (18),
	@Email CHAR (20)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Agencija(Naziv, Srediste, Adresa, Telefon, Email)
	VALUES (@Naziv, @Srediste, @Adresa, @Telefon, @Email)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END