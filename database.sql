CREATE DATABASE universite_db;

USE universite_db;

CREATE TABLE bolum (
    bolum_id INT PRIMARY KEY AUTO_INCREMENT,
    bolum_adi VARCHAR(100) NOT NULL
);

CREATE TABLE ogrenci (
    ogrenci_id INT PRIMARY KEY AUTO_INCREMENT,
    ogrenci_no VARCHAR(20) NOT NULL UNIQUE,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    bolum_id INT NOT NULL,
    FOREIGN KEY (bolum_id) REFERENCES bolum(bolum_id)
);

CREATE TABLE ders (
    ders_id INT PRIMARY KEY AUTO_INCREMENT,
    ders_kodu VARCHAR(20) NOT NULL UNIQUE,
    ders_adi VARCHAR(100) NOT NULL,
    kredi INT NOT NULL,
    bolum_id INT NOT NULL,
    FOREIGN KEY (bolum_id) REFERENCES bolum(bolum_id)
);

CREATE TABLE ogrenci_ders (
    ogrenci_id INT NOT NULL,
    ders_id INT NOT NULL,
    PRIMARY KEY (ogrenci_id, ders_id),
    FOREIGN KEY (ogrenci_id) REFERENCES ogrenci(ogrenci_id),
    FOREIGN KEY (ders_id) REFERENCES ders(ders_id)
);
