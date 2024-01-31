USE Northwind

--Union | Union All


-- Union
-- Birden fazla select sorgusunu tek sefeerde alt alta göstermemizi sağlar.

SELECT Adi, soyadi from Personeller UNION SELECT MusteriAdi, MusteriUnvani  from Musteriler
SELECT Adi, soyadi from Personeller UNION SELECT MusteriAdi, MusteriUnvani  from Musteriler Union SELECT SevkAdi, SevkAdresi from Satislar

--Joinler yan yana, union alt alta tablolar birleştirir. Joinlerde belirli(ilişkisel) bir kolon üzerinden birleştirme yapılırken, union'da böyle bir durum söz konusu değildir.

--Trikler
-- Union sorgusunun sonucunda oluşan tablonun kolon isimleri, üstteki sorgunun kolon isimlerinden oluşturulur.
-- Üstteki sorgudan kaç kolon çekilmişse alttaki sorgudan da o kadar çekilmek zorundadır.
-- Üstteki sorgudan çekilen kolonların tipleriyle, alttaki sorgudan çekilen kolonların tipleri uyumlu olmalıdır.
-- Tekrarlı kayıtları getirmez. 

--Unionda kullanılan tablolara kolon eklenebilir. Yukarıdaki kurallar çerçevesinde aşağıyada yukarıyada aynı sayıda kolonların eklenmesi gerekmektedir.

SELECT Adi, Soyadi, 'Personel' from Personeller
UNION
SELECT MusteriAdi, MusteriUnvani, 'Müşteri' from Musteriler


------------------------------------------------------------------------------------------------------------------------------------
-- Union All
--Union tekrarlı kayıtları getirmez. Tekrarlı kayıtları getirmek için union all kullanılır.
select Adi, SoyAdi from Personeller
UNION ALL
select Adi, SoyAdi from Personeller