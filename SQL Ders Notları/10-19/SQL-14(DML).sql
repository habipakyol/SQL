USE Northwind
--DML (Data Manipulation Language)

--Select, Insert, Update, Delete

--SELECT
SELECT adi,soyadi FROM Personeller
SELECT * FROM Personeller

--Insert
--Insert [Tablo Adı] (Kolonlar) Values(Değerler)
INSERT Personeller(Adi,Soyadi) VALUES('Habip', 'Akyol')
INSERT Personeller VALUES('Akyol', 'Habip', 'Veri Bilimi ve Matematik', 'VM', '1999.09.14', GETDATE(), 'Istanbul', 'Istanbul', 'İç Anadolu', '34234', 'Türkiye', '05675675467', NULL, NULL, NULL, NULL, NULL)

--Önemli Trikler

--Intro komutu
--INSERT INTO Personeller (Adi, Soyadi) VALUES('dasas', 'asdsad') eskiden kullanılırdı.

--Kolonun kabul ettiği veri tipi ve karakter uzunluğunda kayıt yapılmalıdır.
--Not Null olan kolonlara boş bırakılmayacaklarından dolayı mutlaka değer gönderilmelidir.
--Otomatik artan(identity) kolonlara değer gönderilmez.
--Tablodaki seçilen veya bütün kolonlara değer gönderileceği belirtilip, gönderilmezse hata verir.

--Pratik Kullanım

INSERT  Musteriler (MusteriID, SirketAdi, MusteriAdi, Adres) 
VALUES 
    (1, '', 'Ahmet', 'Afyon'), 
    (2, '', 'Ali', 'İstanbul'),
    (3, '', 'Rafat', 'İzmir');


--Insert komutu ile select sorgusu sonucu gelen verileri farklı tabloya kaydetme
--CREATE TABLE OrnekPersoneller (
--    Adi VARCHAR(50),
--    Soyadi VARCHAR(50)
--);
INSERT OrnekPersoneller SELECT Adi, Soyadi from Personeller

--Dikkat edilmesi gereken nokta, Select sorgusunda dönen kolon sayısı ile Insert işlemi yapılacak kolon sayısı, tipleri birbirine eşit olması gerekmektedir.

--Select sorgusu sonucu gelen verileri farklı bir tablo oluşturarak kaydetme
SELECT Adi, SoyAdi, Ulke into OrnekPersoneller2 from Personeller
--Bu yöntemle primary key ve foreign keyler oluşturulamaz.

--Update

-- Update [Tablo Adı] Set [Kolon Adı] = Değer
UPDATE OrnekPersoneller Set Adi = 'Mehmet'

-- [Update Sorgusuna Where Şartı Yazmak]
UPDATE OrnekPersoneller Set Adi = 'Nancy' Where Adi = 'Mehmet'

--[Update sorgusunda join yapılarını kullanarak birden fazla tabloda güncelleme yapmak]
UPDATE Urunler Set UrunAdi = k.KategoriAdi from Urunler u INNER JOIN Kategoriler k on u.KategoriID = u.KategoriID -- çalıştırma

--[Update sorgusunda Subquery ile güncelleme yapmak]
UPDATE Urunler set UrunAdi = (Select Adi from Personeller Where PersonelID = 3 )  --çalıştırma

--[Update sorgusunda top keywordü ile güncelleme yapmak]
UPDATE Top(30) Urunler set UrunAdi = 'x' --çalıştırma


--Delete
--Delete from [Tablo Adı]
DELETE from Urunler

--[Delete sorgusunda Where şartı yazmak]
DELETE from Urunler Where KategoriID < 3

--Tirik
--Delete sorgusuyla tablo içerisindeki tüm verileri silmemiz identity kolonunu sıfırlamayacaktır. Silme işleminden sonra ilk eklenen veride kalındığı yerden id değeri verilecektir.



