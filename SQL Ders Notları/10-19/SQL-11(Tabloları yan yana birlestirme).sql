USE Northwind

--Tabloları yan yana birleştirme

SELECT p.PersonelID, s.MusteriID FROM Personeller p, Satislar s

SELECT * FROM Personeller p, Satislar s WHERE p.PersonelID = s.PersonelID