CREATE PROCEDURE Insert_Pozicija_zaposlenog
(
	@Pozicija NVARCHAR (30)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Pozicija_zaposlenog (Pozicija) VALUES (@Pozicija)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END