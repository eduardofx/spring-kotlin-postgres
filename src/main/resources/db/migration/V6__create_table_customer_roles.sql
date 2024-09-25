CREATE TABLE customer_roles(
	customer_id uuid not null,
    role varchar(50) not null,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);