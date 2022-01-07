/*
Consider  and  to be two points on a 2D plane.

* a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
* b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
* c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
* d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.


The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

The Manhattan Formula is:
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|
*/

SELECT 
    ABS(ROUND((a - c) + (b - d), 4))
    FROM  
    (
        SELECT
            MIN(LAT_N) AS a,
            MIN(LONG_W)AS b,
            MAX(LAT_N) AS c,
            MAX(LONG_W) AS d
        FROM STATION) as t
