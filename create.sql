CREATE DATABASE sklep;
CREATE TABLE wymiary(
	wymiary_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	szerokosc INT(3) NOT NULL,
	wysokosc INT(3) NOT NULL,
	glebokosc INT(3) NOT NULL
);
CREATE TABLE materialy(
	materialy_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rodzaj VARCHAR(30) NOT NULL,
	nazwa VARCHAR(50) NOT NULL
);
CREATE TABLE meble(
	meble_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rodzaj VARCHAR(30) NOT NULL,
	cena INT(5) NOT NULL,
	wymiary_id INT(5) NOT NULL,
	materialy_id INT(5) NOT NULL,
	ilosc INT(5) NOT NULL,
	CONSTRAINT fk_meble_wymiary
	FOREIGN KEY(wymiary_id)
	REFERENCES wymiary(wymiary_id),
	CONSTRAINT fk_meble_materialy
	FOREIGN KEY(materialy_id)
	REFERENCES materialy(materialy_id)
);
CREATE TABLE zarobki(
	zarobki_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	data_wyplaty DATE NOT NULL,
	dodatki INT(3),
	Kwota INT(5) NOT NULL
);
CREATE TABLE adresy(
	adresy_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	miasto VARCHAR(50) NOT NULL,
	nr_lokalu VARCHAR(5) NOT NULL,
	ulica VARCHAR(30) NOT NULL
);
CREATE TABLE pracownicy(
	pracownicy_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imie VARCHAR(30) NOT NULL,
	nazwisko VARCHAR(30) NOT NULL,
	stanowisko VARCHAR(30) NOT NULL,
	zarobki_id INT(7) NOT NULL,
	adresy_id INT(7) NOT NULL,
	CONSTRAINT fk_pracownicy_zarobki
	FOREIGN KEY(zarobki_id)
	REFERENCES zarobki(zarobki_id),
	CONSTRAINT fk_pracownicy_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id)
);
CREATE TABLE dostawy(
	dostawy_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pracownicy_id INT(7) NOT NULL,
	data_dostawy DATE NOT NULL,
	CONSTRAINT fk_dostawy_pracownicy
	FOREIGN KEY(pracownicy_id)
	REFERENCES pracownicy(pracownicy_id)
);
CREATE TABLE przedstawiciele(
	przedstawiciele_id INT(2) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imie VARCHAR(30) NOT NULL,
	nazwisko VARCHAR(30) NOT NULL,
	region VARCHAR(30) NOT NULL,
	telefon VARCHAR(11) NOT NULL,
	zarobki_id INT(7) NOT NULL,
	CONSTRAINT fk_przedstawiciele_zarobki
	FOREIGN KEY(zarobki_id)
	REFERENCES zarobki(zarobki_id)
);
CREATE TABLE klienci(
	klienci_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imie VARCHAR(30) NOT NULL,
	nazwisko VARCHAR(30) NOT NULL,
	telefon VARCHAR(11) NOT NULL,
	email VARCHAR(30),
	adresy_id INT(7) NOT NULL,
	CONSTRAINT fk_klienci_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id)
);
CREATE TABLE magazyny_mebli(
	magazyny_mebli_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nazwa VARCHAR(30),
	adresy_id INT(7) NOT NULL,
	meble_id INT(5) NOT NULL,
	CONSTRAINT fk_magazyny_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id),
	CONSTRAINT fk_magazyny_meble
	FOREIGN KEY(meble_id)
	REFERENCES meble(meble_id)
);
CREATE TABLE sklepy(
	sklepy_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pracownicy_id INT(7),
	magazyny_mebli_id INT(7) NOT NULL,
	adresy_id INT(7) NOT NULL,
	telefon VARCHAR(11),
	CONSTRAINT fk_sklepy_pracownicy
	FOREIGN KEY(pracownicy_id)
	REFERENCES pracownicy(pracownicy_id),
	CONSTRAINT fk_sklepy_magazyny_mebli
	FOREIGN KEY(magazyny_mebli_id)
	REFERENCES magazyny_mebli(magazyny_mebli_id),
	CONSTRAINT fk_sklepy_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id)
);
CREATE TABLE sprzedaze(
	sprzedarze_id INT(7) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	data_sprzedarz DATE NOT NULL,
	data_gwarancji DATE,
	klienci_id INT(7) NOT NULL,
	przedstawiciele_id INT(2),
	sklepy_id INT(5) NOT NULL,
	dostawy_id INT(7),
	CONSTRAINT fk_sprzedarze_klienci
	FOREIGN KEY(klienci_id)
	REFERENCES klienci(klienci_id),
	CONSTRAINT fk_sprzedarze_przedstawiciele
	FOREIGN KEY(przedstawiciele_id)
	REFERENCES przedstawiciele(przedstawiciele_id),
	CONSTRAINT fk_sprzedarze_sklepy
	FOREIGN KEY(sklepy_id)
	REFERENCES sklepy(sklepy_id),
	CONSTRAINT fk_sprzedarze_dostawy
	FOREIGN KEY(dostawy_id)
	REFERENCES dostawy(dostawy_id)
);