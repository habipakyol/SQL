USE Northwind

--Top komutu : O tablonun ilk kaç kaydı görmek istiyorsak

SELECT TOP 3 * FROM Personeller

--Distinct Komutu
SELECT Distinct [Sehir] from Personeller


--Group By
SELECT * from Urunler
--Normal kolon + aggregate fonksiyonu varsa gruplama yapacağımızı anlarız
SELECT KategoriID, COUNT(*) Sayısı from Urunler GROUP By  KategoriID

SELECT KategoriID,  TedarikciID, COUNT(*) Sayısı from Urunler GROUP By  KategoriID,  TedarikciID

--SATIŞLAR TABLOSUNDA ilgili personal kaç satış yaptığını bulan grup işlemini yapınız
SELECT PersonelID, COUNT(*)  from Satislar GROUP BY PersonelID

--satışlar tablosunda her bir personel ne kadar nakliye ücreti vermiş hesaplayıp gruplayınız
SELECT PersonelID, SUM(NakliyeUcreti) from Satislar GROUP BY PersonelID


-------------------------------------------------------------------------------------------

--Group By işleminde where şartı

SELECT KategoriID, COUNT(*) Sayısı from Urunler WHERE KategoriID > 5 GROUP By  KategoriID 

SELECT PersonelID, COUNT(*)  from Satislar WHERE PersonelID < 4 GROUP BY PersonelID

--Group By işleminde Having şartı

SELECT KategoriID, COUNT(*) Sayısı from Urunler WHERE KategoriID > 5 GROUP By  KategoriID HAVING COUNT(*) > 6