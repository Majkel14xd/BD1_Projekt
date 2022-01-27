CREATE SEQUENCE logi_seq ORDER;
CREATE OR REPLACE PROCEDURE pwyzwalacz1(logi IN VARCHAR2)
AS
BEGIN
EXECUTE IMMEDIATE logi;
END;
/

EXEC pwyzwalacz1('CREATE TABLE tabela_logi(id_logu NUMBER(6) PRIMARY KEY,type NUMBER(1),data date,materialy_id NUMBER,rodzaj  VARCHAR(200),nazwa VARCHAR(200))');


CREATE OR REPLACE TRIGGER wyzwalacz1 
AFTER INSERT OR UPDATE OR DELETE ON materialy
FOR EACH ROW
BEGIN
CASE
WHEN INSERTING THEN
INSERT INTO tabela_logi(id_logu, type, data,materialy_id,rodzaj,nazwa )
VALUES (logi_seq.nextval, 0, SYSDATE, :NEW.materialy_id,:NEW.rodzaj, :NEW.nazwa); 
WHEN UPDATING THEN
INSERT INTO tabela_logi(id_logu, type, data,materialy_id,rodzaj,nazwa)
VALUES (logi_seq.nextval, 1, SYSDATE, :OLD.materialy_id,:OLD.rodzaj,:OLD.nazwa); 
WHEN DELETING THEN
INSERT INTO tabela_logi(id_logu, type, data,materialy_id,rodzaj,nazwa )
VALUES (logi_seq.nextval, 2, SYSDATE, :OLD.materialy_id,:OLD.rodzaj,:OLD.nazwa); 
END CASE;
END;

INSERT INTO materialy VALUES (18,'aluminium','aluminium');
UPDATE materialy SET nazwa='amelinium' WHERE materialy_id=18;
DELETE materialy WHERE materialy_id=18;
SELECT * FROM tabela_logi;



CREATE OR REPLACE TRIGGER wyzwalacz2
BEFORE DELETE ON wymiary 
FOR EACH ROW
BEGIN
   DELETE FROM meble WHERE meble.wymiary_id  = :OLD.wymiary_id ;
END;
/
DELETE FROM wymiary WHERE wymiary.wymiary_id = 2;


CREATE OR REPLACE TRIGGER wyzwalacz3
BEFORE INSERT ON pracownicy FOR EACH ROW
DECLARE
liczebnosc NUMBER(6);
BEGIN
SELECT COUNT(pracownicy.stanowisko)
INTO liczebnosc
FROM pracownicy
pracownicy WHERE stanowisko = 'magazynier';
IF liczebnosc >= 15 THEN
RAISE_APPLICATION_ERROR(-20000, 'Za dużo liczeczbosc stanowisk magazynier');
END IF;
END;
/
INSERT INTO pracownicy VALUES (31,'Ferdynand','Kiepski','magazynier',16,54);