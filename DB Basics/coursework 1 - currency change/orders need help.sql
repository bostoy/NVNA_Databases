CREATE TABLE Orders (
client_id INTEGER,
--Поръчки – номер на поръчка за клиент, дата.

CONSTRAINT fk_client FOREIGN KEY(client_id) REFERENCES clients(client_id)
);