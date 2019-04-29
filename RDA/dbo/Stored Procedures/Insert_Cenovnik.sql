CREATE PROCEDURE Insert_Cenovnik
(
	@CenaVazenjaOd DATETIME,
	@CenaVazenjaDo DATETIME,
	@Cena INT
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Cenovnik (CenaVazenjaOd, CenaVazenjaDo, Cena)
	VALUES (@CenaVazenjaOd, @CenaVazenjaDo, @Cena)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END