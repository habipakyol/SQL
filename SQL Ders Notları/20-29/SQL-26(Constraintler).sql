-- Constraintlere giriş (Kısıtlayıcılar)
-- --Constraintler tabloların içerisindeki verilerin belli kurallara göre olmasını sağlar.

--1.DEFAULT CONSTRAINT
--2.CHECK CONSTRAINT
--3.PRIMARY KEY CONSTRAINT
--4.UNIQUE CONSTRAINT
--5.FOREIGN KEY CONSTRAINT


--DEFAULT CONSTRAINT

--Bir kolonun varsayılan değerini belirlemek için kullanılır.

--prototip
-- Add Constraint [ConstraintAdı] DEFAULT [Değer] FOR [KolonAdı]

CREATE TABLE OrnekTablo
(
    Id int PRIMARY KEY IDENTITY(1,1),
    Kolon1 nvarchar(50),
    Kolon2 INT
)


ALTER TABLE OrnekTablo
ADD CONSTRAINT Kolon1Constraint DEFAULT 'Boş' FOR Kolon1

Alter Table OrnekTablo
ADD CONSTRAINT Kolon2Constraint DEFAULT 0 FOR Kolon2


Insert OrnekTablo(Kolon1, Kolon2) Values('Ali', 20)
Insert OrnekTablo(Kolon1) Values('Veli')
Insert OrnekTablo(Kolon2) Values('32')

Select * from OrnekTablo

Use OrnekVeritabani
--CHECK CONSTRAINT
--Bir kolonun içerisine girilecek verinin belli bir kurala göre olmasını sağlar.

--prototip
-- Add Constraint [ConstraintAdı] CHECK ([Kural]) 

Alter Table OrnekTablo
ADD CONSTRAINT Kolon2Kontrol CHECK ((Kolon2 * 5) % 2 = 0)

--Dikkat: Bu kurala uymayan veri girişlerine izin verilmez.
--Check Constraintlerde önceden girilmiş veriler var ise ve bu veriler kurala uymuyorsa, constraint eklenemez.
--Ancak önceki kayıtları görmezden gelip sadece yeni kayıtların kurala uymasını istiyorsak WITH NOCHECK kullanılır.

--With NoCheck komutu
--Şuana kadar olan verileri kontrol etmeden sadece yeni verilerin kurala uymasını sağlar.
Alter Table OrnekTablo
WITH NOCHECK ADD CONSTRAINT Kolon2Kontrol CHECK ((Kolon2 * 5) % 2 = 0)


--PRIMARY KEY CONSTRAINT
--Bir tablo içerisindeki bir kolonun benzersiz olmasını sağlar.
--O kolona eklenen primary key ile, başka tablolarda foreign key oluştururarak ilişkilendirme yapılabilir.
--Bunun yanı sıra o kolonun taşıdığı verinin tekil olacağını garanti eder. Ayrıca CLUSTERED INDEX oluşturur.

--prototip
-- Add Constraint [ConstraintAdı] PRIMARY KEY ([KolonAdı])

--Dikkat
--Primary Key Constraint eklenirken, kolon Primary key özelliğine sahip olmamalıdır.

Alter Table OrnekTablo
ADD CONSTRAINT IdPrimary PRIMARY KEY (Id)

--UNIQUE CONSTRAINT
--Bir kolonun içerisindeki verilerin tekil olmasını sağlar.
--Aynı veriden birden fazla olamaz.

--prototip
-- Add Constraint [ConstraintAdı] UNIQUE ([KolonAdı])

Alter Table OrnekTablo
ADD CONSTRAINT Kolon1Unique UNIQUE (Kolon2)
--Yani Kolon2 içerisinde aynı veriden birden fazla olamaz.

--FOREIGN KEY CONSTRAINT
--Bir tablonun içerisindeki bir kolonun başka bir tablonun kolonu ile ilişkilendirilmesini sağlar.

--prototip
-- Add Constraint [ConstraintAdı] FOREIGN KEY ([KolonAdı]) REFERENCES [2.TabloAdı]([2.KolonAdı])

CREATE Table Ogrenciler
(
    OgrenciId int PRIMARY KEY IDENTITY(1,1),
    DersId int,
    Adi nvarchar(MAX),
    Soyadi nvarchar(MAX)
)

CREATE Table Dersler
(
    Id int PRIMARY KEY IDENTITY(1,1),
    DersAdi nvarchar(MAX),
)

ALTER Table Ogrenciler
ADD CONSTRAINT ForeignKeyOgrenciDers FOREIGN KEY (DersId) REFERENCES Dersler(Id)

ALTER TABLE Ogrenciler
DROP CONSTRAINT ForeignKeyOgrenciDers3;


--Dikkat
--Foreign Key Constraint eklenirken, referans alınacak kolonun Primary Key olması gerekmektedir.
--Bu durumda, delete ve update işlemlerinde ilişkili kolondaki veriler etkilenmez.

--Davranışı değiştirmek için şu komutlar kullanılır.
--CASCADE: İlişkili kolondaki verileri de siler.
--SET NULL: İlişkili kolondaki verileri null yapar.
--SET DEFAULT: İlişkili kolondaki verileri default değere ayarlar.

--Bu ayarlar verilmediği takdirde "no action" özelliği geçerlidir.
--No action ne demek ? → İlişkili kolondaki verileri etkilemez.


--CASCADE
--Ana tablodaki kayıt silindiğinde ya da güncellendiğinde, ilişkili kolondaki karşılığıda otomatik olarak silinir ya da güncellenir.

Alter Table Ogrenciler
ADD CONSTRAINT ForeignKeyOgrenciDers3  FOREIGN KEY (DersId) REFERENCES Dersler(Id)
On DELETE Cascade
On UPDATE Cascade

--SET NULL
--Ana tablodaki kayıt silindiğinde ya da güncellendiğinde, ilişkili kolondaki karşılığı null yapılır.

ALTER table Ogrenciler
ADD CONSTRAINT ForeignKeyOgrenciDers3  FOREIGN KEY (DersId) REFERENCES Dersler(Id)
On DELETE Set Null
On UPDATE Set Null


--SET DEFAULT
--Ana tablodaki kayıt silindiğinde ya da güncellendiğinde, ilişkili kolondaki karşılığı default değere ayarlanır.

ALTER table Ogrenciler
ADD CONSTRAINT ForeignKeyOgrenciDers3  DEFAULT -1 For DersId

ALTER table Ogrenciler
ADD CONSTRAINT ForeignKeyOgrenciDers4  FOREIGN KEY (DersId) REFERENCES Dersler(Id)
On DELETE Set Default
On UPDATE Set Default
--Yani DersId kolonu default olarak -1 değerini alır.
--Ana tablodaki kayıt silindiğinde ya da güncellendiğinde, ilişkili kolondaki karşılığı -1 yapılır.



