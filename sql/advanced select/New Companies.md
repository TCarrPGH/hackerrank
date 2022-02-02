Problem
==
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, 
total number of managers, and total number of employees. Order your output by ascending company_code.

![image](https://user-images.githubusercontent.com/15948247/152135387-32d61cdf-1904-4a08-933f-3b8d38a7b76f.png)



![image](https://user-images.githubusercontent.com/15948247/152135491-74121393-8987-4b5c-a635-34ac1b74369e.png)

Solution
==
I am not adding all of the imaged of the tables that need to be joined, but each table in the heirarchy needs to be joined by the superior code. 
For example, the lead manager id needs to be to the lead manager id in the child table and so forth.

~~~sql
SELECT DISTINCT
    C.COMPANY_CODE
    ,C.FOUNDER
    ,COUNT(DISTINCT L.LEAD_MANAGER_CODE)
    ,COUNT(DISTINCT S.SENIOR_MANAGER_CODE)
    ,COUNT(DISTINCT M.MANAGER_CODE)
    ,COUNT(DISTINCT E.EMPLOYEE_CODE)
FROM COMPANY C
LEFT JOIN LEAD_MANAGER L
    ON C.COMPANY_CODE = L.COMPANY_CODE
LEFT JOIN SENIOR_MANAGER S 
    ON L.LEAD_MANAGER_CODE = S.LEAD_MANAGER_CODE
    AND C.COMPANY_CODE = S.COMPANY_CODE
LEFT JOIN MANAGER M 
    ON M.SENIOR_MANAGER_CODE = S.SENIOR_MANAGER_CODE
    AND M.COMPANY_CODE = S.COMPANY_CODE
LEFT JOIN EMPLOYEE E
    ON E.MANAGER_CODE = M.MANAGER_CODE
    AND E.COMPANY_CODE = C.COMPANY_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER


~~~
