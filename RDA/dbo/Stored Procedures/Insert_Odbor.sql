CREATE PROCEDURE Insert_Odbor
(
	@Grad_ID INT,
	@Politicka_stranka_ID INT,
	@Naziv NVARCHAR (30),
	@Oznaka NVARCHAR (20)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Odbor (Grad_ID, Politicka_stranka_ID, Naziv, Oznaka)
	VALUES (@Grad_ID, @Politicka_stranka_ID, @Naziv, @Oznaka)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END