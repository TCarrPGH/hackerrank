Problem
==

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the 
Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.


![image](https://user-images.githubusercontent.com/15948247/151365253-53f2786f-d230-47fe-9589-11725a58621c.png)


Solution
==
Find the maximum value for the total earnings. 
In order to find the employees that make this salary we need to group by the total earnings, and then pick the highest one.
~~~sql
SELECT 
     MAX(MONTHS * SALARY) AS TOTAL_EARNINGS
    ,COUNT(*)
FROM EMPLOYEE
    GROUP BY (MONTHS * SALARY)
    ORDER BY (MONTHS * SALARY) DESC
    LIMIT 1;
~~~
