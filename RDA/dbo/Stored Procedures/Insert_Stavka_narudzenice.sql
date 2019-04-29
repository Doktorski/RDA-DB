CREATE PROCEDURE Insert_Stavka_narudzenice
(
	@Reklama_ID INT,
	@Narudzbenica_ID INT,
	@Kolicina INT
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Stavka_narudzenice (Reklama_ID, Narudzbenica_ID, Kolicina)
	VALUES (@Reklama_ID, @Narudzbenica_ID, @Kolicina)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END