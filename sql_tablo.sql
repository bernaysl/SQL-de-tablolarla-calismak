--tablo olusturma
/*CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);*/

--tabloya veri ekleme
-- id'yi serial olarak tanimladigimizdan dolayı onu girmemize gerek yok
/* INSERT INTO author (first_name, last_name, email, birthday)
VALUES
	('Huseyin Nihal', 'Atsız', 'hnihal@atsiz.com', '1905-01-12'),
	('Ziya', 'Gokalp', 'ziya@gokalp.com', '1876-03-23'),
	('Yusuf', 'Akcura', 'yusuf@akcura.com', '1876-12-2'),
	('Zeki Velidi', 'Togan', 'zvelidi@togan.com', '1890-12-10'),
	('İsmail', 'Gaspıralı', 'ismail@gaspirali.com', '1851-03-20');
	
	*/

-- yeni olustur ve sablon olarak author'u kullan 
 /*CREATE TABLE author2 (LIKE author);*/ 
 
 
-- first_name Ziya olan yazarı author'dan kopyala, author2'ye getir.
-- burada dikkat edersen id=2 olacak cunku veriyi oldugu gibi kopyaladi.
/*INSERT INTO author2 
SELECT * FROM author
WHERE first_name = 'Ziya';*/

--ucuncu tabloyu verileriyle birlikte kopyalayarak olusturalim  
/*CREATE TABLE author3 AS
SELECT * FROM author;*/

/*
DROP TABLE IF EXISTS author3;*/
--sadece drop table ile silebilirdik ancak eger tablo yoksa hata mesaji almamak icin if exsist yapisini kullanabiliriz
