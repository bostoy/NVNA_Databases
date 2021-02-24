CREATE TABLE my_employee
(id NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL,
last_name VARCHAR2(25),
first_name VARCHAR2(25),
userid VARCHAR2(8),
salary NUMBER(9,2));

DESCRIBE my_employee

INSERT INTO my_employee
VALUES(1,'Borko','Egotin','nzbrat', 9000);

INSERT INTO my_employee (id,last_name,first_name,userid,salary)
VALUES (2,'Pablo', 'Don', 'pablitko', 9500);

SELECT * FROM my_employee;

INSERT INTO my_employee
VALUES (&p_id, '&p_last_name', '&p_first_name', '&p_userid', &p_salary);

INSERT INTO my_employee
VALUES (&p_id, '&p_last_name', '&p_first_name', '&p_userid', &p_salary);


SELECT * FROM my_employee;

UPDATE my_employee 
SET last_name = 'khalifa' WHERE id = 1;

UPDATE my_employee
SET salary = 15000 WHERE salary < 900;

SELECT * FROM my_employee;

COMMIT;

SAVEPOINT step_17;

DELETE FROM my_employee;
SELECT * FROM my_employee;

ROLLBACK TO step_17;

SELECT * FROM my_employee;

COMMIT;

INSERT INTO my_employee
VALUES (&p_id, '&&p_last_name', '&&p_first_name',
        lower(substr('&p_first_name', 1, 1) ||  substr('&p_last_name', 1, 7)),
        &p_salary);
        
SET VERIFY ON
SET ECHO ON
UNDEFINE p_first_name;
UNDEFINE p_last_name;

SELECT * FROM my_employee WHERE ID = 6;

