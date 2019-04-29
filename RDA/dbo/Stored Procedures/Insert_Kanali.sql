CREATE PROCEDURE Insert_Kanali
(
	@TV_kuca_ID INT,
	@Naziv NVARCHAR (15)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Kanali (TV_kuca_ID, Naziv)
	VALUES (@TV_kuca_ID, @Naziv)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END