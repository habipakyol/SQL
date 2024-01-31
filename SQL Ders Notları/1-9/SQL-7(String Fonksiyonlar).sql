USE Northwind

--STRING FONKSİYONLAR

--LEFT : Soldan yani baştan belirtilen sayıda karakteri getirir.
Select LEFT(Adi, 2) from Personeller

--RIGHT : Sağdan yani sondan belirtilen sayıda karakteri getirir.
Select RIGHT(Adi, 2) from Personeller

--UPPER : Büyük harfe çevirir
Select UPPER(Adi) from Personeller

--LOWER : Küçük harfe çevirir
Select LOWER(Adi) from Personeller

--SUBSTRING  : Belirtilen indexten itibaren belirtilen sayıda karakter getir. saymaya 0 dan başlanır 
-- Kaynak dize (string)
-- Başlangıç indeksi (başlangıç indeksi dahil)
-- Uzunluk (kaç karakter alınacağı)
SELECT SUBSTRING(Soyadi, 2, 2) from Personeller

--LTRIM : Soldan boşlukları keser
Select '       Habip'
SELECT LTRIM('       Habip')

--RTRIM : Sağdaki boşlukları keser
SELECT 'Habip            '
SELECT RTRIM('Habip            ')

--REVERSE : Tersine çevirir
SELECT REVERSE(Adi) from Personeller

--REPLACE : Belirtilen ifadeyi, belirtilen ifade ile değiştirir.
SELECT REPLACE('Burası İstanbul', 'İstanbul', 'Afyon')


--CHARINDEX: Belirtilen karakterin veri içinde sırasını numarasını verir. saymaya 1 den başlanır
SELECT Adi, CHARINDEX('r', Adi) from Personeller
SELECT MusteriAdi, CHARINDEX(' ', MusteriAdi) from Musteriler

--CHARINDEX ÖRNEK
--Müşteriler tablosunun MusteriAdi kolonundan sadece adlarını çekelim.
SELECT MUSTERİADİ FROM Musteriler
SELECT SUBSTRING(MUSTERİADİ, 1, CHARINDEX(' ', MUSTERİADİ)) FROM Musteriler 

--Müşteriler tablosunun MusteriAdi kolonunda sadece soyadlarını çekelim.
Select SUBSTRING(Musteriadi, CHARINDEX(' ', musteriadi), LEN(MUSTERİADİ) - (CHARINDEX(' ', MUSTERİADİ) - 1)) Soyadı FROM Musteriler

--Müşteri adı ve soyadı ayırma
SELECT SUBSTRING(MusteriAdi, 1, CHARINDEX(' ', MusteriAdi)) Ad, SUBSTRING(MUSTERİADİ, CHARINDEX(' ', MUSTERİADİ)+1, LEN(MUSTERİADİ)- CHARINDEX(' ', MUSTERİADİ)) Soyad from Musteriler

--Müşterinin Adını ve soyadının ilk harfini ayrı kolonlarda gösterme
SELECT 
    SUBSTRING(MUSTERİADİ, 0, CHARINDEX(' ', MUSTERİADİ)) AS İsim,
    SUBSTRING(MUSTERİADİ, CHARINDEX(' ', MUSTERİADİ) + 1, 1) AS SoyadınİlkHarfi
FROM 
    Musteriler

--Müşterinin soyadı uzunluğu 5 ten küçük olanlar
SELECT 
    SUBSTRING(MUSTERİADİ, CHARINDEX(' ', MUSTERİADİ)+1 , LEN(MUSTERİADİ) - CHARINDEX(' ', MUSTERİADİ)) AS Soyadı   
FROM 
    Musteriler
WHERE 
    LEN(MUSTERİADİ) - CHARINDEX(' ', MUSTERİADİ) < 5

--Müşterinin ad ve soyadının uzunluğu 10 olanlar
SELECT MusteriAdi, LEN(SUBSTRING(MusteriAdi, 0, CHARINDEX(' ', MusteriAdi))) MusteriAdUzunluk,
                   LEN(SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi), LEN(MusteriAdi) - CHARINDEX(' ', MusteriAdi))) SoyadUzunluk
                   from Musteriler
                   WHERE LEN(SUBSTRING(MUSTERİADİ, 0, CHARINDEX(' ', MUSTERİADİ))) + LEN(SUBSTRING(MUSTERİADİ, CHARINDEX(' ', MUSTERİADİ) + 1, LEN(MUSTERİADİ) - CHARINDEX(' ', MUSTERİADİ))) = 10
    
                   
--Müşterinin Adının uzunluğu 5 ten büyük olanlar
SELECT SUBSTRING(MusteriAdi, 1, CHARINDEX(' ', MusteriAdi)) from Musteriler WHERE LEN(SUBSTRING(MusteriAdi, 1, CHARINDEX(' ', MusteriAdi))) > 8





