create database just_fork; 
use just_fork; 

CREATE TABLE Restaurants(
	id int NOT NULL AUTO_INCREMENT,
	restaurant_name varchar(255) NOT NULL,
	ubication varchar(255) NOT NULL,
	open_time datetime,
    close_time datetime,
    imageUrl varchar(255),
    userId int NOT NULL, 
	PRIMARY KEY (id)
);   

CREATE TABLE Menus(
	id int NOT NULL AUTO_INCREMENT,
	name_name varchar(255) NOT NULL,
	precio DOUBLE NOT NULL,
    imageUrl varchar(255),
    restaurantId int NOT NULL,
    userId int NOT NULL, 
	PRIMARY KEY (id)
); 

CREATE TABLE Pedidos(
	id int NOT NULL AUTO_INCREMENT,
	monto DOUBLE NOT NULL,
	time_pedido datetime,
	pedidosId varchar(255) NOT NULL,
	restaurantId int NOT NULL,
	userId int NOT NULL, 
    permiso_user int NOT NULL, 
	PRIMARY KEY (id)
);

CREATE TABLE User_admins (
    id int NOT NULL AUTO_INCREMENT, 
    user_name varchar(255) NOT NULL,
    user_lname varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
    ubication varchar(255),
    permiso int NOT NULL, 
    restaurantId int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE Users (
    id int NOT NULL AUTO_INCREMENT, 
    user_name varchar(255) NOT NULL,
    user_lname varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
    ubication varchar(255),
    permiso int NOT NULL, 
    restaurantId int NOT NULL,
	PRIMARY KEY (id)
);

