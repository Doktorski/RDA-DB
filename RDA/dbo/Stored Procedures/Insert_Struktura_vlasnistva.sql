CREATE PROCEDURE Insert_Struktura_vlasnistva
(
	@Opis_strukture_vlasnistva NVARCHAR (15)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Struktura_vlasnistva (Opis_strukture_vlasnistva)
	VALUES (@Opis_strukture_vlasnistva)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END