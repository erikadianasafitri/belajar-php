CREATE DATABASE fakultas;

CREATE TABLE jurusan (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  kode CHAR(4) NOT NULL,
  nama VARCHAR(50) NOT NULL 
);

CREATE TABLE mahasiswa (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_jurusan INTEGER NOT NULL,
  nim CHAR(8) NOT NULL,
  nama VARCHAR(50) NOT NULL,
  jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
  tempat_lahir VARCHAR(50) NOT NULL,
  tanggal_lahir DATE NOT NULL,
  alamat VARCHAR(255) NOT NULL,
  FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- memasukkan data jurusan
insert into jurusan (kode,nama) values ('TRPL','Teknologi Rekayasa Perangkat Lunak');
insert into jurusan (kode,nama) values ('MBP','Manajemen Bisnis Pariwisata');
insert into jurusan (kode,nama) values ('TS','Teknik Sipil');

-- masukin data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'20220001', 'Erika', 'Perempuan', 'Banyuwangi', '2002-02-02', 'Jl. Arwana');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (2,'20220002', 'Shella', 'Perempuan', 'Banyuwangi', '2000-03-03', 'Jl. Bung Tomo');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (3,'20220003', 'Renjun', 'Laki-Laki', 'Banyuwangi', '2002-04-04', 'Jl. Ikan Mas');

-- update data mahasiswa
update mahasiswa set alamat = "Jl. Candi Panggung 89" where id = 1;

-- delete data mahasiswa
delete from mahasiswa where id=3;