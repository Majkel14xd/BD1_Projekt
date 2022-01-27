DECLARE
CURSOR kursor1 IS 
SELECT * FROM klienci;
wynik klienci%ROWTYPE;
BEGIN
OPEN kursor1;
LOOP
FETCH kursor1 INTO wynik;
EXIT WHEN kursor1%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('Imie: '||wynik.imie);
DBMS_OUTPUT.PUT_LINE('Nazwisko: '||wynik.nazwisko);
END LOOP;
CLOSE kursor1;
END;


DECLARE
CURSOR kursor2 IS 
SELECT * FROM adresy WHERE adresy.adresy_id = 64;
wynik adresy%ROWTYPE;
BEGIN
OPEN kursor2;
FETCH kursor2 INTO wynik;
UPDATE adresy 
SET adresy.ulica='Osiedle Na Stoku' , adresy.nr_lokalu='40B'
WHERE adresy_id = wynik.adresy_id;
CLOSE kursor2;
END;

SELECT * FROM adresy WHERE adresy.adresy_id = 64;

DECLARE
CURSOR kursor3 IS
SELECT COUNT(pracownicy.pracownicy_id) as ilosc_pracownikow_ktora_ma_dodatki_wieksze_niz_srednia,zarobki.zarobki_id
FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id
WHERE zarobki.dodatki>(SELECT AVG(zarobki.dodatki) FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id)
GROUP BY zarobki.zarobki_id;
maks NUMBER;
BEGIN 
FOR st IN kursor3 LOOP
maks:=st.ilosc_pracownikow_ktora_ma_dodatki_wieksze_niz_srednia;
IF maks>10 THEN
maks:=10;
END IF;
UPDATE zarobki x 
SET x.Kwota =x.Kwota +x.Kwota *(0.01*maks)
WHERE x.zarobki_id =st.zarobki_id ;
END LOOP;
END;

SELECT *
FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id
WHERE zarobki.dodatki>(SELECT AVG(zarobki.dodatki) FROM pracownicy
INNER JOIN zarobki ON pracownicy.zarobki_id=zarobki.zarobki_id)

DECLARE
wyjatek EXCEPTION;
CURSOR kursor4 IS 
SELECT * FROM przedstawiciele WHERE przedstawiciele_id=20;
wynik przedstawiciele%ROWTYPE;
BEGIN
OPEN kursor4;
FETCH kursor4 INTO wynik;
IF wynik.przedstawiciele_id IS NULL THEN
   RAISE wyjatek;
END IF;
EXCEPTION 
   WHEN wyjatek THEN 
      DBMS_OUTPUT.PUT_LINE('Brak danych!'); 
   WHEN others THEN 
     DBMS_OUTPUT.PUT_LINE('Blad inny wyjatek!');
END;


