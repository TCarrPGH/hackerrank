         
         
/*
Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Euclidean Distance Formula:
square root ((a - c)^ 2 + (b - d)^2)
*/

SELECT    
    ROUND(
        SQRT(
            POWER((a - c),2) + POWER((b - d),2)
        )
    ,4)
    FROM  
    (
        SELECT
            MIN(LAT_N) AS a,
            MIN(LONG_W)AS b,
            MAX(LAT_N) AS c,
            MAX(LONG_W) AS d
        FROM STATION) as t
