CREATE PROCEDURE Insert_Narudzbenica
(
	@Zaposleni_ID INT,
	@Kompanija_ID INT,
	@Broj_narudzbenice INT,
	@Datum DATETIME
)
AS
BEGIN
	BEGIN TRANSACTION

	INSERT INTO Narudzbenica (Zaposleni_ID, Kompanija_ID, Broj_narudzbenice, Datum) 
	VALUES (@Zaposleni_ID, @Kompanija_ID, @Broj_narudzbenice, @Datum)

	IF @@ERROR <> 0
		BEGIN
			ROLLBACK;
		END
	ELSE
		BEGIN
			COMMIT;
		END
END