--Pohledy vytvorene z dotazu
--Pohled c.1:

CREATE VIEW nakupy ( datum, c_lekarny, c_zakaznika) AS
SELECT
    nakupuje.datum_nakupu,
    nakupuje.lekarna_c_lekarny,
    nakupuje.zakaznik_c_zakaznika
FROM
    nakupuje
WHERE
    nakupuje.datum_nakupu < '01.01.2023';

--Pohled c.2:
CREATE VIEW dodavky_v_zime_pod_20_leku ( c_dodavky, c_dodavatele, c_leku, datum, pocet) AS
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

--Pohled c.3:
CREATE VIEW lekarna_vlastnici_paralen ( Lekarna, pocet_leku, Lek, Vyrobce) AS
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

--Pohled c.4:
CREATE VIEW smlouvy_expirujici_po_roce_2027 ( expirace, dodavatel, lekarna) AS
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



