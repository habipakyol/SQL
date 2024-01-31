USE Northwind

-- Like Sorguları

-- % Operatörü (Genel manada önemli değil)

-- İsminin baş harfi j olan personellerin adı ve soyadı yazdıralım.
Select Adi, SoyAdi from Personeller Where Adi Like 'j%'

-- İsminin son harfi y olan personellerin adı ve soyadı yazdıralım.
Select Adi, SoyAdi from Personeller Where Adi Like '%y'

-- İsminin son üç harfi ert olan personeli getirelim.
Select Adi, SoyAdi from Personeller Where Adi Like '%ert' 

-- İsminin ilk harfi r, son harfi t olan personeli getirelim.
Select * from Personeller Where Adi Like 'r%t'

-- İsminde an geçen personelin adını yazdıralım.
Select Adi from Personeller Where Adi Like '%an%'

-- İsminin baş harfi n olan ve içerisinde an geçen personeli getirelim.
Select * from Personeller Where Adi Like 'n%an%'

-- _ Operatörü (Özel manada önemli değil)

-- İsminin ilk harfi a, ikinci harfi fark etmez ve üçüncü harfi d olan personeli getirelim.
Select * from Personeller Where Adi Like 'a_d%'

-- İsminin ilk harfi m, ikinci, üçüncü, dördüncü harfi farketmez ve beşinci harfi a olan personeli getirelim.
Select * from Personeller Where Adi Like 'm___a%'

-- [] Operatörü (ya da)

-- İsminin ilk harfi n ya da m ya da r olan personelleri getirelim.
Select * from Personeller Where Adi Like '[nmr]%'

-- İsminin içerisinde a ya da i geçen personelleri getirelim.
Select * from Personeller Where Adi Like '%[ai]%'

-- [*-*] Operatörü (Alfabetik arasında)

-- İsminin baş harfi a ile k arasındaki harflerden herhangi birini içeren personellerin adını yazdıralım.
Select Adi from Personeller Where Adi Like '[a-k]%'

-- [^*] Operatörü (Değil)

-- İsminin baş harfi a olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '%[^a]'

-- Soyisminin baş harfi d olmayan ve Adının baş harfi n olmayan personelleri getirelim.
Select Adi, SoyAdi from Personeller Where SoyAdi Like '[^d]%' and Adi Like '[^a]%'



Select * from Personeller WHERE Adi LIKE 'M_r%' OR SoyAdi LIKE '%h' OR SoyAdi LIKE '%li%'


Select * from Personeller WHERE SoyAdi LIKE '%li%' AND NOT SoyAdi LIKE '%ng'

