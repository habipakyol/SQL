-- Case - When - Else - End

-- Personellerimizin isim ve soyisimleri yanında; UnvanEki 'Mr.' ise 'Erkek, 'Ms.' ise 'Kadın' yazsın.
SELECT Adi, SoyAdi, UnvanEki from Personeller 

SELECT
Adi , SoyAdi,
Case 
When UnvanEki = 'Mrs.' or UnvanEki = 'Ms.' Then 'Kadın' 
When UnvanEki = 'Mr.' Then 'Erkek'
Else UnvanEki 
END
FROM Personeller

--Eğer ürünün birim fiyatı 0 - 50 arası ise 'Çin Malı', 50 - 100 arası ise 'Ucuz', 100 - 200 arası ise 'Normal' ve 200' den fazla ise 'Pahalı' yazsın.

SELECT UrunID, BirimFiyati from Urunler

SELECT
UrunID, BirimFiyati,
CASE
When BirimFiyati BETWEEN 0 and 50 Then 'Çin Malı'
When BirimFiyati BETWEEN 50 and 100 Then 'Ucuz'
When BirimFiyati BETWEEN 100 and 200 Then 'Normal'
When BirimFiyati > 200 Then 'Pahalı'
Else
'Belirsiz'
END
from Urunler



