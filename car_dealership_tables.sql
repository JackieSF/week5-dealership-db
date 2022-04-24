CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE seller(
	sakes_person_id SERIAL PRIMARY KEY,
	contact_number VARCHAR(15),
	address VARCHAR (100),
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE cars(
	car_serial_number SERIAL PRIMARY KEY,
	age VARCHAR(100),
	make VARCHAR(100),
	model VARCHAR(100), 
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE parts(
	parts_id SERIAL PRIMARY KEY, 
	amount INTEGER
);

CREATE TABLE service(
	service_id SERIAL PRIMARY KEY, 
	quantity INTEGER,
	type_of_service VARCHAR(100)
);
CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY, 
	quantity INTEGER,
	FOREIGN KEY(service_id) REFERENCES service(service_id),
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY (car_serial_number) REFERENCES cars(car_serial_number),
	FOREIGN KEY (parts_id) REFERENCES parts(parts_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY, 
	address VARCHAR(150),
	total_cost INTEGER,
	transaction_date DATE(current),
	billing_info VARCHAR(20),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(sales_person_id) REFERENCES seller(sales_person_id),
	FOREIGN KEY(car_serial_number) REFERENCES cars(car_serial_number)
);

