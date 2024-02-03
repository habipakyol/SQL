-- Identity kolonuna müdahele etme

DBCC CHECKIDENT ('[dbo].[Personellercopy]', RESEED, 7)
--Bu kodun anlamı : Kategoriler tablosunun identity kolonuna müdahele et ve 7 dan başlat.
--O tablodaki identity değerlerinden büyük bir değer girilmesi gerekir.


--Null kontrol mekanizması

--Case when then else end yapısı ile kontrol
SELECT MusteriAdi, Bolge from Musteriler

SELECT MusteriAdi, Bolge,
CASE
    WHEN Bolge IS NULL THEN 'Bölge bilgisi girilmemiş'
    ELSE Bolge
END as Bolge2 From Musteriler

--Coalesce ile kontrol
--Coalesce : İlk değer null ise ikinci değeri döndürür.
SELECT MusteriAdi, Bolge, COALESCE(Bolge, 'Bölge bilgisi girilmemiş') AS Bolge2 from Musteriler

--ISNULL ile kontrol
--ISNULL : İlk değer null ise ikinci değeri döndürür.
SELECT MusteriAdi, Bolge, ISNULL(Bolge, 'Bölge bilgisi girilmemiş') AS Bolge2 from Musteriler

--Nullif ile kontrol
--Nullif : İki değer birbirine eşitse null döndürür.
SELECT nullif(1,1) --null döndürür
SELECT nullif(1,2) --1 döndürür


SELECT hedefstokduzeyi from Urunler
SELECT AVG(hedefstokduzeyi) from Urunler

--Hedef stok düzeyi 0 olmayan ürünlerin ortalamasını bulunuz.
SELECT AVG(hedefstokduzeyi) from Urunler where hedefstokduzeyi <> 0

--Bu kodun anlamı nullif ile hedefstokduzeyi 0 olanları null yap. AVG ile ortalamasını al.
SELECT AVG(Nullif(hedefstokduzeyi, 0)) from Urunler




