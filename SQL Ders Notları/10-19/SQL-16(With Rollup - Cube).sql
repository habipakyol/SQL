--With Rollup
--Group By ile gruplanmış veri kümesinde ara toplam alınmasını sağlar.

-- Her bir satışın toplam miktarını, her ürünün toplam satış miktarını ve tüm satışların toplam miktarını gösteriniz.
SELECT SatisID, UrunID, SUM(Miktar) FROM [Satis Detaylari] GROUP BY SatisID, UrunID WITH ROLLUP

SELECT KategoriID, UrunID, SUM(TedarikciID) FROM Urunler GROUP BY KategoriID, UrunID WITH ROLLUP

--Having şartıyla beraber kullanımı

SELECT SatisID, UrunID, SUM(Miktar) FROM [Satis Detaylari] GROUP BY SatisID, UrunID  HAVING SUM(Miktar) > 100
SELECT SatisID, UrunID, SUM(Miktar) FROM [Satis Detaylari] GROUP BY SatisID, UrunID WITH ROLLUP  HAVING SUM(Miktar) > 100

------------------------------------------------------------------------------------------------------------------------------------

--With Cube
--Group By ile gruplanmış veri kümesinde teker teker toplam alınmasını sağlar.

-- Tüm olası gruplamalar için toplam miktarı al
SELECT SatisID, UrunID, SUM(Miktar) 
FROM [Satis Detaylari] 
GROUP BY SatisID, UrunID WITH CUBE

-- Urunler tablosundaki KategoriID ve UrunID'ye göre grupla ve TedarikciID alanının toplamını al
SELECT KategoriID, UrunID, SUM(TedarikciID) 
FROM Urunler 
GROUP BY KategoriID, UrunID WITH CUBE

-- Toplam miktarı 100'den büyük olan grupları göster
SELECT SatisID, UrunID, SUM(Miktar) 
FROM [Satis Detaylari] 
GROUP BY SatisID, UrunID WITH CUBE 
HAVING SUM(Miktar) > 100



