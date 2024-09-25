CREATE TABLE book(
	id uuid NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    name varchar(255) not null,
    price decimal(10,2) not null,
    status varchar(255) not null,
    customer_id uuid not null,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);
