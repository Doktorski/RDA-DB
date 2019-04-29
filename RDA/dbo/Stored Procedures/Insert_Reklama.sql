CREATE PROCEDURE Insert_Reklama
(
	@Odbor_ID INT,
	@Tip_reklame_ID INT,
	@Priv_grana_ID INT,
	@Agencija_ID INT,
	@Cenovnik_ID INT,
	@Naziv NVARCHAR (20),
	@Sifra CHAR (6),
	@Duzina_trajanja INT
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Reklama (Odbor_ID, Tip_reklame_ID, Priv_grana_ID, Agencija_ID, Cenovnik_ID, Naziv, Sifra, Duzina_trajanja)
	VALUES (@Odbor_ID, @Tip_reklame_ID, @Priv_grana_ID, @Agencija_ID, @Cenovnik_ID, @Naziv, @Sifra, @Duzina_trajanja)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END