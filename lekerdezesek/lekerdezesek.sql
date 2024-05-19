A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!
***
14. feladat
CREATE DATABASE csudijo DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
***
16. feladat
SELECT COUNT(id)
AS 'etelek-szama' FROM termekek WHERE etel=1;
***
17. feladat
SELECT termekek.nev, termekek.ar FROM termekek INNER JOIN kategoriak ON termekek.kategoriaId = kategoriak.id WHERE kategoriak.nev="Desszertek" ORDER BY termekek.nev;
***
18. feladat
INSERT INTO termekek (nev, ar, kategoriaId, etel) VALUES
('Málnahabos pohárkrém', '1090.00', 6, 1);
***
19. feladat
SELECT termekek.nev, SUM(rendelesek.mennyiseg) As mennyiseg 
FROM rendelesek INNER JOIN termekek ON termekek.id = rendelesek.termekId 
WHERE etel=1 GROUP BY termekek.nev ORDER BY mennyiseg DESC LIMIT 3;
***
20. feladat
SELECT SUM(termekek.ar*rendelesek.mennyiseg) AS brutto, 
ROUND(SUM(termekek.ar*rendelesek.mennyiseg*(1-1/(1+afakulcs))),0) AS afa 
FROM rendelesek
INNER JOIN termekek ON termekek.id = rendelesek.termekId; 