CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE customer(
	id uuid NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    name varchar(255) not null,
    email varchar(255) not null unique
);
