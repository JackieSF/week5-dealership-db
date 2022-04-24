
CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name)
	VALUES(_customer_id, _first_name, _last_name);
END;
$$

SELECT add_customer(1,'A Pimp','Named Slickback');

select *
from seller;

CREATE OR REPLACE FUNCTION add_seller(sales_person_id SERIAL, contact_number VARCHAR, address VARCHAR, first_name VARCHAR, last_name VARCHAR)
RETURNS void
AS $$
BEGIN
	INSERT INTO seller(sales_person_id, contact_number, address, first_name, last_name)
	VALUES(sales_person_id, contact_number, address, first_name, last_name);
END;
$$
LANGUAGE plpgsql;

select add_seller(1,'678-999-8212','1423 W 126th St, Los Angeles, CA','DeAndre','Cortez-Way');