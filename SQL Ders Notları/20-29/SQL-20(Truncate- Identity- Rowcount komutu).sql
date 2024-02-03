USE Northwind

-- Truncate Komutu

-- Tablodaki tüm verileri siler, ancak tabloyu ve tabloya bağlı tüm tanımlamaları (örneğin, dizinler veya kısıtlamalar) korur. DELETE komutundan farklı olarak, TRUNCATE komutu işlemi geri alınabilir değildir ve tablonun kimliği sıfırlanır (otomatik artan sütunlar için).
-- TRUNCATE komutu, tablonun kimliğini sıfırlar. Bu nedenle, @@ IDENTITY işlevi, tablonun kimliğini sıfırladığı için 1 değerini döndürür.

--Personeler tablosunun kopyasını alalım.

Delete from personellercopy

TRUNCATE TABLE personellercopy

-- @@IDENTITY Komutu 

 --(Kimlik) son eklenen kaydın kimliğini döndürür. 
--Genellikle otomatik artan bir sütun için kullanılır. Genellikle INSERT komutundan sonra kullanılır.
--Kullanımı: SELECT @@IDENTITY

INSERT Kategoriler(KategoriAdi, Tanimi) VALUES('Bilgisayar', 'Bilgisayar ve aksesuarları')

SELECT @@IDENTITY

INSERT Personellercopy(Adi, SoyAdi) VALUES ('Ali', 'Kaya')
SELECT @@IDENTITY


--@@ROWCOUNT Komutu
--@@ROWCOUNT komutu, son sorgudan etkilenen satır sayısını döndürür.
--Kullanımı: SELECT @@ROWCOUNT
--Genelde bir işlemi gerçekleştirmek için kullanılır. Örneğin, bir işlemi gerçekleştirmek için 10 satır gerekiyorsa, ancak 5 satır varsa, işlemi gerçekleştirmek için 5 satır daha ekleyebilirsiniz.

Delete from Personellercopy WHERE soyadi='a'
SELECT @@ROWCOUNT

SELECT * from Personeller
SELECT @@ROWCOUNT

Insert Personellercopy(Adi, SoyAdi) VALUES ('Ahsen', 'Kaya'), ('Ayşe', 'Kaya'), ('Ahmet', 'Kaya')
SELECT @@ROWCOUNT
















