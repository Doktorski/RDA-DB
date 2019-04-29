CREATE PROCEDURE Insert_Prikazuje
(
	@Kanali_ID INT,
	@Reklama_ID INT,
	@Termin_prikaza_Od DATETIME,
	@Termin_prikaza_Do DATETIME,
	@Broj_prikaza INT
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Prikazuje (Kanali_ID, Reklama_ID, Termin_prikaza_Od, Termin_prikaza_Do, Broj_prikaza)
	VALUES (@Kanali_ID, @Reklama_ID, @Termin_prikaza_Od, @Termin_prikaza_Do, @Broj_prikaza)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END