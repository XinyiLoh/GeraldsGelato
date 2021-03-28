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
"NAME" VARCHAR(30) NOT NULL, 
PRIMARY KEY (USERNAME));

INSERT INTO NBUSER.USERS (USERNAME, EMAIL, PASSWORD, "NAME") 
	VALUES ('1', 'shawn@gmail.com', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'shawn');
INSERT INTO NBUSER.USERS (USERNAME, EMAIL, PASSWORD, "NAME") 
	VALUES ('2', 'staff@gmail.com', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'staff');
INSERT INTO NBUSER.USERS (USERNAME, EMAIL, PASSWORD, "NAME") 
	VALUES ('3', 'abc@gmail.com', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Abc');

CREATE TABLE USER_GROUPS (USERNAME VARCHAR(255) NOT NULL, GROUPNAME VARCHAR(32) NOT NULL, PRIMARY KEY (USERNAME));

INSERT INTO NBUSER.USER_GROUPS (USERNAME, GROUPNAME) 
	VALUES ('3', 'users');
INSERT INTO NBUSER.USER_GROUPS (USERNAME, GROUPNAME) 
	VALUES ('2', 'staffs');
INSERT INTO NBUSER.USER_GROUPS (USERNAME, GROUPNAME) 
	VALUES ('1', 'admins');


Realm
=====
Realm Name: jdbcRealm
Class Name: com.sun.enterprise.security.auth.realm.jdbc.JDBCRealm

JAAS Context : jdbcRealm
JNDI : java:app/jdbc/icecreamdb
User Table : USERS
User Name Column : USERNAME
Password Column : PASSWORD
Group Table : USER_GROUPS
Group Table User Name Column : USERNAME
Group Name Column : GROUPNAME
Password Encription Algorithm : none
Digest Algorithm : SHA-256
Encoding : Base 84

Template Live Preview
=====================
https://technext.github.io/liquorstore/index.html

Free ice cream image
====================
https://www.pexels.com/search/ice%20cream%20background/?orientation=landscape
