-- T-SQL İle veritabanındaki tabloları getirme

SELECT * FROM INFORMATION_SCHEMA.TABLES
-- Bu kod ile veritabanındaki tabloları getirebilirsiniz.

SELECT * from sys.tables
--ya da
SELECT * from sysobjects WHERE xtype='U'
--bu kod ile de tabloları getirebilirsiniz.
--xytpe = 'U' olanlar tablo demektir.


--Bir tablonun primary key olup olmadığını bulma
SELECT OBJECTPROPERTY(OBJECT_ID('Personeller'), 'tablehasprimarykey')
--Bu kod ile Personeller tablosunun primary key olup olmadığını bulabilirsiniz.
--Eğer primary key varsa 1, yoksa 0 döner.
