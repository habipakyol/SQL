USE Northwind

--Select Komutu (istedi�imiz verileri tablo olarak d�nd�r�r.)

Select 3

Select 'Habip'
print 'Habip'

Select 3, 5, 7

Select 'Habip' Ad, 'Akyol' Soyad, 24 Ya 

Select * from Personeller

Select Adi, Soyadi from Personeller


--Alias Atama (Kolon ismi atama)
Select 3 as De�er --eski

Select 3 De�er

Select 'Habip' Adi, 'Akyol' Soyadi

Select Adi �simler, Soyadi Soyisimler from Personeller

--Bo�luk Karakteri Olan Alias Atama

-- Select 1453 �stanbulun Fethi

Select 1453 [�stanbulun Fethi]

--Bo�luk Karakteri Olan Tabloyu Sorgulama

 --Select * from Satis Detaylari

Select * from [Satis Detaylari] --K��eli parantez verilen de�eri bir b�t�n olarak ifade eder.

--Kolonlar� Birle�tirme
Select Adi, Soyadi from Personeller
Select Adi+' '+ Soyadi [Personel Bilgileri] from Personeller

--Farkl� Tipte Kolonlar� Birle�tirme
Select Adi + ' '+ IseBaslamaTarihi from Personeller

Select Adi + ' '+ CONVERT(nvarchar,IseBaslamaTarihi)  from Personeller

Select Adi + ' '+ CAST(IseBaslamaTarihi as nvarchar)  from Personeller

Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) a from Personeller


--Suppliers da Ulke kolonunu getirin.
--Sirketadi ve telefonu kolon ismi "a" olan kolona birlikte yazd�r.
--Ulke ve posta kodunu "b" olan kolona birlikte yazd�r
--Musteri ad� ve m��teri �nvan�n� ayn� kolonda getir.


