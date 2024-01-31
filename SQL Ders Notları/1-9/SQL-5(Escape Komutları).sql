USE Northwind

--Escape(Kaçış) Karakterleri
--Like sorgularında kullandığımız %, _, [] özel ifadeler eğer ki verilimiz içerisinde geçiyorsa sorgulama esnasında hata ile karşılaşabiliriz. Böyle durumlarda bu ifadelerin olmadığını escape karakterleri ile belirleyebiliriz.

--[] Operatörü ile
--Escape komutu ile

SELECT * FROM Personeller Where Adi LIKE '[_]%' 

SELECT * FROM Personeller Where SoyAdi LIKE 'ü_%'

Select * from Personeller Where SoyAdi Like 'ü%%' Escape 'ü'