-- run ini dulu
ALTER TABLE orders ALTER COLUMN order_date TYPE date using order_date :: date 

-- lalu run ini 
ALTER TABLE orders ALTER COLUMN ship_date TYPE date using ship_date :: date 

-- menampilkan data
SELECT * FROM orders

-- nama tabel diapit oleh backtick `bukan kutip`
select * from `tokopaedi.orders`
-- memilih kolom
-- *artinya everything/all
-- select * from `tokopaedi.orders`

select
*
from
`tokopaedi.orders`
select
order_id,
order_date
from
`tokopaedi.orders`

--WHERE
select
*
from
`tokopaedi.orders`
where 
customer_name = 'Natalie Webber'

-- =, !=, <, <=, >, >=
select*from `tokopaedi.orders` where profit>0
--penjualannya diatas 500
select*from `tokopaedi.orders` where sales>100

--AND, OR, NOT
-- akan bernilai benar jika proses yang digabungkan keduanya bernilai benar
-- akan bernilai benar jika premis yang digabungkan keduanya bernilai benar

-- tolong ke warung beliin teh sisri ATAU frutang
-- SISRI ADA, FRUTANG ADA -> BELI                   T OR T -> T
-- SISRI TAKDEU, FRUTANG ADEU -> BELI               F OR T -> T
-- SISRI ADEU, FRUTANG TAKDEU -> BELI               T OR F -> T
-- SISRI TAKDEU, FRUTANG TAKDEU -> TIDAK BELI       F OR F -> F

-- KESIMPULANNYA? BAKAL BENAR JIKA SALAH SATU KONDISI BERNILAI BENAR

-- LOGIKA AND
-- SYARAT BANTUAN TUNAI : 'PENGHASILAN DIBAWAH 500RB PER BULAN' DAN 'MEMILIKI TANGGUNGAN'

-- ANAK SD: penghasilan 100rb DAN tidak punya tanggungan ->     T DAN F -> F
-- Ujang A/Teteh T : Gaji UMR DAN masih lajang ->               F DAN F -> F
-- Bapak A : penghasilan 10jt DAN anaknya 3 ->                  F DAN T -> F
-- Kakek K : penghasilan 300rb dan tanggungan istri + cucu      T DAN T -> T

-- kesimpulan? akan bernilai true jika semua kondisi terpenuhi

-- NOT TRUE -> FALSE
-- NOT FALSE -> TRUE

-- transaksi menguntungkan di daerah kota los angeles

select
  *
from
  `tokopaedi.orders`
  where 
  profit > 0 and city = 'Los Angeles'

  -- transaksi yang terjadi di kota los angeles setelah tanggal 1 januari 2016
select 
  *
from
  `tokopaedi.orders`
where
  profit > 0 and order_date >= '2016-01-01'

-- YYYY-MM--DD

-- query transaksi yang berasal dari kota Los Angeles DAN Waterloo

select
  *
from
  `tokopaedi.orders`
where
  city = 'Los Angeles' or city = 'Waterloo'

-- query transaksi yang berasal dari ketiga kota tersebut tapi yang menguntungkan saja (profit > 0)

select
  *
from
  `tokopaedi.orders`
where
  (city = 'Los Angeles' or city = 'Waterloo' or city = 'Dubuque')
  and profit > 0


-- 
select
  *
from
  `tokopaedi.orders`
where
  city in ('Los Angeles', 'Waterloo', 'Dubuque')
  and profit > 0


