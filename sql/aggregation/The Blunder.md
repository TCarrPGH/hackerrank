Problem
==
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.


![image](https://user-images.githubusercontent.com/15948247/151357094-2d9fb688-5d79-4a72-ada3-3a36ac79aad6.png)

![image](https://user-images.githubusercontent.com/15948247/151357112-d11d086d-bb7a-46a3-9a79-3bb3fad103fe.png)


Solution
== 

The wording of this problem is hard to figure out at first glance. What they are asking for is:
The average salary of all employess - the average salary of all employees with 0's removed
- Rounded to the next integer. The CEIL function rounds to the next integer.

~~~sql
SELECT
    CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,"0",""))) AS SALTWO
FROM EMPLOYEES;
~~~
