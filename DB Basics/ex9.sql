UNDEFINE Enter_name;

SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id 
  FROM employees
  WHERE last_name <> '&&Enter_name')
  AND last_name <> '&Enter_name';
  
SELECT employee_id, last_name,salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary;

SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
  FROM employees
  WHERE last_name like '%u%');
  
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN(SELECT department_id FROM departments
  WHERE location_id = 1700);
  
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (SELECT department_id FROM departments
  WHERE location_id =  '&Enter_location');
  
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id IN (SELECT department_id
  FROM departments
  WHERE department_name = 'Executive');
  

  SELECT last_name, salary
  FROM employees 
  WHERE manager_id IN (SELECT employee_id
      FROM employees
      WHERE last_name = 'King');
  
SELECT department_id, last_name, job_id
  FROM employees
  WHERE department_id IN (SELECT department_id
  FROM departments
  WHERE department_name = 'Executive');
  
  SELECT employee_id, last_name, salary
FROM employees
WHERE department_id IN (SELECT department_id
FROM employees
WHERE last_name like '%u%')
AND salary > (SELECT AVG(salary)
FROM employees);


  