create database truyum;
use truyum;

create table menu_items(
	menu_id int primary key,
    menu_name varchar(45) not null,
    menu_price decimal(7,2) not null,
    menu_Active varchar(4) not null,
    menu_date date not null,
    menu_category varchar(45) not null, 
    menu_free_deliery varchar(4) not null
);

create table user(
	user_id int primary key,
    user_name varchar(45) not null
);

create table cart(
	cart_id int primary key AUTO_INCREMENT,
    user_id int references user(user_id),
    menu_id int references menu_items(menu_id)
);