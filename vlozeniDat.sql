INSERT INTO zakaznik values(1, 'Jan', 'Prokop', 7708081458);
INSERT INTO zakaznik values(2, 'Petr', 'Novák', 6908089661);
INSERT INTO zakaznik values(3, 'Václav', 'Omítka', 8302209146);
INSERT INTO zakaznik values(4, 'Dominika', 'Procházková', 335530734);

INSERT INTO lekarna values(1, 'Aš Říční 88', 'Duhová lékárna');
INSERT INTO lekarna values(2, 'Cheb Kosova 18', 'Lékárna na Náměstí');
INSERT INTO lekarna values(3, 'Praha 1 Tylova 4', 'Pražská Lékarna');

INSERT INTO zamestnanec values(1, 'Josef', 'Kulíšek', 1704174527, 1);
INSERT INTO zamestnanec values(2, 'Franta', 'Mladý', 7411262001, 1);
INSERT INTO zamestnanec values(3, 'Kateřina', 'Černá',6954081882, 2);
INSERT INTO zamestnanec values(4, 'Petr', 'Štíhlý',7609272187, 3);
INSERT INTO zamestnanec values(5, 'Daniela', 'Prokopová',9356107255,2);

INSERT INTO nakupuje values(1, '21.07.2023', 1, 1);
INSERT INTO nakupuje values(2, '22.03.2022', 2, 1);
INSERT INTO nakupuje values(3, '01.10.2023', 1, 1);
INSERT INTO nakupuje values(4, '18.01.2005', 3, 2);
INSERT INTO nakupuje values(5, '30.03.2022', 4, 3);

INSERT INTO vyrobce values(1, 'MedicalCenter', 'Plzeň, Klatovská 18');
INSERT INTO vyrobce values(2, 'Zentiva','Třebíč, Sladkého 55 ');
INSERT INTO vyrobce values(3, 'FIX', 'Ostrava, Bílá 188/5');

INSERT INTO lek values(1, 'Paralen', 'paracetamol', 2);
INSERT INTO lek values(2, 'Olynth', 'nosní sprej', 1);
INSERT INTO lek values(3, 'Vincentka', 'sirup na kašel', 1);
INSERT INTO lek values(4, 'TraumaPlant', 'mast', 3);
INSERT INTO lek values(5, 'Ibalgin', 'Ibuprofen', 2);
INSERT INTO lek values(6, 'Strepsils', 'protizánětlivost v krku', 1);

INSERT INTO dodavatel values(1, 'Zbozi.cz', 'Loket, Loketská 11');
INSERT INTO dodavatel values(2, 'NejvetsiDodavatelEU', 'Praha, U Magistra 13');
INSERT INTO dodavatel values(3, 'KosikSK', 'Bratislava, Travičková 555');

INSERT INTO dodava values(1, '11.08.2023', 50,2, 6);
INSERT INTO dodava values(2,'01.01.2023', 18,3,4);
INSERT INTO dodava values(3, '07.12.2023', 25,2,2);

INSERT INTO vlastni values(30, 1, 1);
INSERT INTO vlastni values(4, 2, 6);
INSERT INTO vlastni values(11, 2, 3);
INSERT INTO vlastni values(88, 1, 4);
INSERT INTO vlastni values(16, 3, 5);
INSERT INTO vlastni values(1, 2, 1);
INSERT INTO vlastni values(152, 3, 2);

INSERT INTO smlouva values(1, '11.05.2018', '11.05.2023', 1, 1);
INSERT INTO smlouva values(2, '05.01.2020', '01.08.2026', 1, 2);
INSERT INTO smlouva values(3, '11.08.2021', '20.08.2027', 2, 1);
INSERT INTO smlouva values(4, '30.11.2023', '19.02.2030', 3, 3);





