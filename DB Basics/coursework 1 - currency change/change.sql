CREATE TABLE currencies 
(
currency_id INTEGER UNIQUE,
currency_name VARCHAR2(20) UNIQUE,
currency_description VARCHAR(50),
sell_price FLOAT(5),
buy_price FLOAT(5),
CONSTRAINT currency_pk PRIMARY KEY(currency_id)
);

CREATE TABLE clients
(
client_id INTEGER UNIQUE,
client_first_name VARCHAR(20),
client_last_name VARCHAR(20),
client_egn  VARCHAR(10),
CONSTRAINT client_pk PRIMARY KEY(client_id)
);

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