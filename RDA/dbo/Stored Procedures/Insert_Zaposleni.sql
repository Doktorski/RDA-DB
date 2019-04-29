CREATE PROCEDURE Insert_Zaposleni
(
	@Poz_zaposlenog_ID INT,
	@Agencija_ID INT,
	@Nadredjeni_ID INT,
	@Ime NVARCHAR (20),
	@Prezime NVARCHAR (20),
	@JMBG CHAR (13),
	@Email CHAR (20),
	@Telefon CHAR (18)
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Zaposleni (Poz_zaposlenog_ID, Agencija_ID, Nadredjeni_ID, Ime, Prezime, JMBG, Email, Telefon)
	VALUES (@Poz_zaposlenog_ID, @Agencija_ID, @Nadredjeni_ID, @Ime, @Prezime, @JMBG, @Email, @Telefon)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END