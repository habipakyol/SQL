-- Subquery (İç içe sorgular)

SELECT s.SatisID, s.SatisTarihi from Personeller p INNER join Satislar s on p.PersonelID = s.PersonelID WHERE Adi = 'Nancy'

--SELECT SatisID, SatisTarihi from Satislar WHERE Adi = 'Nancy'
 
SELECT SatisID, SatisTarihi from Satislar WHERE PersonelID = (Select PersonelID from Personeller WHERE Adi = 'Nancy')


SELECT Adi from Personeller WHERE Adi = (Select Adi from Personeller WHERE UnvanEki = 'Dr.')
SELECT Adi from Personeller WHERE Adi = (Select Adi from Personeller WHERE UnvanEki = 'Mr.')
-- Sorgudan alacağımız değer 1 veri olmalıdır.

----------------------------------------------------------------------------------------------------------------------------------

-- Bulk Insert
--Önceden bir fiziksel tablo gerek
BULK INSERT Kisiler
From 'C:\Users\habib\Desktop\Kisiler.txt'
WITH
(
    Fieldterminator = '\t', -- kolonları ayıracak özelliği belirleriz t = tab
    Rowterminator = '\n' -- n = alt satır
) 

