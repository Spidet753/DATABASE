--Dotaz 1 (nad jednou tabulkou)
--Vybereme vsechny nakupy, ktere probehly pred zacatkem roku 2023.

SELECT
    nakupuje.datum_nakupu,
    nakupuje.lekarna_c_lekarny,
    nakupuje.zakaznik_c_zakaznika
FROM
    nakupuje
WHERE
    nakupuje.datum_nakupu < '01.01.2023';



--Dotaz 2 (nad jednou tabulkou)
--Vybereme vsechny dodavky, ktere byly dodany v zime a mnozstvi leku bylo nizsi nez 20.

SELECT
    dodava.c_dodavky,
    dodava.dodavatel_c_dodavatele,
    dodava.lek_c_leku,
    dodava.d_dodani,
    dodava.mnozstvi
FROM
    dodava
WHERE
        dodava.mnozstvi < 20
    AND ((EXTRACT(MONTH FROM dodava.d_dodani) = 12 )
          OR ( EXTRACT(MONTH FROM dodava.d_dodani) = 1 )
          OR ( EXTRACT(MONTH FROM dodava.d_dodani) = 2 ));

--Dotaz 3 (nad více tabulkami)
--Vybereme lekarny, ktere vlastni paralen a jeho vyrobce

SELECT
    lekarna.nazev_lekarny,
    vlastni.pocet,
    lek.nazev_leku,
    vyrobce.nazev_vyrobce
FROM
         lekarna
    INNER JOIN vlastni ON lekarna.c_lekarny = vlastni.lekarna_c_lekarny
    INNER JOIN lek ON lek.c_leku = vlastni.lek_c_leku
    INNER JOIN vyrobce ON vyrobce.c_vyrobce = lek.vyrobce_c_vyrobce
WHERE
    lek.c_leku = 1;

--Dotaz 4 (nad více tabulkami)
--Vybereme dvojici lekarna a dodavatel, kteri maji mezi sebou podepsanou smlouvu ALESPON do roku 2028

SELECT
    smlouva.d_expirace,
    dodavatel.nazev_dodavatele,
    lekarna.nazev_lekarny
FROM
         dodavatel
    INNER JOIN smlouva ON dodavatel.c_dodavatele = smlouva.dodavatel_c_dodavatele
    INNER JOIN lekarna ON lekarna.c_lekarny = smlouva.lekarna_c_lekarny
WHERE
    smlouva.d_expirace >= '01.01.2028';