# GeraldsGelato

Title: Gerald's Gelato
Slogan: Sundae Smile Scoop

Database
========
Database = icecreamdb
username = nbuser
password = nbuser

CREATE TABLE USERS (
USERNAME VARCHAR(255) NOT NULL, 
EMAIL VARCHAR(255) NOT NULL, 
PASSWORD VARCHAR(64) NOT NULL, 
ROLE VARCHAR(64) NOT NULL, 
PRIMARY KEY (USERNAME));

CREATE TABLE ICECREAM (
ID VARCHAR(5) NOT NULL, 
"NAME" VARCHAR(40), 
PRICE DOUBLE, 
DESCRIPTION LONG VARCHAR, 
RATING INTEGER, 
IMAGE VARCHAR(30), 
"TYPE" VARCHAR(20), 
AVAILABLE INTEGER, 
DESCL LONG VARCHAR, 
INGREDIANTS LONG VARCHAR, 
PRIMARY KEY (ID));

Template Live Preview
=====================
https://technext.github.io/liquorstore/index.html

Free ice cream image
====================
https://www.pexels.com/search/ice%20cream%20background/?orientation=landscape
