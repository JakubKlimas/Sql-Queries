SELECT  MIN(PLACA_POD)AS MINIMUM, MAX(PLACA_POD)AS MAXIMUM, MAX(PLACA_POD)-MIN(PLACA_POD)AS RÓŻNICA FROM pracownicy;
SELECT ETAT, AVG(PLACA_POD) FROM PRACOWNICY GROUP BY ETAT ORDER BY AVG(PLACA_POD) DESC;
SELECT COUNT(ETAT) AS PROFESOROWIE FROM PRACOWNICY WHERE ETAT = 'PROFESOR';
SELECT ID_ZESP, SUM(PLACA_DOD) + SUM(PLACA_POD)AS SUMARYCZNE_PLACE FROM PRACOWNICY GROUP BY ID_ZESP ORDER BY ID_ZESP ASC;
SELECT ID_SZEFA, MIN(PLACA_POD)AS MINIMALNA FROM PRACOWNICY GROUP BY ID_SZEFA ORDER BY MIN(PLACA_POD) DESC;
SELECT ID_ZESP, COUNT(ID_ZESP)AS ILU_PRACUJE FROM PRACOWNICY GROUP BY ID_ZESP HAVING COUNT(ID_ZESP)> 3 ORDER BY COUNT(ID_ZESP) DESC;
SELECT ETAT, AVG(PLACA_POD) AS ŚREDNIA , COUNT(ETAT) AS LICZBA FROM PRACOWNICY WHERE ZATRUDNIONY < '90/01/01' GROUP BY ETAT;