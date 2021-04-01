SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries; --join all columns with the same name

SELECT last_name, department_id, department_name 
FROM employees
JOIN departments
USING (department_id); --join deparments by department id 

SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE LOWER(l.city) = 'toronto';

SELECT w.last_name "Employee", w.employee_id "EMP#",
m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id); -- join if w.manager_id == m.employee_id

SELECT w.last_name "Employee", w.employee_id "EMP",
m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w
LEFT OUTER JOIN employees m
ON (w.manager_id = m.employee_id)
ORDER BY 2;

SELECT e.department_id department, e.last_name employee,
c.last_name colleague
FROM employees e JOIN employees c
ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id
ORDER BY e.department_id, e.last_name, c.last_name;

SELECT e.last_name, e.hire_date
FROM employees e JOIN employees davies
ON (davies.last_name = 'Davies')
WHERE davies.hire_date < e.hire_date;

SELECT w.last_name, w.hire_date, m.last_name, m.hire_date
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id)
WHERE w.hire_date < m.hire_date;

SELECT r.region_id, r.region_name, c.country_id, c.country_name
FROM regions r JOIN countries c
ON (r.region_id=c.region_id);






CREATE TABLE JOB_GRADES
(
GRADE_LEVEL VARCHAR2(3)
, LOWEST_SAL NUMBER
, HIGHEST_SAL NUMBER
);

DESCRIBE job_grades
SELECT * FROM job_grades;

SELECT e.last_name, e.job_id, d.department_name,
e.salary, j.grade_level
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN job_grades j
ON (e.salary BETWEEN j.lowest_sal AND j.highest_sal);
