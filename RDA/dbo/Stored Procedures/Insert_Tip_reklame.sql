CREATE PROCEDURE Insert_Tip_reklame
(
	@Naziv NVARCHAR (15)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Tip_reklame (Naziv) VALUES (@Naziv)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END