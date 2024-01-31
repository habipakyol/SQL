USE Northwind
--Inner Join

--Genel mantık
--SELECT * from Tablo1 Inner Join Tablo2 on Tablo1.IliskiliKolon = Tablo2.IliskiliKolon

--Alias tanımlanabilir.
--SELECT * from t1 Inner Join t2 on t1.IliskiliKolon = t2.IliskiliKolon

--İki tabloyu ilişkisel birleştirme

--Hangi personel hangi satışları yapmıştır?
SELECT * FROM Personeller p INNER JOIN Satislar s ON p.PersonelID = s.PersonelID;

--Hangi ürün hangi kategoride?
SELECT u.UrunAdi, k.KategoriAdi FROM Urunler u INNER JOIN Kategoriler k on u.KategoriID = k.KategoriID
-- hangi tablolarda çalışıcam onu bilicem, hangi kolonlar üzerinden işlem yapacağım onu bilicem. son olarak bu iki tabloyu hangi kolon aracılığı ile birleştiricem

--WHERE Komutu

--Beverages kategorisindeki ürünler
SELECT u.UrunAdi  FROM Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

--Beverages kategorisindeki ürünlerin sayısı kaçtır?
SELECT COUNT(u.UrunAdi) [Beverages kategorisindeki ürünlerin eleman sayısı] FROM Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID WHERE k.KategoriAdi = 'Beverages'

--Seafood kategorisindeki ürünlerin listesi
SELECT u.UrunAdi FROM Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID WHERE k.KategoriAdi = 'Seafood'

--Hangi satışı hangi çalışan yapmış?
SELECT S.SatisID, P.Adi + ' ' +P.SoyAdi FROM Satislar s INNER JOIN Personeller P ON S.PersonelID = P.PersonelID

--Faks numarası "null" olmayan tedarikcilerden alınmış ürünler nelerdir?
SELECT u.UrunAdi FROM Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID WHERE t.Faks <> 'Null' -- and T.Bolge <> 'Null'
SELECT * FROM Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID WHERE t.Faks is not null



------------------------------------------------------------------------------------------------------------

--İkiden fazla tabloyu ilişkisel birleştirme
--1997 YILINDAN SONRA Nancy nin satış yaptığı firmaların isimleri (musteriler, satışlar, personeller)
SELECT * FROM Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID INNER JOIN Musteriler m on s.MusteriID = m.MusteriID WHERE p.Adi = 'Nancy' and YEAR(s.SatisTarihi) >= 1997 

--Limited olan tedarikçilerden alınmış seafood kategorisindeki ürünlerimin toplam satış tutarı (kategoriler, tedarikçiler, urunler)
SELECT SUM(u.HedefStokDuzeyi * u.BirimFiyati) FROM Tedarikciler t INNER JOIN Urunler u on t.TedarikciID = u.TedarikciID INNER JOIN Kategoriler k ON k.KategoriID = u.KategoriID WHERE t.SirketAdi Like '%Ltd.%' and k.KategoriAdi = 'Seafood'

--Aynı tabloyu ilişkisel olarak birleştirme

--Personellerin bağlı olarak çalıştığı kişileri listele
SELECT p1.Adi, p2.Adi FROM Personeller p1 INNER JOIN Personeller p2 on p1.BagliCalistigiKisi = p2.PersonelID


------------------------------------------------------------------------------------------------------------

--Inner Joinde Group By

SELECT KategoriID, COUNT(*) FROM Urunler GROUP BY KategoriID

--Hangi personelin(adı ve soyadı ile birlikte), toplam kaç adetlik satış yapmış. Satış adedi 100 den fazla olanlar ve personelin adının baş harfi M olan kayıtlar gelsin.
SELECT p.Adi + ' ' + p.SoyAdi, COUNT(s.SatisID) from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID WHERE p.Adi Like 'm%' GROUP BY p.Adi + ' ' + p.SoyAdi HAVING COUNT(s.SatisID) > 100

--Seafood kategorisindeki ürünleri sayısı?
SELECT k.KategoriAdi, COUNT(u.UrunAdi) adet from Urunler u INNER JOIN kategoriler k on u.KategoriID = k.KategoriID WHERE k.KategoriAdi = 'Seafood'GROUP BY k.KategoriAdi

--Hangi personelin toplam kaç adet satış yaptığını bulun.
SELECT p.adi [Personel Adı], COUNT(s.SatisID) [Satış Sayısı] from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID GROUP by p.adi

--En çok satış yapan personel 
SELECT top 1 p.adi [Personel Adı], COUNT(s.SatisID) [Satış Sayısı] from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID GROUP by p.adi ORDER BY COUNT(s.SatisID) DESC
-- Sonuçları personelin adına göre gruplar ve satış sayısına göre azalan şekilde sıralar.

--Adında "a" harfi olan personellerin satışID si 10500 den büyük olan satışlarının toplam tutarının(miktar* birim fiyatı) ve bu satışların hangi tarihte gerçekleştiğini listele.(personeller,satışlar, satışdetayları)
SELECT SUM(sd.BirimFiyati * sd.miktar) [Satışların Toplam Tutarı], s.SatisTarihi from personeller p inner JOIN satislar s on p.personelID = s.personelID INNER JOIN [Satis Detaylari] sd on s.SatisID = sd.SatisID WHERE Adi Like '%a%' and s.satisID > 10500 GROUP by s.SatisTarihi



