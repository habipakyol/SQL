Use OrnekVeritabani

--Alter 
--Create ile yaratılan veritabanı üzerinde değişiklik yapmak için kullanılır.

--Alter ile database güncelleme işlemleri yapılır.

--Prototip
--ALTER [Nesne] [NesneAdı] [Değişiklikler]
--(Yapıya göre değişiklikler)

Alter Database OrnekVeritabani
Modify FILE
(
    Name = 'OrnekVeritabani',
    SIZE = 20
)
--OrnekVeritabani isimli veritabanının boyutunu 20 olarak değiştirir.

--Alter ile olan bir tabloya kolon ekleme
Alter Table Musteri3
Add Adres nvarchar(100)

--Alter ile olan bir tabloya kolon güncelleme
Alter Table Musteri3
Alter Column Adres nvarchar(200)

--Alter ile olan bir tablodaki kolon silme
Alter Table Musteri3
Drop Column Adres

--Alter ile tabloya constraint ekleme
Alter Table Musteri3
Add Constraint PK_Musteri3 DEFAULT 'Boş' FOR Adres
--constraint : kısıtlama demektir. Bu kısıtlamalar tabloların veri bütünlüğünü sağlamak için kullanılır.
--yani tabloların içerisindeki verilerin belli kurallara göre olmasını sağlar.

--Alter ile tablodan constraint silme
Alter Table Musteri3
Drop Constraint PK_Musteri3
 
--SP RENAME ile tablo ismi değiştirme
SP_RENAME 'Musteri3', 'Musteri4'

--SP RENAME ile kolon ismi değiştirme
SP_RENAME 'Musteri4.Adres', 'Adres2', 'COLUMN'

  