CREATE TABLE Currencies (
currency_id INTEGER UNIQUE ,
description VARCHAR2(50),
buy_price FLOAT(2),
sell_price FLOAT(2)
);

DESCRIBE Currencies;

CREATE TABLE Clients (
client_id INTEGER UNIQUE,
uniform_civil_number VARCHAR2(10) UNIQUE,
first_name VARCHAR2(20),
last_name VARCHAR2(20)
);
DESCRIBE Clients;

CREATE TABLE Orders (
client_id INTEGER  FOREIGN KEY REFERENCES Clients(client_id), --error missing right parenthesis
order_number INTEGER UNIQUE,
order_date DATE
);

DESCRIBE Orders;