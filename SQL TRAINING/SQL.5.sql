create table konsumen_telepon(
  nama_konsumen varchar,
  no_hp VARCHAR
  )
  create table konsumen_wifi(
    nama_konsumen varchar,
    no_wifi VARCHAR
    )
    
     insert into konsumen_telepon
    VALUES
    ('Adi', '6281111'),
    ('Beni', '6281112'),
    ('Cantika','6281113'),
    ('Denis','6281114'),
    ('Edi','6281116')
       
    select*from konsumen_telepon
    
   insert into konsumen_wifi
    VALUES
    ('Alex', '1381111'),
    ('Beni', '1381112'),
    ('Cantika','1381113'),
    ('Denis','1381114'),
    ('Edward','1381116')
    
    select*from konsumen_wifi
    
    -- INNER JOIN
    select
   		konsumen_telepon.nama_konsumen,
        konsumen_telepon.no_hp,
        konsumen_wifi.no_wifi
    FROM
    konsumen_telepon join konsumen_wifi -- DEFAULT INNER (sama aja dengan inner)
    on konsumen_telepon.nama_konsumen = konsumen_wifi.nama_konsumen
    -- BENI DAN DENIS ADALAH KONSUMEN TELEPON DAN KONSUMEN WIFI
    
    -- LEFT JOIN (mengawetkan informasi yang ada pada tabel sebelah kiri, melengkapi tabel disebelah kanan)
     select
   		konsumen_telepon.nama_konsumen,
        konsumen_telepon.no_hp,
        konsumen_wifi.no_wifi
    FROM
    konsumen_telepon left join konsumen_wifi -- DEFAULT INNER (sama aja dengan inner)
    on konsumen_telepon.nama_konsumen = konsumen_wifi.nama_konsumen
   
   -- RIGHT JOIN (mengawetkn informasi yang ada pada tabel sebelah kanan)
    select
   		konsumen_telepon.nama_konsumen,
        konsumen_wifi.nama_konsumen,
        konsumen_telepon.no_hp,
        konsumen_wifi.no_wifi
    FROM
    konsumen_telepon RIGHT join konsumen_wifi -- DEFAULT INNER (sama aja dengan inner)
    on konsumen_telepon.nama_konsumen = konsumen_wifi.nama_konsumen
   
 -- FULL OUTER JOIN (menggabungkan informasi dari kedua tabel)
   select
        konsumen_telepon.nama_konsumen,
        konsumen_wifi.nama_konsumen,
        COALESCE(konsumen_telepon.nama_konsumen, konsumen_wifi.nama_konsumen) nama_konsumen, -- menggabungkan nama konsumen
        konsumen_telepon.no_hp,
        konsumen_wifi.no_wifi
    FROM
    konsumen_telepon FULL outer join konsumen_wifi -- DEFAULT INNER (sama aja dengan inner)
    on konsumen_telepon.nama_konsumen = konsumen_wifi.nama_konsumen
   
   --coalesce mengembalikan nilai yang tak nul 
   
   
   