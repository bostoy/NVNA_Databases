CREATE TABLE Orders (
client_id INTEGER,
--������� � ����� �� ������� �� ������, ����.

CONSTRAINT fk_client FOREIGN KEY(client_id) REFERENCES clients(client_id)
);