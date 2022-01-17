Problem
==

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

* Equilateral: It's a triangle with  sides of equal length.
* Isosceles: It's a triangle with  sides of equal length.
* Scalene: It's a triangle with  sides of differing lengths.
* Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:

Solution
==

A condition of Triangle is that A + B < C. The first thing this code does is to filter out all imposter triangles.
Then a case statement is used to figure out what type of triangle we are dealing with.

~~~sql
SELECT 
    CASE WHEN (A + B > C) THEN
            CASE
            WHEN(A = B AND A != C) OR (B = C AND C !=A) OR (A = C AND C != B)
                 THEN 'Isosceles'
            WHEN A = B AND A = C AND B = C THEN 'Equilateral'
            WHEN (A != B AND B != C AND A != C) THEN 'Scalene'
        END
     ELSE "Not A Triangle"
    END
FROM TRIANGLES;



~~~
