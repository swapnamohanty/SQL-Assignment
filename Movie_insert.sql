insert into  customer1(
customer_id ,
first_name,
last_name,
address,
billing_info
)values (
	1,
	'Satwik',
	'Pradhan',
	'Cincinnati, Ohio',
	'4242-4242-4242-4242 623 05/20'
);

insert into customer1(
customer_id ,
first_name,
last_name,
address ,
billing_info
)values (
	2,
	'Josh',
	'Akula',
	'Cincinnati, Montgomery',
	'4249-4242-4242-4246 623 05/20'
);

insert into tickets1(
	ticket_id,
	customer_id ,
	subtotal ,
	movie_id ,
	upc ,
	movie_time 
)VALUES (
	1,
	1,
	280.56,
	123,
	1,
	'2023-04-14'
);

insert into tickets1(
	ticket_id,
	customer_id ,
	subtotal ,
	movie_id ,
	upc ,
	movie_time 
)VALUES (
	2,
	2,
	289.56,
	121,
	5,
	'2023-04-15'
);

insert into  movies1 (
	movie_id,
	title,
	genre,
	movie_rating 
)values (
	1,
	'Sonic',
	'kid',
	'4'
);
insert into  movies1 (
	movie_id,
	title,
	genre,
	movie_rating 
)values (
	2,
	'Mario',
	'fun',
	'5'
);

insert  into concessions1(
	food,
	beverage ,
	candy ,
	customer_id 
)values (
	'Pizza',
	'coke',
	'lindt',
	1
);
insert  into concessions1(
	food,
	beverage ,
	candy ,
	customer_id 
)values (
	'Burger',
	'Juice',
	'Lolly_pop',
	2
);







