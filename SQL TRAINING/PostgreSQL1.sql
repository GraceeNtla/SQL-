-- membuat tabel di sql
-- membuat = create

CREATE TABLE mahasiswa (
-- nama_kolom dan tipe datanya
  nim int, 
  nama varchar,
  jurusan varchar,
  alamat varchar
  )
  
-- menjatuhkan tabel mahasiswa menggunakan drop
  DROP TABLE mahasiswa
-- memasukkan nilai ke dalam tabel mahasiswa, nilai-nilai berikut 
-- ada beberapa metode 
  
--metode dafault 
INSERT INTO mahasiswa VALUES (1,'Grace','Matematika','Salatiga')
-- tidak mengeluarkan output apa apa 
  
  
-- metode lain, mendefine kolom apa saja yang mau kita isi 
INSERT INTO mahasiswa(nim, nama, alamat) VALUES (2,'Via','Jepara')
  
INSERT INTO mahasiswa(nama, alamat, nim) VALUES ('Matthew', 'Magelang', 3)

INSERT INTO mahasiswa(nama, alamat, nim) VALUES ('Budi', 'Jepara', 25097)

INSERT INTO mahasiswa(nama, alamat, nim) VALUES 
	('Benu', 'Tulungagung', 5),
    ('Edi', 'Kudus', 6)

INSERT INTO mahasiswa(nim, nama, alamat) VALUES (10,'Rizki','Jakarta')
INSERT INTO mahasiswa(nim, nama, alamat) VALUES (11,'Rizki','Bandung')
-- integer ada batasan hanya jika mau input lebih menggunakan bigint 
-- suatu literal values/nilai harfiah ditulis dengan diapit tanda kutip 
-- "" digunakan untuk memanggil tabel atau kolom yang mengandung spasi 

-- menampilkan tabel (* shift 8) 
-- simbol bintang * artinya? all column 
  SELECT * from mahasiswa -- untuk tampilin tabel yang dirun 
  
-- hapus dari mahasiswa yang mana datanya memenuhi kondisi ....... > 
 DELETE FROM mahasiswa
 	WHERE nama = 'Budi'
 
  DELETE FROM mahasiswa WHERE nama = 'Rizki' AND alamat = 'Jakarta'
  

delete digunakan untuk menghapus row/baris
DELETE FROM mahasiswa -- menghapus bersih semua data 
-- hapus data harus sesuai ga bisa kalo data asli 'Beni' tapi yang ditulis 'beni' 

SELECT * FROM mahasiswa

-- update (untuk memperbaharui nilai)
-- penulisan tanggal 'YYYY-MM-DD'
UPDATE mahasiswa SET tanggal_masuk = '2015-01-30' WHERE nama = 'Rizki'
 
-- manipulasi kolom (ALTER TABLE) 

--menambahkan kolom 
ALTER TABLE mahasiswa ADD COLUMN tanggal_masuk date 

-- cara ubah nama kolom 
ALTER TABLE mahasiswa RENAME COLUMN tanggal_masuk TO tanggal_registrasi

-- menjatuhkan kolom 
ALTER TABLE mahasiswa DROP COLUMN tanggal_registrasi
 
-- mengubah tipe data kolom (mengubah tipe data ke varchar yang awalnya integer)
ALTER TABLE mahasiswa
ALTER COLUMN nim TYPE varchar USING nim::varchar
  
-- minitask 

CREATE table transaksi(
  order_id varchar,
  Cust_id 
  .... 
  region varchar 
  )
  
  