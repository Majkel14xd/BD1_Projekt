CREATE OR REPLACE VIEW klienci_z_ostrowca AS 
SELECT klienci.imie, klienci.nazwisko, adresy.miasto, adresy.nr_lokalu, adresy.ulica
FROM klienci 
INNER JOIN adresy ON klienci.adresy_id=adresy.adresy_id
WHERE adresy.miasto='Ostrowiec';

CREATE OR REPLACE VIEW glowne_informacje_o_mebli_ilosc_jest_wiecej_niz_5 AS 
SELECT meble.rodzaj,meble.cena,meble.ilosc, magazyny_mebli.nazwa AS magazyn, materialy.nazwa AS nazwa_materialu, materialy.rodzaj AS rodzaj_materialu ,wymiary.szerokosc, wymiary.wysokosc,wymiary.glebokosc 
FROM meble 
INNER JOIN magazyny_mebli ON meble.meble_id=magazyny_mebli.meble_id
INNER JOIN wymiary ON meble.wymiary_id=wymiary.wymiary_id
INNER JOIN materialy ON meble.materialy_id=materialy.materialy_id
WHERE meble.ilosc>5 AND meble.cena>(SELECT AVG(meble.cena) FROM meble);

CREATE OR REPLACE VIEW ilosc_pracownikow_ktora_ma_dodatki_wieksze_niz_srednia AS
SELECT COUNT(pracownicy.pracownicy_id) as ilosc_pracownikow_ktora_ma_dodatki_wieksze_niz_srednia
FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id
WHERE zarobki.dodatki>(SELECT AVG(zarobki.dodatki) FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id);

CREATE OR REPLACE VIEW klienci_ktorzy_kupili_naroznik_z_plastiku_ilosc_dni_do_gwarancji AS
SELECT klienci.imie, klienci.nazwisko,round(sprzedaze.data_gwarancji-sysdate) as ilosc_dni_gwarancji,magazyny_mebli.nazwa as nazwa_magazynu,meble.rodzaj as rodzaj_mebla,meble.cena,meble.ilosc,materialy.rodzaj as rodzaj_materialu
FROM klienci 
INNER JOIN sprzedaze ON klienci.klienci_id=sprzedaze.klienci_id
INNER JOIN sklepy ON sprzedaze.sklepy_id=sklepy.sklepy_id
INNER JOIN magazyny_mebli ON sklepy.magazyny_mebli_id=magazyny_mebli.magazyny_mebli_id
INNER JOIN meble ON magazyny_mebli.meble_id=meble.meble_id
INNER JOIN materialy ON meble.materialy_id=materialy.materialy_id
WHERE meble.rodzaj='Naroznik' AND materialy.rodzaj='Skóra';

CREATE OR REPLACE VIEW sreddnia_wyplat_prrzedstawiciele_z_ostatniego_tygodnia AS
SELECT przedstawiciele.imie, przedstawiciele.nazwisko,zarobki.data_wyplaty,zarobki.kwota
FROM przedstawiciele
INNER JOIN zarobki ON przedstawiciele.zarobki_id=zarobki.zarobki_id
WHERE zarobki.data_wyplaty BETWEEN sysdate-14 AND sysdate AND zarobki.kwota>(SELECT AVG(zarobki.kwota) FROM przedstawiciele
INNER JOIN zarobki ON przedstawiciele.zarobki_id=zarobki.zarobki_id);

CREATE OR REPLACE VIEW ilosc_adresow_klientow_i_pracownikow_oraz_przedstawicieli_gdzie_ta_ilosc_adresow_jest_wieksza_niz_3 AS
SELECT COUNT(adresy_id) AS ilosc_adresow_klientow_i_pracownikow_oraz_przedstawicieli_gdzie_ta_ilosc_adresow_jest_wieksza_niz_3, miasto 
FROM adresy
GROUP BY MIASTO HAVING COUNT(adresy_id)>3;