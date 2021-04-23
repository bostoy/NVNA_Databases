CREATE TABLE currencies(
currency_id NUMBER(7) PRIMARY KEY,
currency_name VARCHAR2(20) UNIQUE,
currency_description VARCHAR(50),
sell_price FLOAT(5),
buy_price FLOAT(5));

INSERT INTO currencies VALUES(4,'EUR','Euro description','1.911','1.733');
INSERT INTO currencies VALUES(2,'BGN','BGN description','0.611','0.499');
INSERT INTO currencies VALUES(3,'USD','USD  description','1.911','1.733');
INSERT INTO currencies VALUES(1,'CAD','Euro description','1.511','1.333');

SELECT * FROM currencies;

CREATE TABLE clients(
client_id NUMBER(7) PRIMARY KEY,
client_first_name VARCHAR(20),
client_last_name VARCHAR(20),
client_egn VARCHAR(10) UNIQUE);

INSERT INTO clients VALUES(1,'Borislav','Stoyanov','0011223344');
INSERT INTO clients VALUES(2,'Stoyan','Borislavov','2211223344');
INSERT INTO clients VALUES(3,'Georgi','Stoyanov','3311223344');
INSERT INTO clients VALUES(4,'Borislav','Stoyanov','4411223344');

SELECT * FROM clients;

CREATE TABLE orders (
order_id NUMBER(5) PRIMARY KEY,
order_date DATE,
client_id, 
CONSTRAINT orders_client_id_fk FOREIGN KEY (client_id) REFERENCES clients(client_id));

INSERT INTO orders VALUES (1, TO_DATE('04 12 2019','MM DD, YYYY'), 1);
INSERT INTO orders VALUES (2, TO_DATE('09 11 2019','MM DD, YYYY'), 3);
INSERT INTO orders VALUES (3, TO_DATE('10 10 2019','MM DD, YYYY'), 4);
INSERT INTO orders VALUES (4, TO_DATE('03 9 2020','MM DD, YYYY'), 1);
INSERT INTO orders VALUES (5, TO_DATE('06 5 2020','MM DD, YYYY'), 4);

SELECT*FROM orders;

CREATE TABLE details (
currency_id NUMBER(7),
sell_price FLOAT(5), buy_price FLOAT(5), price FLOAT(5),
client_id NUMBER(7), order_id NUMBER(5),
CONSTRAINT currency_id_fk FOREIGN KEY(currency_id) REFERENCES currencies(currency_id),
CONSTRAINT client_id_fk FOREIGN KEY(client_id) REFERENCES clients(client_id),
CONSTRAINT order_id_fk FOREIGN KEY(order_id) REFERENCES orders(order_id));

INSERT INTO details VALUES(1,'1.911','1.733','20.56',1,1);
INSERT INTO details VALUES(2,'0.611','0.499','20',1,1);
INSERT INTO details VALUES(4,'1.511','1.333','56',2,2);
INSERT INTO details VALUES(2,'0.611','0.499','12',2,2);
INSERT INTO details VALUES(4,'1.511','1.333','82',3,3);
INSERT INTO details VALUES(2,'0.611','0.499','55',3,3);
INSERT INTO details VALUES(3,'1.911','1.733','40.89',4,4);
INSERT INTO details VALUES(4,'1.511','1.333','30',4,4);

SELECT*FROM details;