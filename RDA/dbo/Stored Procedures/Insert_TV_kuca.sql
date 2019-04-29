CREATE PROCEDURE Insert_TV_kuca
(
	@Struktura_vlasnistva_ID INT,
	@Naziv NVARCHAR (20),
	@Sediste NVARCHAR (30),
	@Adresa NVARCHAR (50),
	@Telefon CHAR (18),
	@Email CHAR (25)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO TV_kuca(Struktura_vlasnistva_ID, Naziv, Sediste, Adresa, Telefon, Email)
	VALUES (@Struktura_vlasnistva_ID, @Naziv, @Sediste, @Adresa, @Telefon, @Email)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END