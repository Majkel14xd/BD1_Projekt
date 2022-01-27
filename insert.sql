


INSERT INTO wymiary VALUES (1,170,90,40);
INSERT INTO wymiary VALUES (2,250,120,40);
INSERT INTO wymiary VALUES (3,350,150,80);
INSERT INTO wymiary VALUES (4,120,90,120);
INSERT INTO wymiary VALUES (5,250,110,150);
INSERT INTO wymiary VALUES (6,250,90,250);
INSERT INTO wymiary VALUES (7,200,100,2);
INSERT INTO wymiary VALUES (8,170,90,40);
INSERT INTO wymiary VALUES (9,150,90,40);
INSERT INTO wymiary VALUES (10,750,40,350);
INSERT INTO wymiary VALUES (11,270,50,150);
INSERT INTO wymiary VALUES (12,180,70,140);
INSERT INTO wymiary VALUES (13,170,80,140);
INSERT INTO wymiary VALUES (14,60,150,40);
INSERT INTO wymiary VALUES (15,50,160,60);



INSERT INTO materialy VALUES (1,'Drewno','swierkowe deski opalane');
INSERT INTO materialy VALUES (2,'Drewno','Brzozowe deski lakierowane');
INSERT INTO materialy VALUES (3,'Drewno','P;yta PCV obrabiana wielowarstwowa oklejana');
INSERT INTO materialy VALUES (4,'Drewno','Dab lakierowany obrabiany');
INSERT INTO materialy VALUES (5,'Plastik','Plastik barwiony naturalnymi skladnikami');
INSERT INTO materialy VALUES (6,'Plastik','Wzmacniany metalowymi drucikami plastik Bor');
INSERT INTO materialy VALUES (7,'Szklo','Szklo pokryte  warstwa srebra marki Camao');
INSERT INTO materialy VALUES (8,'Jedwab','Tkanina koloryzowana Amelia');
INSERT INTO materialy VALUES (9,'Poliester','Tkanina koloryzowana Borea');
INSERT INTO materialy VALUES (10,'Futro','Futro naturalne z Norek');
INSERT INTO materialy VALUES (11,'Skóra','Wyprawiana skóra zwierzeca Torx');
INSERT INTO materialy VALUES (12,'Satyna','Tkanina kolorzyowana Sambro');
INSERT INTO materialy VALUES (13,'Nylon','Tkanina koloryzowana Ambra');
INSERT INTO materialy VALUES (14,'Plastik','Plastex koloryzowany wielowarstwowy');
INSERT INTO materialy VALUES (15,'Metal','Poleroway stop srebra i cyny Metax');



INSERT INTO meble VALUES (1,'Regal',600,1,1,400);
INSERT INTO meble VALUES (2,'Lozko',1200,8,2,100);
INSERT INTO meble VALUES (3,'Regal',1600,4,3,440);
INSERT INTO meble VALUES (4,'Lustro',300,7,7,170);
INSERT INTO meble VALUES (5,'Naroznik',4200,10,11,200);
INSERT INTO meble VALUES (6,'Naroznik',3600,6,12,300);
INSERT INTO meble VALUES (7,'lawa',1000,13,4,180);
INSERT INTO meble VALUES (8,'lawa',1500,12,4,250);
INSERT INTO meble VALUES (9,'Stolik',400,8,2,100);
INSERT INTO meble VALUES (10,'Stolik',800,9,1,100);
INSERT INTO meble VALUES (11,'Pufa',350,13,10,90);
INSERT INTO meble VALUES (12,'Krzesla komplet',1200,14,15,500);
INSERT INTO meble VALUES (13,'Krzesla komplet',2200,15,6,500);
INSERT INTO meble VALUES (14,'Komoda',1400,3,3,150);
INSERT INTO meble VALUES (15,'Wersalka',900,5,12,350);




INSERT INTO zarobki VALUES (1,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,3500);
INSERT INTO zarobki VALUES (2,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,2500);
INSERT INTO zarobki VALUES (3,(SELECT sysdate() -round(rand()*(7-1)+1) as "data" from dual),0,3200);
INSERT INTO zarobki VALUES (4,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2750);
INSERT INTO zarobki VALUES (5,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),800,2450);
INSERT INTO zarobki VALUES (6,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,3040);
INSERT INTO zarobki VALUES (7,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2700);
INSERT INTO zarobki VALUES (8,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2600);
INSERT INTO zarobki VALUES (9,(SELECT sysdate() - round(rand()*(7-1)+1)as "data" from dual),600,1900);
INSERT INTO zarobki VALUES (10,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,3100);
INSERT INTO zarobki VALUES (11,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,3100);
INSERT INTO zarobki VALUES (12,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2300);
INSERT INTO zarobki VALUES (13,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,2100);
INSERT INTO zarobki VALUES (14,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2200);
INSERT INTO zarobki VALUES (15,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,2950);

INSERT INTO zarobki VALUES (16,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,7500);
INSERT INTO zarobki VALUES (17,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,6500);
INSERT INTO zarobki VALUES (18,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,6500);
INSERT INTO zarobki VALUES (19,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,6750);
INSERT INTO zarobki VALUES (20,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),800,7450);
INSERT INTO zarobki VALUES (21,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,4000);
INSERT INTO zarobki VALUES (22,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,8700);
INSERT INTO zarobki VALUES (23,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,9600);
INSERT INTO zarobki VALUES (24,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),600,5900);
INSERT INTO zarobki VALUES (25,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,7200);
INSERT INTO zarobki VALUES (26,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,5100);
INSERT INTO zarobki VALUES (27,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,6300);
INSERT INTO zarobki VALUES (28,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),200,5100);
INSERT INTO zarobki VALUES (29,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,5200);
INSERT INTO zarobki VALUES (30,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),0,5950);







INSERT INTO adresy VALUES (1,'Kielce','12/5','Warszawska');
INSERT INTO adresy VALUES (2,'Kielce','12/7','Warszawska');
INSERT INTO adresy VALUES (3,'Kielce','41','Kolejowa');
INSERT INTO adresy VALUES (4,'Kielce','12','Kolejowa');
INSERT INTO adresy VALUES (5,'Brody','6','Wójtowska');
INSERT INTO adresy VALUES (6,'Brody','62','Szkolna');
INSERT INTO adresy VALUES (7,'Brody','23','Kolejowa');
INSERT INTO adresy VALUES (8,'Tumlin','7/4','Stroma');
INSERT INTO adresy VALUES (9,'Tumlin','52','Szeroka');
INSERT INTO adresy VALUES (10,'Kielce','14/5','Aleja X Wieków');
INSERT INTO adresy VALUES (11,'Tumlin','10','Waska');
INSERT INTO adresy VALUES (12,'Bieliny','12','Truskawkowa');
INSERT INTO adresy VALUES (13,'Bieliny','17','Szkolna');
INSERT INTO adresy VALUES (14,'Ostrowiec','18/5','Paderewskiego');
INSERT INTO adresy VALUES (15,'Ostrowiec','12/10','Samolotowa');

INSERT INTO adresy VALUES (16,'Ostrowiec','8','Wielka');
INSERT INTO adresy VALUES (17,'Checiny','12','Mala');
INSERT INTO adresy VALUES (18,'Mielec','10','Duza');
INSERT INTO adresy VALUES (19,'Warszawa','1','Srednia');
INSERT INTO adresy VALUES (20,'Wilkow','9','Optykowa');
INSERT INTO adresy VALUES (21,'Ostrowiec','4','Wolakowa');
INSERT INTO adresy VALUES (22,'Podgorze','22','Kulakowa');
INSERT INTO adresy VALUES (23,'Lublin','56','Malikowa');
INSERT INTO adresy VALUES (24,'Wroclaw','7','Potezna');
INSERT INTO adresy VALUES (25,'Staszow','3','Zbawienaa');
INSERT INTO adresy VALUES (26,'Ostrowiec','4','Niesamowita');
INSERT INTO adresy VALUES (27,'Wilkow','12','Entuzajstyczna');
INSERT INTO adresy VALUES (28,'Opatow','14','Kolorowa');
INSERT INTO adresy VALUES (29,'Zagnañsk','16','Szeroka');
INSERT INTO adresy VALUES (30,'Mielec','23','Waska');

INSERT INTO adresy VALUES (31,'Gdansk','22','Warszawska');
INSERT INTO adresy VALUES (32,'Kielce','3','Warszawska');
INSERT INTO adresy VALUES (33,'Wilkow','41','Kolejowa');
INSERT INTO adresy VALUES (34,'Kielce','12','Kolejowa');
INSERT INTO adresy VALUES (35,'Brody','55','Wójtowska');
INSERT INTO adresy VALUES (36,'Staszow','12','Szkolna');
INSERT INTO adresy VALUES (37,'Brody','33','Kolejowa');
INSERT INTO adresy VALUES (38,'Daleszyce','23','Stroma');
INSERT INTO adresy VALUES (39,'Tumlin','33','Szeroka');
INSERT INTO adresy VALUES (40,'Kielce','4','Aleja X Wieków');
INSERT INTO adresy VALUES (41,'Tumlin','6','Waska');
INSERT INTO adresy VALUES (42,'Dabrowa','56','Truskawkowa');
INSERT INTO adresy VALUES (43,'Bieliny','22','Szkolna');
INSERT INTO adresy VALUES (44,'Ostrowiec','23','Paderewskiego');
INSERT INTO adresy VALUES (45,'Bielsko-Biala','78','Samolotowa');

INSERT INTO adresy VALUES (46,'Ostrowiec','12','Wielka');
INSERT INTO adresy VALUES (47,'Checiny','13','Mala');
INSERT INTO adresy VALUES (48,'Mielec','14','Duza');
INSERT INTO adresy VALUES (49,'Warszawa','15','Srednia');
INSERT INTO adresy VALUES (50,'Wilkow','16','Optykowa');
INSERT INTO adresy VALUES (51,'Ostrowiec','17','Wolakowa');
INSERT INTO adresy VALUES (52,'Podgorze','18','Kulakowa');
INSERT INTO adresy VALUES (53,'Lublin','19','Malikowa');
INSERT INTO adresy VALUES (54,'Wroclaw','20','Potezna');
INSERT INTO adresy VALUES (55,'Staszow','21','Zbawienaa');
INSERT INTO adresy VALUES (56,'Ostrowiec','22','Niesamowita');
INSERT INTO adresy VALUES (57,'Wilkow','23','Entuzajstyczna');
INSERT INTO adresy VALUES (58,'Opatów','24','Kolorowa');
INSERT INTO adresy VALUES (59,'Zagnansk','26','Szeroka');
INSERT INTO adresy VALUES (60,'Mielec','29','Waska');

INSERT INTO adresy VALUES (61,'Gdansk','31','Warszawska');
INSERT INTO adresy VALUES (62,'Kielce','32','Warszawska');
INSERT INTO adresy VALUES (63,'Wilkow','33','Kolejowa');
INSERT INTO adresy VALUES (64,'Kielce','34','Kolejowa');
INSERT INTO adresy VALUES (65,'Brody','35','Wójtowska');
INSERT INTO adresy VALUES (66,'Staszow','36','Szkolna');
INSERT INTO adresy VALUES (67,'Brody','37','Kolejowa');
INSERT INTO adresy VALUES (68,'Daleszyce','38','Stroma');
INSERT INTO adresy VALUES (69,'Tumlin','39','Szeroka');
INSERT INTO adresy VALUES (70,'Kielce','13','Aleja X Wieków');
INSERT INTO adresy VALUES (71,'Tumlin','16','Waska');
INSERT INTO adresy VALUES (72,'Dabrowa','19','Truskawkowa');
INSERT INTO adresy VALUES (73,'Bieliny','66','Szkolna');
INSERT INTO adresy VALUES (74,'Ostrowiec','77','Paderewskiego');
INSERT INTO adresy VALUES (75,'Bielsko-Biala','88','Samolotowa');



INSERT INTO pracownicy VALUES (1,'Anna','Banas','sprzedawca',1,46);
INSERT INTO pracownicy VALUES (2,'Maria','Kolar','sprzedawca',2,47);
INSERT INTO pracownicy VALUES (3,'Magda','Czop','sprzedawca',3,48);
INSERT INTO pracownicy VALUES (4,'Konrad','Kot','sprzedawca',4,49);
INSERT INTO pracownicy VALUES (5,'Karol','Pies','sprzedawca',5,50);
INSERT INTO pracownicy VALUES (6,'Karolina','Wiatr','sprzedawca',6,51);
INSERT INTO pracownicy VALUES (7,'Kaladin','Mass','sprzedawca',7,52);
INSERT INTO pracownicy VALUES (8,'Amelia','Wiacek','sprzedawca',8,53);
INSERT INTO pracownicy VALUES (9,'Andrzej','Kurek','sprzedawca',9,54);
INSERT INTO pracownicy VALUES (10,'Augustyn','Rys','sprzedawca',10,55);
INSERT INTO pracownicy VALUES (11,'Marek','Niek','sprzedawca',11,56);
INSERT INTO pracownicy VALUES (12,'Monika','Ciosk','sprzedawca',12,57);
INSERT INTO pracownicy VALUES (13,'Adrian','Rutkowska','sprzedawca',13,58);
INSERT INTO pracownicy VALUES (14,'Robert','Walas','sprzedawca',14,59);
INSERT INTO pracownicy VALUES (15,'Marcin','Dubiel','sprzedawca',15,60);

INSERT INTO pracownicy VALUES (16,'Rafał','Banas','magazynier',1,61);
INSERT INTO pracownicy VALUES (17,'Dominik','Kolar','magazynier',2,62);
INSERT INTO pracownicy VALUES (18,'Zbigniew','Czop','magazynier',3,63);
INSERT INTO pracownicy VALUES (19,'Ryszard','Kot','magazynier',4,64);
INSERT INTO pracownicy VALUES (20,'Alicja','Pies','magazynier',5,65);
INSERT INTO pracownicy VALUES (21,'Dawid','Wiatr','magazynier',6,66);
INSERT INTO pracownicy VALUES (22,'Dawid','Mass','magazynier',7,67);
INSERT INTO pracownicy VALUES (23,'Rafał','Wiacek','magazynier',8,68);
INSERT INTO pracownicy VALUES (24,'Ryszard','Kurek','magazynier',9,69);
INSERT INTO pracownicy VALUES (25,'Zbigniew','Rys','magazynier',10,70);
INSERT INTO pracownicy VALUES (26,'Genowefa','Niek','magazynier',11,71);
INSERT INTO pracownicy VALUES (27,'Daria','Ciosk','magazynier',12,72);
INSERT INTO pracownicy VALUES (28,'Ala','Rutkowska','magazynier',13,73);
INSERT INTO pracownicy VALUES (29,'Bartek','Walas','magazynier',14,74);
INSERT INTO pracownicy VALUES (30,'Ryszard','Dubiel','magazynier',15,75);



INSERT INTO dostawy VALUES (1,16,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (2,17,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (3,18,(SELECT sysdate() - round(rand()*(7-1)+1)as "data" from dual));
INSERT INTO dostawy VALUES (4,19,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (5,20,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (6,21,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (7,22,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (8,23,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (9,24,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (10,25,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (11,26,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (12,27,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (13,28,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (14,29,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));
INSERT INTO dostawy VALUES (15,30,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual));




INSERT INTO przedstawiciele VALUES (1,'Ryszard','Petru','Kielecki','511222333',16);
INSERT INTO przedstawiciele VALUES (2,'Witold','Kalisz','Starachowicki','511222333',17);
INSERT INTO przedstawiciele VALUES (3,'Zbyszek','Jop','Poznañski','511222333',18);
INSERT INTO przedstawiciele VALUES (4,'Dariusz','Kassa','Warszawski','511222333',19);
INSERT INTO przedstawiciele VALUES (5,'John','Bravo','Gdañski','511222333',20);
INSERT INTO przedstawiciele VALUES (6,'Micha³','Petru','Szczeciñski','511222333',21);
INSERT INTO przedstawiciele VALUES (7,'Arek','Mlody','Wroc³awski','511222333',22);
INSERT INTO przedstawiciele VALUES (8,'Mateusz','Bak','Krakowski','511222333',23);
INSERT INTO przedstawiciele VALUES (9,'Bartosz','Lopa','Sandomierski','511222333',24);
INSERT INTO przedstawiciele VALUES (10,'Jan','Wiackwoski','Lubelski','511222333',25);
INSERT INTO przedstawiciele VALUES (11,'Alicja','Tetmajer','Toruñski','511222333',26);
INSERT INTO przedstawiciele VALUES (12,'Zofia','Mickiewicz','Katowicki','511222333',27);
INSERT INTO przedstawiciele VALUES (13,'Aurelia','Dolna','Czêstochowski','511222333',28);
INSERT INTO przedstawiciele VALUES (14,'Ludomi³a','Kwiat','Rzeszowski','511222333',29);
INSERT INTO przedstawiciele VALUES (15,'Marlena','Orra','£ódzki','511222333',30);




INSERT INTO klienci VALUES (1,'Adam','Kowalski','506888666','kowa@wp.pl',16);
INSERT INTO klienci VALUES (2,'Andrzej','Kolczuk','522288666','kolcz@wp.pl',17);
INSERT INTO klienci VALUES (3,'Maja','Lis','506343466','lis@wp.pl',18);
INSERT INTO klienci VALUES (4,'Dawid','Kowalski','666888666','kowal@wp.pl',19);
INSERT INTO klienci VALUES (5,'Marcin','Tus','123456789','tus@wp.pl',20);
INSERT INTO klienci VALUES (6,'Zbigniew','Boniek','506822266','boniek@wp.pl',21);
INSERT INTO klienci VALUES (7,'Grzesiek','Fiks','739632843','fiks@wp.pl',22);
INSERT INTO klienci VALUES (8,'Anna','Bors','925639754','bors@wp.pl',23);
INSERT INTO klienci VALUES (9,'Genowefa','Majer','982563123','majer@wp.pl',24);
INSERT INTO klienci VALUES (10,'Witold','Gombrowicz','586235023','gomb@wp.pl',25);
INSERT INTO klienci VALUES (11,'Bartosz','Ryskiewicz','321321321','rys@wp.pl',26);
INSERT INTO klienci VALUES (12,'Matylda','Kos','566788900','kos@wp.pl',27);
INSERT INTO klienci VALUES (13,'£ucja','Kos','345456567','kos2@wp.pl',28);
INSERT INTO klienci VALUES (14,'Alicja','Bewer','123234345','bew@wp.pl',29);
INSERT INTO klienci VALUES (15,'Arkadiusz','Milik','666777888','milik@wp.pl',30);



INSERT INTO magazyny_mebli VALUES (1,'Termox',10,7);
INSERT INTO magazyny_mebli VALUES (2,'Barox',11,8);
INSERT INTO magazyny_mebli VALUES (3,'Cermox',12,1);
INSERT INTO magazyny_mebli VALUES (4,'Demox',13,2);
INSERT INTO magazyny_mebli VALUES (5,'Meblex',1,10);
INSERT INTO magazyny_mebli VALUES (6,'Mebelowo',2,14);
INSERT INTO magazyny_mebli VALUES (7,'Mebix',3,3);
INSERT INTO magazyny_mebli VALUES (8,'Barek',4,4);
INSERT INTO magazyny_mebli VALUES (9,'Kaszyn',14,5);
INSERT INTO magazyny_mebli VALUES (10,'BRW',15,15);
INSERT INTO magazyny_mebli VALUES (11,'BRW',5,13);
INSERT INTO magazyny_mebli VALUES (12,'Termox',6,12);
INSERT INTO magazyny_mebli VALUES (13,'Meblowo',7,11);
INSERT INTO magazyny_mebli VALUES (14,'Taniopol',8,9);
INSERT INTO magazyny_mebli VALUES (15,'Drewopol',9,6);



INSERT INTO sklepy VALUES (1,6,1,31,'509266487');
INSERT INTO sklepy VALUES (2,7,3,32,'506248123');
INSERT INTO sklepy VALUES (3,8,5,33,'504444487');
INSERT INTO sklepy VALUES (4,9,7,34,'509266321');
INSERT INTO sklepy VALUES (5,10,9,35,'509233337');
INSERT INTO sklepy VALUES (6,1,11,36,'511266487');
INSERT INTO sklepy VALUES (7,2,13,37,'511166487');
INSERT INTO sklepy VALUES (8,3,15,38,'522266487');
INSERT INTO sklepy VALUES (9,4,2,39,'533266487');
INSERT INTO sklepy VALUES (10,5,4,40,'555266487');
INSERT INTO sklepy VALUES (11,11,6,41,'578266487');
INSERT INTO sklepy VALUES (12,12,8,42,'555566487');
INSERT INTO sklepy VALUES (13,13,10,43,'777266487');
INSERT INTO sklepy VALUES (14,14,12,44,'878766487');
INSERT INTO sklepy VALUES (15,15,14,45,'508888487');


INSERT INTO sprzedaze VALUES (1,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),1,1,1,1);
INSERT INTO sprzedaze VALUES (2,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() +round(rand()*(365-183)+183) as "data" from dual),2,2,2,2);
INSERT INTO sprzedaze VALUES (3,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),3,3,3,3);
INSERT INTO sprzedaze VALUES (4,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),4,4,4,4);
INSERT INTO sprzedaze VALUES (5,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),5,5,5,5);
INSERT INTO sprzedaze VALUES (6,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),6,6,6,6);
INSERT INTO sprzedaze VALUES (7,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),7,7,7,7);
INSERT INTO sprzedaze VALUES (8,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),8,8,8,8);
INSERT INTO sprzedaze VALUES (9,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),9,9,9,9);
INSERT INTO sprzedaze VALUES (10,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),10,10,10,10);
INSERT INTO sprzedaze VALUES (11,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),11,11,11,11);
INSERT INTO sprzedaze VALUES (12,(SELECT sysdate() -round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),12,12,12,12);
INSERT INTO sprzedaze VALUES (13,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() +round(rand()*(365-183)+183) as "data" from dual),13,13,13,13);
INSERT INTO sprzedaze VALUES (14,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),14,14,14,14);
INSERT INTO sprzedaze VALUES (15,(SELECT sysdate() - round(rand()*(7-1)+1) as "data" from dual),(SELECT sysdate() + round(rand()*(365-183)+183) as "data" from dual),15,15,15,15);




















