CREATE TABLE wymiary(
	wymiary_id NUMBER(5) NOT NULL PRIMARY KEY,
	szerokosc NUMBER(3) NOT NULL,
	wysokosc NUMBER(3) NOT NULL,
	glebokosc NUMBER(3) NOT NULL
);
CREATE TABLE materialy(
	materialy_id NUMBER(5) NOT NULL PRIMARY KEY,
	rodzaj VARCHAR2(30) NOT NULL,
	nazwa VARCHAR2(50) NOT NULL
);
CREATE TABLE meble(
	meble_id NUMBER(5) NOT NULL PRIMARY KEY,
	rodzaj VARCHAR2(30) NOT NULL,
	cena NUMBER(5) NOT NULL,
	wymiary_id NUMBER(5) NOT NULL,
	materialy_id NUMBER(5) NOT NULL,
	ilosc NUMBER(5) NOT NULL,
	CONSTRAINT fk_meble_wymiary
	FOREIGN KEY(wymiary_id)
	REFERENCES wymiary(wymiary_id),
	CONSTRAINT fk_meble_materialy
	FOREIGN KEY(materialy_id)
	REFERENCES materialy(materialy_id)
);
CREATE TABLE zarobki(
	zarobki_id NUMBER(7) NOT NULL PRIMARY KEY,
	data_wyplaty DATE NOT NULL,
	dodatki NUMBER(3),
	Kwota NUMBER(5) NOT NULL
);
CREATE TABLE adresy(
	adresy_id NUMBER(7) NOT NULL PRIMARY KEY,
	miasto VARCHAR2(50) NOT NULL,
	nr_lokalu VARCHAR2(5) NOT NULL,
	ulica VARCHAR2(30) NOT NULL
);
CREATE TABLE pracownicy(
	pracownicy_id NUMBER(7) NOT NULL PRIMARY KEY,
	imie VARCHAR2(30) NOT NULL,
	nazwisko VARCHAR2(30) NOT NULL,
	stanowisko VARCHAR2(30) NOT NULL,
	zarobki_id NUMBER(7) NOT NULL,
	adresy_id NUMBER(7) NOT NULL,
	CONSTRAINT fk_pracownicy_zarobki
	FOREIGN KEY(zarobki_id)
	REFERENCES zarobki(zarobki_id),
	CONSTRAINT fk_pracownicy_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id)
);
CREATE TABLE dostawy(
	dostawy_id NUMBER(7) NOT NULL PRIMARY KEY,
	pracownicy_id NUMBER(7) NOT NULL,
	data_dostawy DATE NOT NULL,
	CONSTRAINT fk_dostawy_pracownicy
	FOREIGN KEY(pracownicy_id)
	REFERENCES pracownicy(pracownicy_id)
);
CREATE TABLE przedstawiciele(
	przedstawiciele_id NUMBER(2) NOT NULL PRIMARY KEY,
	imie VARCHAR2(30) NOT NULL,
	nazwisko VARCHAR2(30) NOT NULL,
	region VARCHAR2(30) NOT NULL,
	telefon VARCHAR2(11) NOT NULL,
	zarobki_id NUMBER(7) NOT NULL,
	CONSTRAINT fk_przedstawiciele_zarobki
	FOREIGN KEY(zarobki_id)
	REFERENCES zarobki(zarobki_id)
);
CREATE TABLE klienci(
	klienci_id NUMBER(7) NOT NULL PRIMARY KEY,
	imie VARCHAR2(30) NOT NULL,
	nazwisko VARCHAR2(30) NOT NULL,
	telefon VARCHAR2(11) NOT NULL,
	email VARCHAR2(30),
	adresy_id NUMBER(7) NOT NULL,
	CONSTRAINT fk_klienci_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id)
);
CREATE TABLE magazyny_mebli(
	magazyny_mebli_id NUMBER(5) NOT NULL PRIMARY KEY,
	nazwa VARCHAR2(30),
	adresy_id NUMBER(7) NOT NULL,
	meble_id NUMBER(5) NOT NULL,
	CONSTRAINT fk_magazyny_adresy
	FOREIGN KEY(adresy_id)
	REFERENCES adresy(adresy_id),
	CONSTRAINT fk_magazyny_meble
	FOREIGN KEY(meble_id)
	REFERENCES meble(meble_id)
);
CREATE TABLE sklepy(
	sklepy_id NUMBER(5) NOT NULL PRIMARY KEY,
	pracownicy_id NUMBER(7),
	magazyny_mebli_id NUMBER(7) NOT NULL,
	adresy_id NUMBER(7) NOT NULL,
	telefon VARCHAR2(11),
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
	sprzedarze_id NUMBER(7) NOT NULL PRIMARY KEY,
	data_sprzedarz DATE NOT NULL,
	data_gwarancji DATE,
	klienci_id NUMBER(7) NOT NULL,
	przedstawiciele_id NUMBER(2),
	sklepy_id NUMBER(5) NOT NULL,
	dostawy_id NUMBER(7),
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
