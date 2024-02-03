--DDL (Data Definition Language)

-- T-SQL' de veritabanı nesneleri yaratmak, değiştirmek ve silmek için kullanılan komutlardır.

-- CREATE: Yeni bir veritabanı nesnesi yaratmak için kullanılır.
-- ALTER: Mevcut bir veritabanı nesnesini değiştirmek için kullanılır.
-- DROP: Mevcut bir veritabanı nesnesini silmek için kullanılır.

-- CREATE 
--Veritabanı nesneleri yaratmak için kullanılır. (Tablo, database, index, view, stored procedure, function, trigger, vb.)

--Prototip
--CREATE OBJECT_TYPE OBJECT_NAME

--Create ile database yaratma
CREATE DATABASE MyDatabase
--Bu komut ile MyDatabase adında bir veritabanı yaratılır.

CREATE DATABASE OrnekVeritabani
ON(
    NAME = OrnekVeritabani,
    FILENAME = 'C:\Users\habib\Desktop\OrnekVeritabani.mdf',
    SIZE = 10MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 5MB
)
--Name = Veritabanı adı
--Filename = Veritabanının fiziksel dosya yolunu belirtir.
--Size = Veritabanının boyutunu belirtir.
--Maxsize = Veritabanının maksimum boyutunu belirtir.
--Filegrowth = Veritabanının otomatik büyüme miktarını belirtir.

--Create ile log dosyasıyla birlikte database yaratma
--Log ile oluşturmak demek veritabanı işlemlerinin kaydedildiği dosyanın fiziksel yolunu belirtir.

CREATE DATABASE OrnekVeritabani
ON(
    NAME = OrnekVeritabani,
    FILENAME = 'C:\Users\habib\Desktop\OrnekVeritabani.mdf',
    SIZE = 10MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 5MB
)
LOG ON(
    NAME = OrnekVeritabani_Log,
    FILENAME = 'C:\Users\habib\Desktop\OrnekVeritabani_Log.ldf',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB
)
--Log demek veritabanının işlemlerinin kaydedildiği dosyadır. Veritabanı işlemleri log dosyasına kaydedilir.
--Varsayılan olarak veritabanı işlemleri log dosyasına kaydedilirken, veritabanı verileri mdf dosyasına kaydedilir.


--Create ile tablo yaratma
Use OrnekVeritabani
CREATE TABLE Musteri
(
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    DogumTarihi DATE
)
--Tablo yaratma işlemi için CREATE TABLE komutu kullanılır.
--Tablo adı ve sütunlar belirtilir.
--PRIMARY KEY ile sütunun primary key olacağı belirtilir.

--Eğer kolon adlarında boşluk varsa köşeli parantez kullanılmalıdır.
CREATE TABLE Musteri2
(
    [Sirket Adi] NVARCHAR(50),
    [Soyad] NVARCHAR(50),
    [Dogum Tarihi] DATE
)

--Kolona Primary key ve identity özelliği kazandırmak
CREATE TABLE Musteri3
(
    MusteriID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    DogumTarihi DATE
)
--Primary key ile sütunun primary key olacağı belirtilir.
--IDENTITY ile sütunun otomatik artan olduğu belirtilir.