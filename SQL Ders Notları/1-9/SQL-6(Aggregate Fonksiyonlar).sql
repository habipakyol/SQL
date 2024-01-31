USE Northwind

--  AGGREGATE FONKSİYONLAR

--AVG → Ortalama alır

Select AVG(PersonelID) Ortalama from Personeller

--MAX → En büyük değeri bulur

Select MAX(PersonelID) MaxDeger from Personeller

--MIN → En küçük değeri bulur

Select MIN(PersonelID) MinDeger from Personeller

--COUNT → Toplam sayısını verir(tabloda kaç tane verinin var olduğunu verir)

Select COUNT(*)  from Personeller
Select COUNT(Adres)  from Personeller

--SUM → Toplamını verir

Select SUM(NakliyeUcreti)  from Satislar
