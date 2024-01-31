USE Northwind

--Select Komutu (istediðimiz verileri tablo olarak döndürür.)

Select 3

Select 'Habip'
print 'Habip'

Select 3, 5, 7

Select 'Habip' Ad, 'Akyol' Soyad, 24 Ya 

Select * from Personeller

Select Adi, Soyadi from Personeller


--Alias Atama (Kolon ismi atama)
Select 3 as Deðer --eski

Select 3 Deðer

Select 'Habip' Adi, 'Akyol' Soyadi

Select Adi Ýsimler, Soyadi Soyisimler from Personeller

--Boþluk Karakteri Olan Alias Atama

-- Select 1453 Ýstanbulun Fethi

Select 1453 [Ýstanbulun Fethi]

--Boþluk Karakteri Olan Tabloyu Sorgulama

 --Select * from Satis Detaylari

Select * from [Satis Detaylari] --Köþeli parantez verilen deðeri bir bütün olarak ifade eder.

--Kolonlarý Birleþtirme
Select Adi, Soyadi from Personeller
Select Adi+' '+ Soyadi [Personel Bilgileri] from Personeller

--Farklý Tipte Kolonlarý Birleþtirme
Select Adi + ' '+ IseBaslamaTarihi from Personeller

Select Adi + ' '+ CONVERT(nvarchar,IseBaslamaTarihi)  from Personeller

Select Adi + ' '+ CAST(IseBaslamaTarihi as nvarchar)  from Personeller

Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) a from Personeller


--Suppliers da Ulke kolonunu getirin.
--Sirketadi ve telefonu kolon ismi "a" olan kolona birlikte yazdýr.
--Ulke ve posta kodunu "b" olan kolona birlikte yazdýr
--Musteri adý ve müþteri ünvanýný ayný kolonda getir.


