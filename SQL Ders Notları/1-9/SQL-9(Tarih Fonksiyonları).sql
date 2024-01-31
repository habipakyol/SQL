use Northwind

--Tarih Fonksiyonları

--GETDATE : Bu günün tarihini verir.
Select GETDATE()

--DATEDAY : Verilen tarihe verildiği kadar gün, ay, yıl ekler.
SELECT DATEADD(DAY,999,GETDATE())
SELECT DATEADD(MONTH,999,GETDATE())
SELECT DATEADD(YEAR,999,GETDATE())

--DATEDIFF : İki tarih arasında günü, ayı veya yılı hesaplar.
SELECT DATEDIFF(DAY, '1999-09-14', GETDATE())
SELECT DATEDIFF(MONTH, '1999-09-14',GETDATE())
SELECT DATEDIFF(YEAR, '1999-09-14',GETDATE())

--DATEPART : Verilen tarihin haftanın, ayın veya yılın kaçıncı günü olduğunu hesaplar.
Select DATEPART(DW, GETDATE()) --DW : HAFTA
SELECT DATEPART(DAY, GETDATE())