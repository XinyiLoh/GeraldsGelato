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

CREATE TABLE CART ( 
ID VARCHAR(5), 
"NAME" VARCHAR(30), 
PRICE DOUBLE, 
IMAGE VARCHAR(20), 
QUANTITY INTEGER, 
PRIMARY KEY(ID));

CREATE TABLE CUSTOMER ( 
CUST_ID VARCHAR(15) NOT NULL,
FIRSTNAME VARCHAR(255), 
LASTNAME VARCHAR(255) NOT NULL, 
ADDRESS VARCHAR(255), 
CITY VARCHAR(30), 
STATE VARCHAR(30), 
POSTCODE INTEGER, 
EMAIL VARCHAR(255), 
PHONE VARCHAR(12), 
PRIMARY KEY(CUST_ID));

CREATE TABLE PAYMENT ( 
PAYMENT_ID VARCHAR(15) NOT NULL, 
PAYMENT_AMOUNT DOUBLE NOT NULL, 
PAYMENT_DATE DATE, 
PAYMENT_MODE VARCHAR(30), 
ORDER_STATUS VARCHAR(10) DEFAULT 'packaging', 
CUST_ID VARCHAR(15) NOT NULL, 
PRIMARY KEY(PAYMENT_ID), 
FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(CUST_ID));

CREATE TABLE ORDERDETAILS (
ID VARCHAR(15), 
PAYMENT_ID VARCHAR(15), 
PROD_ID VARCHAR(5),  
QUANTITY INTEGER, 
PRIMARY KEY(ID), 
FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT(PAYMENT_ID), 
FOREIGN KEY(PROD_ID) REFERENCES ICECREAM(ID));

INSERT INTO NBUSER.USERS (USERNAME, EMAIL, PASSWORD, "ROLE") VALUES ('admin', 'admin@mail.com', 'admin', 'admin'); INSERT INTO NBUSER.USERS (USERNAME, EMAIL, PASSWORD, "ROLE") VALUES ('user', 'user@mail.com', 'user', 'user');

INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('001', 'Cotton Candy', 11.0, 'A swirl of pink & purple cotton candy ice cream', 5, 'image/IC1.jpg', 'Classic', 20, 'A creamier and dreamier version of your favorite fluffy, puffy treat. Swirled in pink and purple, for extra cuteness.', 'Cream, Nonfat Milk, Cotton Candy Base (Corn Syrup, Water, Sugar, Flavoring, Sodium Citrate, Citric Acid), Sugar, Corn Syrup, Whey, Artificial Color (Red 3, Blue 1, Red 40), Cellulose Gum, Mono and Diglycerides, Guar Gum, Carrageenan, Polysorbate 80.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('002', 'Mint Chocolate Chip', 11.0, 'Mint ice cream with lots of chocolate chips', 7, 'image/IC2.jpg', 'Classic', 55, 'Chill out. A cool hit of mint flavored ice cream with the joy of chocolate chips throughout.', 'Cream, Nonfat Milk, Sugar, Corn Syrup, Semi-Sweet Chocolate Chips [Sugar, Chocolate Liquor, Chocolate Liquor processed with alkali, Milkfat, Cocoa Butter, Soya Lecithin (added as an Emulsifier)], Whey Powder, Emulsifier/Stabilizer Blend (Cellulose Gum, Mono and Diglycerides, Guar Gum, Carrageenan, Polysorbate 80), Natural Flavor, Artificial Color (Blue 1, Yellow 5).');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('003', 'Pink Lemonade', 11.5, 'A refreshing ice made with sweet pink lemonade', 5, 'image/IC3.jpg', 'Sorbets', 32, 'Strawberry Lemonade Punch Sherbet. Amazin Raisin. Sweet honey raisin ice cram with softened raisin pieces.', 'Water, Sugar, Strawberry Puree [Strawberries, Sugar, Potassium Sorbate (Preservative), Fruit and Vegetable Juice for Color, Citric Acid], Corn Syrup, Nonfat Milk, Cream, Lemon Juice Concentrate, Whey Powder, Stabilizer Blend (Carob Bean Gum, Modified Cellulose, Guar Gum), Natural and Artificial Flavors, Citric Acid, Yellow 5, Yellow 6.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('004', 'Maui Brownie Madness', 12.0, 'Chocolate frozen yogurt with chunks of brownie and macadamia nuts, ribboned with chocolate fudge', 8, 'image/IC4.jpg', 'Frozen Yogurt', 46, 'Chocolate flavoured frozen yogurt with chunks of brownie and macadamia nuts, and a chocolate fudge ribbon.', 'Nonfat Milk, Cream, Sugar, Baked Brownie [Sugar, Unenriched Wheat Flour, Water, Cocoa Processed with Alkali, Refined Soybean Oil, Corn Starch, Pasteurized Eggs, Nonfat Dry Milk, Natural Flavour (Contains Milk), Salt, Baking Soda], Dark Fudge Ribbon [Corn Syrup, Water, High Fructose Corn Syrup, Sweetened Condensed Milk (Milk, Sugar), Cocoa Processed with Alkali, Modified Corn Starch (Hydroxypropyl Distarch Phosphate), Hydrogenated Coconut Oil, Glycerine, Salt, Carrageenan, Natural Flavour, Soy Lecithin (an Emulsifier)], Yogurt Base [Nonfat Milk, Cream, Live Yogurt Culture*], Chocolate Liquor and Cocoa Processed with Alkali, Macadamia Nut Pieces [Macadamia Nuts, Cottonseed Oil, (May Contain Traces of Other Tree Nuts {Almonds, Brazil Nuts, Cashews, Filberts, Pecans, Pine Nuts, Pistachio Nuts, Walnuts})], Corn Syrup, Stabilizer/Emulsifier Blend [Guar Gum, Mono and Diglycerides, Xanthan Gum, Polysorbate 80, Carrageenan].');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('005', 'Triple Grape Ice', 11.0, 'Red and white grape ices with a Concord grape ribbon', 7, 'image/IC5.jpg', 'Sorbets', 17, 'Vanilla ice cream with cashews and a black raspberry.', 'Water, Sugar, Corn Syrup, Nonfat Milk, Cream, Raspberry Base [Raspberry Puree (Red Raspberry Puree Concentrate, Sugar), Natural and Artificial Flavour, Artificial Colour (Allura Red AC, Brilliant Blue FCF)], Artificial Colour (Tartrazine, Brilliant Blue FCF, Sunset Yellow FCF), Whey Powder, Citric Acid, Stabiliser Blend [Locust Bean Gum, Modified Cellulose, Guar Gum], Natural and Artificial Flavour.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('006', 'Vanilla', 10.0, 'Made with fresh cream and real vanilla', 3, 'image/IC6.jpg', 'Classic', 71, 'Vanilla ice cream, like other flavors of ice cream, was originally created by cooling a mixture made of cream, sugar, and vanilla above a container of ice and salt.', 'Cream, Nonfat Milk, Sugar, Corn Syrup, Stabiliser/Emulsifier Blend (Mono and Diglycerides, Cellulose Gum, Guar Gum, Carrageenan), Natural Flavour, Beta Carotene for Colour, Caramel Colour.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('007', 'Chocolate', 10.0, 'Our extra rich chocolate ice cream', 4, 'image/IC7.jpg', 'Classic', 84, 'Chocolate ice cream is generally made by blending cocoa powder along with the eggs, cream, vanilla and sugar used to make vanilla ice cream.', 'Cream, Nonfat Milk, Sugar, Corn Syrup, Chocolate Liquor and Cocoa processed with alkali, Whey Powder, Stabiliser/Emulsifier Blend (Mono and Diglycerides, Cellulose Gum, Guar Gum, Carrageenan).');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('008', 'Very Berry Strawberry', 11.5, 'Strawberry ice cream loaded with real strawberries', 8, 'image/IC8.jpg', 'Classic', 78, 'Very Berry Strawberry Ice Cream combines a bunch of pureed strawberries with a sweet vanilla cream base.', 'Cream, Stabilised Strawberries [Strawberries, High Fructose Corn Syrup, Sugar, Locust Bean Gum, Citric Acid, Xanthan Gum], Nonfat Milk, Sugar, Strawberry Fruit Base [Strawberry Puree, Sugar, High Fructose Corn Syrup, Water, Natural and Artificial Flavour, Citric Acid, Locust Bean Gum, Fruit and Vegetable Juice for Colour (Carrot, Blackcurrant)], Corn Syrup, Whey Powder, Stabiliser/Emulsifier Blend [Mono and Diglycerides, Cellulose Gum, Guar Gum, Carrageenan], Red Beet Colour, Beta Carotene (for Colour).');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('009', 'Rainbow Sherbet', 12.0, 'Orange, pineapple, and raspberry flavored sherbets all mixed up in a rainbow of fruity flavor', 9, 'image/IC9.jpg', 'Sorbets', 54, 'Pineapple, orange and raspberry flavored sherbets battle for your taste bud love in this trifecta of fruit flavored sherbets.', 'Water, Sugar, Corn Syrup, Nonfat Milk, Cream, Pineapple Puree Base (Pineapple, Sugar, Corn Syrup, Pineapple Juice Concentrate, Glycerine, Natural Flavor, Guar Gum, Locust Bean Gum, Citric Acid, Ascorbic Acid), Orange Puree (Water, Sugar, Orange Juice Concentrate, Orange Pulp Cells, Citric Acid, Orange Oil), Raspberry Puree (Red Raspberry Puree Concentrate, Sugar), Whey, Citric Acid, Stabilizer Blend (Locust Bean Gum, Modified Cellulose, Guar Gum), Elderberry Juice Concentrate (For Color), Natural Flavors, Annatto Color.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('010', 'Blue Raspberry Sherbet', 12.0, 'A too cool, totally bright blue raspberry flavored sherbet.', 3, 'image/IC10.jpg', 'Sorbets', 10, 'This all-new flavor features muffin-flavored ice cream with blueberry pieces and a blueberry ribbon, making for a delicious treat any time of the day', 'Made with raw honey, lemon juice, and fresh fruit, sorbet is just an upgraded, frozen version of a fruit snack, but so much better');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('011', 'Citrus Twist Ice', 12.0, 'Ice made with the tangy twist of lemons and limes.', 14, 'image/IC11.jpg', 'Sorbets', 34, 'Ice made with the tangy flavour of lemons and limes.', 'Water, Sugar, Corn Syrup, Citric Acid, Stabiliser Blend [Carob Bean Gum, Cellulose Gum, Guar Gum], Natural Flavour, Fruit Concentrate for Colour (Pumpkin), Brilliant Blue FCF.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('012', 'Love Potion #31', 11.0, 'Cupid''s white chocolate and raspberry ice creams swirled with a raspberry ribbon and loaded with raspberry-filled chocolate cups and chocolate chips.', 10, 'image/IC12.jpg', 'Classic', 42, 'Fall in love with white chocolate flavored and raspberry ice creams, a raspberry ribbon, chocolate chips, and raspberry-filled chocolate flavored hearts.', 'Cream, Nonfat Milk, Raspberry Puree (Red Raspberry Puree Concentrate, Sugar), Candies [Sugar, Corn Syrup, Coconut Oil, Cocoa Processed with Alkali, Palm Kernel Oil, Raspberries, Milkfat, Cocoa, Soy Lecithin (an Emulsifier), Natural Flavors, Citric Acid], Sugar, Corn Syrup, Chocolate Bits [Sugar, Coconut Oil, Cocoa Powder Processed with Alkali, Cocoa Powder, Butter Oil (Milk), Soya Lecithin');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('013', 'Chocolate Mousse Royale', 12.0, 'A light chocolate ice cream with chocolate royale flavor bursts and a mousse-like texture.', 9, 'image/IC13.jpg', 'Frozen Yogurt', 45, 'Rich chocolate mousse flavoured ice cream with chocolate flavoured flakes.', 'Cream, Sugar, Nonfat Milk, Chocolate Flavoured Flakes [Sugar, Hydrogenated Coconut Oil, Cocoa processed with alkali, Cocoa, Vanilla Extract, Soy Lecithin, Salt], Corn Syrup, Mousse Base [Palm Kernel Oil, Palm Oil, Corn Syrup Solids, Sodium Caseinate, Propylene Glycol Monostearate, Mono and Diglycerides, Cellulose Gum, Acetylated Monoglycerides, Guar Gum, Carrageenan], Chocolate Liquor and Cocoa processed with alkali, Whey Powder.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('014', 'Cookies n Cream', 12.0, 'Vanilla ice cream with lots of cookie chunks throughout.', 13, 'image/IC14.jpg', 'Frozen Yogurt', 44, 'Vanilla flavoured ice cream with cookie pieces.', 'Cream, Nonfat Milk, Creme-Filled Chocolate Sandwich Cookies [Enriched Wheat Flour (Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Sugar, Palm Oil, Soybean Oil, Cocoa Processed with Alkali, Dried Cane Syrup, Natural Flavours, Corn Starch, Sodium Bicarbonate, Salt, Soy Lecithin (an Emulsifier), Vanilla Bean, Coconut Oil], Sugar, Corn Syrup, Whey Powder, Stabiliser/Emulsifier Blend (Mono and Diglycerides, Cellulose Gum, Guar Gum, Carrageenan), Natural and Artificial Flavour, Beta Carotene for Colour, Caramel Colour.');
INSERT INTO NBUSER.ICECREAM (ID, "NAME", PRICE, DESCRIPTION, RATING, IMAGE, "TYPE", AVAILABLE, DESCL, INGREDIANTS) 
	VALUES ('015', 'It Takes Two To Mango', 12.0, 'Luscious mango ice cream dancing with a tangy mango ribbon.', 9, 'image/IC15.jpg', 'Frozrn Yogurt', 21, 'Luscious mango ice cream dancing with a tangy mango ribbon.', 'Cream, Mango Flavoured Ribbon [Corn Syrup, Mango, Sugar, Modified Corn Starch, Water, Natural Flavour, Citric Acid, Carrageenan, Beta Carotene (for Colour), Elderberry Juice Concentrate (for Colour)], Nonfat Milk, Mango Flavoured Base [Mango Pulp, Sugar, Corn Syrup, Natural Flavour, Water, Ascorbic Acid, Guar Gum, Locust Bean Gum], Sugar, Corn Syrup, Whey Powder, Stabiliser/Emulsifier Blend [Mono and Diglycerides, Cellulose Gum, Guar Gum, Carrageenan], Natural and Artificial Flavour, Beta Carotene (for Colour), Turmeric-Curcumin (for Colour), Malic Acid.');

Template Live Preview
=====================
https://technext.github.io/liquorstore/index.html

Free ice cream image
====================
https://www.pexels.com/search/ice%20cream%20background/?orientation=landscape
