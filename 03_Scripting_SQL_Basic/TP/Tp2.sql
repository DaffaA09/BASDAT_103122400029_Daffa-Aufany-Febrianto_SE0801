CREATE TABLE mahasiswa (
    id NUMBER PRIMARY KEY,
    nama VARCHAR2(100),
    tempat_lahir VARCHAR2(50),
    tanggal_lahir DATE,
    nomor_hp VARCHAR2(15),
    email VARCHAR2(100),
    tinggi_badan NUMBER,
    berat_badan NUMBER
);

INSERT INTO mahasiswa VALUES (1,'Gatot','Jakarta',TO_DATE('12-05-2003','DD-MM-YYYY'),'081234567890','gatot@gmail.com',170,65);
INSERT INTO mahasiswa VALUES (2,'Zilong','Bandung',TO_DATE('21-08-2002','DD-MM-YYYY'),'081234567891','zilong@gmail.com',168,60);
INSERT INTO mahasiswa VALUES (3,'moskov','Surabaya',TO_DATE('10-01-2003','DD-MM-YYYY'),'081234567892','moskov@gmail.com',160,50);
INSERT INTO mahasiswa VALUES (4,'Jonson','Medan',TO_DATE('04-03-2002','DD-MM-YYYY'),'081234567893','jonson@gmail.com',172,68);
INSERT INTO mahasiswa VALUES (5,'claude','Padang',TO_DATE('14-11-2003','DD-MM-YYYY'),'081234567894','claude@gmail.com',158,48);
INSERT INTO mahasiswa VALUES (6,'Yuzhong','Semarang',TO_DATE('20-02-2002','DD-MM-YYYY'),'081234567895','yuzhong@gmail.com',175,70);
INSERT INTO mahasiswa VALUES (7,'LapuLapu','Yogyakarta',TO_DATE('08-06-2003','DD-MM-YYYY'),'081234567896','lapu@gmail.com',162,52);
INSERT INTO mahasiswa VALUES (8,'Freya','Bekasi',TO_DATE('18-09-2002','DD-MM-YYYY'),'081234567897','freya@gmail.com',169,64);
INSERT INTO mahasiswa VALUES (9,'Minotour','Bogor',TO_DATE('30-07-2003','DD-MM-YYYY'),'081234567898','mino@gmail.com',157,49);
INSERT INTO mahasiswa VALUES (10,'Miya','Solo',TO_DATE('12-12-2002','DD-MM-YYYY'),'081234567899','miya@gmail.com',173,72);
INSERT INTO mahasiswa VALUES (11,'Layla','Depok',TO_DATE('22-04-2003','DD-MM-YYYY'),'081234567800','layla@gmail.com',159,51);
INSERT INTO mahasiswa VALUES (12,'Harley','Malang',TO_DATE('09-10-2002','DD-MM-YYYY'),'081234567801','harley@gmail.com',174,69);
INSERT INTO mahasiswa VALUES (13,'Fredrin','Bali',TO_DATE('17-01-2003','DD-MM-YYYY'),'081234567802','fredrin@gmail.com',161,53);
INSERT INTO mahasiswa VALUES (14,'Irithel','Makassar',TO_DATE('05-05-2002','DD-MM-YYYY'),'081234567803','irithel@gmail.com',176,74);
INSERT INTO mahasiswa VALUES (15,'Alice','Palembang',TO_DATE('28-08-2003','DD-MM-YYYY'),'081234567804','alice@gmail.com',171,67);

SELECT 
nama,
LOWER(nama) AS huruf_kecil,
UPPER(nama) AS huruf_besar,
INITCAP(nama) AS kapital_awal,
CONCAT(nama,email) AS gabung,
LENGTH(nama) AS panjang_nama,
SUBSTR(nama,1,4) AS potong_nama,
LPAD(nama,15,'*') AS lpad_nama,
RPAD(nama,15,'-') AS rpad_nama,
LTRIM('   '||nama) AS ltrim_nama,
RTRIM(nama||'   ') AS rtrim_nama,
INSTR(email,'@') AS posisi_at,
REPLACE(email,'gmail','yahoo') AS ganti_email
FROM mahasiswa;

SELECT 
nama,
tanggal_lahir,
TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
TO_CHAR(tanggal_lahir,'MONTH') AS bulan_panjang,
TO_CHAR(tanggal_lahir,'DD') AS tanggal,
TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
TO_CHAR(tanggal_lahir,'YYYY') AS tahun,
TO_CHAR(tanggal_lahir,'YY') AS tahun_pendek,
SYSDATE AS waktu_sekarang,
LAST_DAY(tanggal_lahir) AS akhir_bulan,
ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan,
MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan
FROM mahasiswa;

SELECT 
tanggal_lahir,
NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya,
ROUND(tanggal_lahir,'YEAR') AS pembulatan_tahun
FROM mahasiswa;

SELECT
nama,
TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS tanggal_format,
TO_CHAR(tinggi_badan) AS tinggi_char,
TO_NUMBER('123') AS contoh_number,
TO_DATE('01-01-2024','DD-MM-YYYY') AS contoh_date
FROM mahasiswa;

SELECT
nama,
tinggi_badan,
berat_badan,
ABS(berat_badan - tinggi_badan) AS selisih,
MOD(tinggi_badan,5) AS sisa_bagi,
FLOOR(berat_badan/3) AS floor_value,
POWER(tinggi_badan,2) AS pangkat,
ROUND(berat_badan/3,2) AS pembulatan,
CEIL(berat_badan/3) AS ceil_value
FROM mahasiswa;