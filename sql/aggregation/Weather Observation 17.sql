/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

SOLUTION
*/ 


SELECT ROUND(LONG_W,4)
FROM STATION 
  WHERE LAT_N IN
    (SELECT MIN(LAT_N)
     FROM STATION
        WHERE LAT_N > 38.7780
    ) 
