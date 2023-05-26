create table Customer_c (
	customer_id SERIAL primary key,
	first_name VARCHAR(100) not null,
	last_name VARCHAR(100),
	address VARCHAR(150),
	email_id VARCHAR(150)
);

create table Car(
	car_id SERIAL primary key,
	serial_no INTEGER NOT NULL,
	make VARCHAR(100),
	model VARCHAR(100),
	year_in_made TIMESTAMP,
	car_for_sale BOOL,
	old_new VARCHAR(15)
);

create table Salesperson(
	salespersons_id SERIAL primary key,
	first_name VARCHAR(100) not NULL,
	last_name VARCHAR(100) not NULL,
	contact_info VARCHAR(100) 
);

create table Mechanics(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	car_id INTEGER not null,
	foreign key(car_id) references Car(car_id)
	
);

create table Parts(
	parts_id SERIAL primary key,
	parts_number INTEGER,
	parts_description VARCHAR(150),
	price NUMERIC(8,2),
	car_id INTEGER,
	mechanic_id INTEGER
);



CREATE TABLE Serviceticket (
  	serviceticket_id SERIAL primary KEY,
  	received_date DATE,
  	returned_date DATE,
  	review VARCHAR(150),
   	car_id INTEGER not null,
  	customer_id INTEGER not null,
  	mechanic_id INTEGER not null,
  	parts_id INTEGER,
  	foreign key(car_id) references Car(car_id),
  	foreign key (customer_id) references Customer_c(customer_id),
  	foreign key(mechanic_id) references Mechanics(mechanic_id)
);



create table Sales_invoice(
	invoive_id SERIAL primary key,
	sales_date DATE,
	price NUMERIC(8,2),
	customer_id INTEGER,
	car_id INTEGER,
	salespersons_id INTEGER,
	foreign KEY(customer_id) references Customer_c(customer_id),
	foreign KEY(car_id) references Car(car_id),
	foreign key (salespersons_id) references Salesperson(salespersons_id)
	
);

ALTER TABLE sales_invoice 
RENAME COLUMN price to car_price;

s




