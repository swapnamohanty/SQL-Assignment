INSERT into Customer_c(
	customer_id,
	first_name,
	last_name,
	address,
	email_id 
)Values(
	1,
	'Satwik',
	'Pradhan',
	'Mason, Ohio',
	'Spabcd@mail.com'
);

INSERT into Customer_c(
	customer_id,
	first_name,
	last_name,
	address,
	email_id 
)Values(
	2,
	'Servesh',
	'Kishore',
	'Montgomery, Ohio',
	'Sknmcd@mail.com'
);
INSERT into Customer_c(
	customer_id,
	first_name,
	last_name,
	address,
	email_id 
)Values(
	3,
	'Ayansh',
	'Singh',
	'Kenwood, Ohio',
	'AYspcd@mail.com'
);

insert into Car(
	car_id,
	serial_no,
	make,
	model,
	year_in_made,
	car_for_sale,
	old_new 
) values(
	1,
	234567,
	'Toyota',
	'rav4',
	'2018-10-15',
	'true',
	'old'
	
);

insert into Car(
	car_id,
	serial_no,
	make,
	model,
	year_in_made,
	car_for_sale,
	old_new 
) values(
	2,
	234789,
	'Toyota',
	'Corolla',
	'2019-11-15',
	'true',
	'old'
	
);

insert into Car(
	car_id,
	serial_no,
	make,
	model,
	year_in_made,
	car_for_sale,
	old_new 
) values(
	3,
	234567,
	'Honda',
	'City',
	'2022-11-19',
	'true',
	'New'
	
);

insert  into salesperson (
	salespersons_id,
	first_name ,
	last_name ,
	contact_info  
)values(
	1,
	'Penny',
	'Samal',
	'5_steet_road'
);

insert  into salesperson (
	salespersons_id,
	first_name ,
	last_name ,
	contact_info  
)values(
	2,
	'Manya',
	'Sahoo',
	'10_street_road'
);

insert  into salesperson (
	salespersons_id,
	first_name ,
	last_name ,
	contact_info  
)values(
	3,
	'Nachi',
	'Das',
	'19_street_road'
);
select  * from salesperson s ; 

update  salesperson 
set contact_info  = '5_street_road'
where salespersons_id = 1;

insert  into  mechanics(
	mechanic_id,
	first_name ,
	last_name ,
	car_id 
	
)values (
	1,
	'Muffy',
	'Alexander',
	1
) ;

insert  into  mechanics(
	mechanic_id,
	first_name ,
	last_name ,
	car_id 
	
)values (
	2,
	'Jase',
	'Cupps',
	2
) ;

insert  into  mechanics(
	mechanic_id,
	first_name ,
	last_name ,
	car_id 
	
)values (
	3,
	'calvin',
	'Alexander',
	3
) ;

insert  into  parts (
	parts_id,
	parts_number,
	parts_description ,
	price,
	car_id,
	mechanic_id
)values(
	1,
	45678,
	'carburetor',
	220.78,
	1,
	5
);

insert  into  parts (
	parts_id,
	parts_number,
	parts_description ,
	price,
	car_id,
	mechanic_id
)values(
	2,
	59378,
	'fuel injector nozzle',
	434.78,
	2,
	2
);

insert  into  parts (
	parts_id,
	parts_number,
	parts_description ,
	price,
	car_id,
	mechanic_id
)values(
	3,
	78902,
	'wiper',
	128.76,
	NULL,
	NULL
);


insert  into  serviceticket (
	serviceticket_id,
	received_date,
	returned_date,
	review ,
	car_id ,
	customer_id,
	mechanic_id ,
	parts_id

) values (
	1,
	'2021-08-14',
	'2021-08-29',
	'Good',
	1,
	1,
	2,
	3
);
insert  into  serviceticket (
	serviceticket_id,
	received_date,
	returned_date,
	review ,
	car_id ,
	customer_id,
	mechanic_id ,
	parts_id

) values (
	2,
	'2022-02-15',
	'2022-02-20',
	'Satisfy',
	3,
	2,
	3,
	Null
);

insert  into  serviceticket (
	serviceticket_id,
	received_date,
	returned_date,
	review ,
	car_id ,
	customer_id,
	mechanic_id ,
	parts_id

) values (
	3,
	'2021-08-14',
	'2021-08-29',
	'No comments',
	2,
	3,
	1,
	Null
	
);

insert  into sales_invoice (
	invoive_id ,
	sales_date ,
	car_price ,
	customer_id ,
	car_id  ,
	salespersons_id 
)values (
	1,
	'2022-12-23',
	40000,
	1,
	2,
	3
);
insert  into sales_invoice (
	invoive_id ,
	sales_date ,
	car_price ,
	customer_id ,
	car_id  ,
	salespersons_id 
)values (
	2,
	'2023-01-28',
	45678.98,
	3,
	1,
	2
);
insert  into sales_invoice (
	invoive_id ,
	sales_date ,
	car_price ,
	customer_id ,
	car_id  ,
	salespersons_id 
)values (
	3,
	'2021-04-18',
	40000,
	3,
	3,
	1
);







