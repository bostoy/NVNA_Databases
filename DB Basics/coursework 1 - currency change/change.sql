CREATE TABLE currencies 
(
currency_id NUMBER(7) PRIMARY KEY,
currency_name VARCHAR2(20) UNIQUE,
currency_description VARCHAR(50),
sell_price FLOAT(5),
buy_price FLOAT(5)
);

DESCRIBE currencies;

INSERT INTO currencies VALUES(1,'EUR', 'Euro description', '1.911', '1.733');
INSERT INTO currencies VALUES(2,'BGN', 'BGN description', '0.611', '0.499');
INSERT INTO currencies VALUES(3,'USD', 'USD description', '1.911', '1.733');
INSERT INTO currencies VALUES(4,'CAD', 'Euro description', '1.511', '1.333');

SELECT * FROM currencies;


CREATE TABLE clients
(
client_id NUMBER(7) PRIMARY KEY ,
client_first_name VARCHAR(20),
client_last_name VARCHAR(20),
client_egn  VARCHAR(10) UNIQUE
);
DESCRIBE clients;

INSERT INTO clients VALUES (1,'Borislav','Stoyanov', '0011223344');



CREATE TABLE orders
(
client_id INTEGER,
order_number INTEGER,
order_date DATE,
CONSTRAINT client_fk  
  FOREIGN KEY (client_id)
  REFERENCES clients(client_id)
);

CREATE TABLE order_details
(
client_id INTEGER,
currency_name VARCHAR2(20),
buy_price FLOAT(5),
sell_price FLOAT(5),
--kakvo tochno tr da sumira sumata ot zadanieto??
nqkvasuma INTEGER,
CONSTRAINT client_fk  
  FOREIGN KEY (client_id)
  REFERENCES clients(client_id),
  
  CONSTRAINT currency_name_pk  
  FOREIGN KEY (currency_name)
  REFERENCES currencies(currency_name),
  
  --kak da vzema buy sell sprqmo imeto na valutata i da gi dobavq vuv foreign key??
  
  
  
--CONSTRAINT buy_price_fk  
--  FOREIGN KEY (buy_price)
--  REFERENCES currencies(buy_price),
--  
--CONSTRAINT sell_price_fk  
--  FOREIGN KEY (sell_price)
--  REFERENCES currencies(sell_price)
)