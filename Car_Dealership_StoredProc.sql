--Stored function for insert  into customer_c
create or replace function add_Customer_c(
_customer_id INTEGER,
_first_name VARCHAR, 
_last_name VARCHAR,
_address VARCHAR,
_email_id VARCHAR
)
returns  void
as $MAIN$
begin
	insert into Customer_c(customer_id, first_name, last_name, address , email_id)
	values(_customer_id, _first_name, _last_name, _address, _email_id  );
	
end;
$MAIN$
language plpgsql;

select add_Customer_c(4, 'Josh', 'Akula', 'Denver', 'jsakula@.com');

select * from  customer_c 
where  customer_id  = 4;

--stored function for insert  into parts 

create or replace function add_Parts(
	_parts_id INTEGER,
	_parts_number INTEGER,
	_parts_description VARCHAR,
	_price NUMERIC ,
	_car_id INTEGER,
	_mechanic_id INTEGER
)
returns void
as $MAIN$
begin 
	insert into Parts(parts_id, parts_number, parts_description, price, car_id,mechanic_id)
	values(_parts_id, _parts_number, _parts_description, _price, _car_id, _mechanic_id  );
end;
$MAIN$
language plpgsql;

select add_Parts(5, 567894, 'Wheels', '127', 5, 6);

select * from  parts 
where  parts_id  = 5;

select  * from  parts p ;