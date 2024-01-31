--Outer Join

--Inner Join'de eşleşen kayıtlar geliyordu. Outer de ise eşleşmeyen kayıtlar

--Left Join

--Join ifadesinin solundaki tablodan tüm kayıtları getirir. Sağındaki tablodan eşleşenleri yan yana eşleşmeyenleri null olarak getirir.

SELECT * FROM Oyuncular o LEFT OUTER JOIN Filmler f on o.FilmID = f.FilmID
SELECT * FROM Filmler f  LEFT OUTER JOIN Oyuncular o on o.FilmID = f.FilmID
--veya
SELECT * FROM Oyuncular o LEFT  JOIN Filmler f on o.FilmID = f.FilmID
SELECT * FROM Filmler f  LEFT  JOIN Oyuncular o on o.FilmID = f.FilmID

--Right Join
--Joinin sağındaki tablonun tamamını getirir. solundakinden eşleşenleri aynı satırda eşleşmeyenleri de null olarak getirir.

SELECT * FROM Oyuncular o Right OUTER JOIN Filmler f on o.FilmID = f.FilmID
SELECT * FROM Filmler f  Right OUTER JOIN Oyuncular o on o.FilmID = f.FilmID
--veya
SELECT * FROM Oyuncular o Right  JOIN Filmler f on o.FilmID = f.FilmID
SELECT * FROM Filmler f  Right  JOIN Oyuncular o on o.FilmID = f.FilmID

--Full Join
--Joinni iki tarafındaki tablolardan eşleşyen eşleşmeyen hepsini getirir.

SELECT * FROM Oyuncular o  Full Outher JOIN Filmler f on o.FilmID = f.FilmID
--veya
SELECT * FROM Oyuncular o  Full JOIN Filmler f on o.FilmID = f.FilmID

--Cross Join
--Genellikle her iki tablodaki tüm kombinasyonları almak için kullanılır.
 Use Northwind

SELECT COUNT(*) FROM Personeller
SELECT COUNT(*) FROM Bolge

SELECT p.adi, b.BolgeID FROM Personeller p CROSS JOIN Bolge b