CREATE PROCEDURE Insert_Privredna_grana 
(
	@Naziv NVARCHAR (15)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Privredna_grana (Naziv) VALUES (@Naziv)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END