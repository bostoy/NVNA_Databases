

CREATE TABLE dept2(
id NUMBER(7),
name VARCHAR(25)
);

DESC dept2

INSERT INTO dept2
 (id, name)
 VALUES
(1,'nqkvo ime');
 
 SELECT * FROM dept2;
 
CREATE TABLE emp2(
id NUMBER(7),
dept_id NUMBER(7),
first_name VARCHAR(25),
last_name VARCHAR(25)
);
DESC emp2;

CREATE TABLE employees2 AS 
SELECT employee_id, first_name, last_name, salary, department_id FROM employees;

DROP TABLE emp2;

SELECT original_name, operation, droptime FROM recyclebin;

FLASHBACK TABLE emp2 TO BEFORE DROP;
DESC emp2;

ALTER TABLE  employees2 SET UNUSED (dept_id);
DESC employees2;
ALTER TABLE employees2 DROP UNUSED COLUMNS;
DESC employees2;

ALTER TABLE emp2 ADD CONSTRAINT my_emp_id_pk PRIMARY KEY (id);
ALTER TABLE emp2 ADD CONSTRAINT my_emp_id_fk FOREIGN KEY (dept_id) REFERENCES dept2(id);




