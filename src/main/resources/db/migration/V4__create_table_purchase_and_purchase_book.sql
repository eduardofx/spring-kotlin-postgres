CREATE TABLE purchase(
    id uuid NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    customer_id uuid not null,
    nfe varchar(255),
    price DECIMAL(15,2) not null,
    created_at timestamptz(0) not null DEFAULT now(),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE purchase_book(
	purchase_id uuid not null,
	book_id uuid not null,
    FOREIGN KEY (purchase_id) REFERENCES purchase(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
);