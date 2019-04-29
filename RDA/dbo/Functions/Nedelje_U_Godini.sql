--Funkcija za broj nedelje u godini
CREATE FUNCTION dbo.Nedelje_U_Godini  (@DATE DATETIME)
RETURNS INT
AS
BEGIN
    RETURN (DATEPART(DY, DATEDIFF(d, 0, @DATE) / 7 * 7 + 3)+6) / 7
END