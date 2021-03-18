alter session set NLS_DATE_LANGUAGE = "AMERICAN";

SELECT employee_id, TO_CHAR(hire_date, 'MM/YY') Month_Hired
FROM   employees WHERE  last_name = 'Higgins';

SELECT last_name,
       TO_CHAR(hire_date, 'fmDD Month YYYY')        AS HIREDATE
FROM   employees;

SELECT last_name Family , 
TO_CHAR(hire_date, 'fmDD"-and " Month YYYY fmHH:MI:SS') HIREDATE  
FROM employees;

SELECT TO_CHAR(salary, '$99,999.00') SALARY
FROM   employees WHERE  last_name = 'Ernst';

SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
FROM  employees
WHERE hire_date < TO_DATE('01-Jan-90','DD-Mon-RR');

SELECT 
INITCAP(CONCAT(CONCAT(last_name, ' - job '), job_id)) "Employee from 10 dept."
FROM employees WHERE department_id = 10;

SELECT sysdate "Current date",
TO_CHAR(NEXT_DAY(ADD_MONTHS(sysdate, 3), 'Sunday'),'fmDay, Month dd, YYYY') "Sunday after 3 months" FROM dual;

SELECT last_name, salary, NVL(commission_pct, 0),
   (salary*12) + (salary*12*NVL(commission_pct, 0)) AN_SAL
FROM employees;

SELECT last_name,  salary, commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') income
FROM   employees WHERE department_id IN (50, 80);

SELECT first_name, LENGTH(first_name) "expr1", 
       last_name,  LENGTH(last_name)  "expr2",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM   employees;

SELECT last_name, employee_id,
COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
	'No commission and no manager') 
FROM employees;


SELECT  last_name || ' earns '
        || TO_CHAR(salary, 'fm$99,999.00')
        || ' monthly but wants '
        || TO_CHAR(salary * 3, 'fm$99,999.00')
        || '.' "Dream Salaries"
FROM    employees;

SELECT last_name, hire_date,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'MONDAY'),
       'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
FROM    employees; 

SELECT last_name, hire_date,
       TO_CHAR(hire_date, 'DAY') DAY
FROM     employees
ORDER BY TO_CHAR(hire_date - 1, 'd');

SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM   employees;
