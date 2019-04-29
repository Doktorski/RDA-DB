CREATE PROCEDURE Insert_Grad
(
	@Region_ID INT,
	@Naziv NVARCHAR (30)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Grad (Region_ID, Naziv)
	VALUES (@Region_ID, @Naziv)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END