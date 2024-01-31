USe Northwind
--Select Sorgularında (Where) Şart Yazmak

Select * from Personeller

--Personeller tablosunda şehri London olan verileri listeleyelim
Select * from Personeller Where Sehir = 'London'

--Personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olanları listeleyelim
Select * from Personeller Where BagliCalistigiKisi < 5

--And Operatörü
--Personeller tablosunda şehri London ve ülkesi UK olanları listeyelim.
Select * from Personeller Where Sehir = 'London' and Ulke ='UK'

--Or Operatörü
--Personeller tablosunda ÜnvanEki 'Mr.' olan veya şehri Seattle olan tüm personelleri listeleyim.
Select * from Personeller Where UnvanEki = 'Mr.' or Sehir = 'Seattle'

-- <> eşit değilse
-- = eşitse
-- <= küçük ve eşitse
-- >= büyük ve eşitse

--Örnekler
--Adı Robert soyadı King olan personelin tüm bilgilerini çek
Select * from Personeller Where Adi ='Robert' and SoyAdi = 'King'

--PersonelID'si 5 olan personeli getir.
Select * from Personeller Where PersonelID = 5

--PersonelID'si 5'ten büyük ve eşit olan tüm personelleri getir.
Select * from Personeller Where PersonelID >= 5
 

--Fonksiyon Sonuçlarını Şart olarak kullanmak

Select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

--1992 yılından sonra işe başlayanları listele
Select * from Personeller Where YEAR(IseBaslamaTarihi) > 1992

--Doğum günü, ayın 29 olmayan personelleri listele
Select * from Personeller Where DAY(DogumTarihi) <> 29

--Doğum yılı 1950 ile 1965 yılları arasında olan personelleri getirelim.
Select * from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

--Yaşadığı şehrin London, Tacoma ve Kirkland olan personellerin adını listeleyelim.
Select * from Personeller Where Sehir = 'London' or Sehir = 'Tacoma' or Sehir = 'Kirkland'
Select Adi from Personeller Where Sehir = 'London' or Sehir = 'Tacoma' or Sehir = 'Kirkland'

--Between Komutu
Select * from Personeller Where YEAR(DogumTarihi) Between 1950 and 1965

--In Komutu
Select Adi from Personeller Where Sehir In('London', 'Tacoma', 'Kirkland')

--Doğum ayı 1 ile 7 arasında olanları getir.
--Ev telefonu ve Postakodunu birlikte aynı tabloda yazdırın.
--Adi ve soyadı aynı kolonda olsun adres ikinci bir kolonda yazsın. kolon isimleri mantıklı olsun
--Unvan kolonunda içinde 'Sales Representative' olan verileri getir
--İşe başlama günü aynı olanları getir.(17)