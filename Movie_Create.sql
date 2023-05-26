create table customer1(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)

);
CREATE TABLE Tickets1(
  ticket_id SERIAL PRIMARY KEY ,
  customer_id INTEGER,
  FOREIGN key (customer_id) references customer1(customer_id),
  subtotal NUMERIC(8,2),
  movie_id INTEGER not NULL,
  upc INTEGER not NULL,
  Movie_time DATE
 
);

CREATE TABLE Movies1 (
  movie_id SERIAL primary key,
  title VARCHAR(150),
  genre VARCHAR(150),
  movie_rating VARCHAR(100)
 
);

CREATE TABLE concessions1 (
  food VARCHAR(100),
  beverage VARCHAR(100),
  candy VARCHAR(150),
  customer_id INTEGER NOT NULL,
  FOREIGN key(customer_id) references customer1(customer_id)
);

drop table customer1;
drop table tickets1;
drop table concessions1 ;
drop table movies1



