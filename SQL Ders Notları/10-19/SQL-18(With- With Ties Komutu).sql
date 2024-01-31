--With Ties Komutu

SELECT * FROM [Satis Detaylari]

--ilk 9 veriyi çekmek istiyorum.

SELECT top 9 with ties * from [Satis Detaylari] ORDER BY SatisID

---------------------------------------------------------------------------------------------------------


--With Komutu

-- Tekrar kullanılabilir, adlandırılmış sorgu ifadeleri oluşturmanıza ve daha karmaşık sorguları daha okunaklı hale getirmenize olanak tanır.
-- Genellikle ortak tablo ifadelerini (CTE) oluşturmak için kullanılır. CTE'ler, bir sorgu içinde tanımlanan geçici sonuç kümeleridir.

Select * from personeller p inner join satislar s on p.PersonelID = s.PersonelID

With PersonelSatis(id, adi, soyadi, satisid)
as(
Select p.PersonelID, Adi, SoyAdi, SatisID from personeller p inner join satislar s on p.PersonelID = s.PersonelID
)
SELECT * from PersonelSatis ps INNER JOIN [Satis Detaylari] sd ON  ps.satisid = sd.SatisID