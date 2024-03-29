/********************************************************
* This script creates the database named SFRC_derekatiller
*********************************************************/
DROP DATABASE IF EXISTS SFRC_derekatiller;
CREATE DATABASE SFRC_derekatiller;

USE SFRC_derekatiller;

-- create the tables for the database
CREATE TABLE client (
  client_id          INT            PRIMARY KEY   AUTO_INCREMENT,
  first_name      VARCHAR(100)   NOT NULL,
  last_name       VARCHAR(100)   NOT NULL,     
  street_1        VARCHAR(100)   NOT NULL,     
  city            VARCHAR(100)   NOT NULL,
  state           CHAR(2)        NOT NULL,
  zip             CHAR(5)        NOT NULL,
  phone           CHAR(10)       NOT NULL,
  email           VARCHAR(100)   
);

CREATE TABLE reservation (
  reservation_id     INT            PRIMARY KEY   AUTO_INCREMENT,
  building_id        INT            NOT NULL,
  client_id          INT            NOT NULL,
  deposit            DECIMAL(9,2)  NOT NULL,
  arrival_date       DATE           NOT NULL,
  departure_date     DATE           NOT NULL,
  pet_type           CHAR(3)        NOT NULL,
  pet_deposit        DECIMAL(9,2)  NOT NULL,
  cleaning_fee       DECIMAL(9,2)  NOT NULL,
  rental_rate        DECIMAL(9,2)  NOT NULL,
  payment_method     VARCHAR(10)       NOT NULL,
  CONSTRAINT reservation_fk_client
    FOREIGN KEY (client_id)
    REFERENCES client (client_id)
  CONSTRAINT reservation_fk_building
    FOREIGN KEY (building_id)
    REFERENCES condo (condo_id)
);

CREATE TABLE owner (
  owner_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  first_name      VARCHAR(100)   NOT NULL,
  last_name       VARCHAR(100)   NOT NULL,     
  street_1        VARCHAR(100)   NOT NULL,     
  city            VARCHAR(100)   NOT NULL,
  state           CHAR(2)        NOT NULL,
  zip             CHAR(5)        NOT NULL,
  phone           CHAR(10)       NOT NULL,
  email           VARCHAR(100)   NOT NULL
);

CREATE TABLE condo (
  condo_id           INT            PRIMARY KEY,
  owner_id           INT            NOT NULL,
  rate_id        INT            NOT NULL,
  type             VARCHAR(10)       NOT NULL,
  accepts_pets    boolean       NOT NULL,
  wifi            boolean       NOT NULL,
  CONSTRAINT condo_fk_owner
    FOREIGN KEY (owner_id)
    REFERENCES owner (owner_id)
  CONSTRAINT condo_fk_rate
    FOREIGN KEY (rate_id)
    REFERENCES rate (rate_id)
);

CREATE TABLE property_rate (
  rate_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  season_id         INT            NOT NULL,
  rate              DECIMAL(9,2)  NOT NULL,
  CONSTRAINT property_rate_fk_season
    FOREIGN KEY (season_id)
    REFERENCES season (season_id)
);

CREATE TABLE season (
  season_id         INT            PRIMARY KEY   AUTO_INCREMENT,
  start_date        DATE           NOT NULL,
  end_date          DATE           NOT NULL
);


-- Insert data into the tables
INSERT INTO client (first_name, last_name, street_1, city, state, zip, phone, email) VALUES
("Harriet", "O'Casey", "4088 Ottumwa Way", "Mentira", "IL", "61788", "3034174438", "harrieto@com.net"),
("John", "Grainger", "2256 N Santa Fe Dr.", "Iliase", "MD", "23456", "3034444475", "johnny@com.net"),
("Steve Snider", "39430 Big Rock Road", "Flame Throw", "TN", "59012", "7174201212", "snidley@com.net"),
("David", "Stocking", "291-A Gorgonzola", "Cleo", "KS", "81029", "6164102990", "stockingfeet@com.net"),
("Frank", "Wheeler", "2225 Iola Ave", "Catuchi", "PA", "56231", "3034140404", "fwheeler@com.net"),
("Brittany", "Foxe", "297-B Gorgonzola", "Cleo", "KS", "81029", "6164102942", "bfoxy@com.net"),
("Fran", "McCoy", "1440 Manchester Way", "Mountain View", "CO", "87757", "3034778787", "franm@com.net"),
("Joan", "Thomas", "667438 E. 91st St.", "Baseboard", "PA", "56987", "6166849385", "joanie@com.net"),  
("Ted", "Stiggle", "12920 Industrial Workers", "Scraggy View", "CO", "82191", "3034211410", "thestig@com.net"),
("Dean", "Farrell", "12920 Industrial Workers", "Scraggy View", "CO", "82191", "3034211410", "farrelld@com.net"),
("Marsha", "Waltz", "1900 Industrial Way", "Fargone", "NC", "41923", "2154392349", "waltzer@com.net"),
("Janet", "Logan", "860 Charleston St.", "Oxalys", "NY", "54133", "3034411321", "janetlogan@com.net"),
("Linda", "Paloma", "1928 Highway 12", "Portugal", "NC", "82394", "3174239417", "palomafam@com.net"),
("Gregory", "Hansen", "6065 Rainbow Falls Rd", "Roselle", "PA", "57203", "5054720398", "gregghansesn@com.net"),
("Pat", "Carroll", "4018 Landers Lane", "Lafayette", "OH", "34548", "3034762718", "pcarroll@com.net"),
("Bee", "Wolf", "1775 Bear Trail", "Outcroppin", "WY", "74345", "4044434863", "beew@com.net"),
("Scott", "Crumple", "580 E Main St.", "La Garita", "CO", "88413", "3034441324", ""),
("Elliot", "Harvey", "34 Kerry Drive", "El Mano", "MD", "23646", "505406464", ""),  
("Carrie", "Zygote", "8607 Ferndale St", "Montgomery", "AL", "60631", "3034063104", "carriez@com.net"),
("Abbie", "Loftus", "8077 Montana Place", "Big Fish", "MT", "86505", "6064680858", "aloftus@com.net"),
("Micah", "Dowenger", "1515 Elliot Way", "Asheville", "NC", "28801", "8281216445", "mdowenger@com.net")


INSERT INTO owner (first_name, last_name, street_1, city, state, zip, phone, email) VALUES
("Sandy", "Claus", "123 North Pole Dr.", "Snowshoe", "PA", "23987", "4046780909", "sandyclaus@com.net"),
("Richard", "Compote", "645 Snowpass Road", "Plymouth", "MD", "48170", "4135559876", "richc@com.net"),
("Lucille", "Livingood", "63 Park Avenue", "New York", "NY", "12340", "0075553636", "livingood@com.net"),
("Charles", "Brown", "8706 Main Street", "Snowshoe", "CO", "48000", "3035551236", "charlie@com.net"),
("Jack", "Bauer", "469 Carriage Hill Dr", "Washington", "DC", "20001", "7135553872", "jackbauer@com.net"),
("Barbie", "Beckwith", "9010 Upper Crust Way", "Littleton", "NY", "20127", "0075559999", "babs@com.net"),
("Barney", "Rubble", "1616 Stonehenge", "Granite", "CO", "80234", "7205551456", "rockhead@com.net"),
("Fred", "Flintstone", "26 Quarry Drive", "Granite", "CO", "80234", "7205557676", "freddie@com.net"),
("Larry", "Lizard", "908 Green Mtn Rd.", "Green Mountain", "UT", "23987", "7655554392", "lizzard@com.net"),
("Gwen", "Grizzlie", "56231 Bear Lane", "Bear Lake", "MD", "23123", "4136789808", "griz@com.net"),
("Olivia", "Pope", "878 Fort Road", "Washington", "DC", "20001", "4045558877", "opa@com.net"),
("Robert", "Smith", "5223 Mountain Lane", "Ft. Morgan", "WV", "34665", "5055551456", "bobbys@com.net"),
("Luke", "Taylors", "375 Windward Way", "Asheville", "NC", "28801", "8284459776", "luket@com.net")

INSERT INTO condo (type, accepts_pets, wifi) VALUES
-- not sure but maybe need to use the property code from the word doc here instead of auto incremented value for condo_id
("SandsOF3BR", "Yes", "Yes"),
("SandsOV3BR", "Yes", "Yes"),
("Tides3BR", "No", "No"),
("Tides3BR", "No", "Yes"),
("SandsOF2BR", "No", "Yes"),
("Tides2BR", "No", "Yes"),
("SandsOV2BR", "No", "No"),
("SandsOF2BR", "Yes", "Yes"),
("Tides2BR", "Yes", "No"),
("Tides3BR", "Yes", "Yes"),
("SandsOV2BR", "Yes", "No"),
("SandsOF3BR", "No", "No"),
("Tides3BR", "Yes", "Yes"),
("SandsOF3BR", "Yes", "Yes"),
("SandsOV3BR", "Yes", "Yes"),
("Tides3BR", "No", "No"),
("Tides3BR", "No", "Yes"),
("SandsOF2BR", "No", "Yes"),
("Tides2BR", "No", "Yes"),
("SandsOV2BR", "No", "No"),
("SandsOF2BR", "Yes", "Yes"),
("Tides2BR", "Yes", "No"),
("Tides3BR", "Yes", "Yes"),
("SandsOV2BR", "Yes", "No"),
("SandsOF3BR", "No", "No"),
("Tides3BR", "Yes", "Yes"),
("SandsOF3BR", "Yes", "Yes"),
("SandsOF3BR", "Yes", "Yes"),
("SandsOV3BR", "Yes", "Yes"),
("Tides3BR", "No", "No"),
("Tides3BR", "No", "Yes"),
("SandsOF2BR", "No", "Yes"),
("Tides2BR", "No", "Yes"),
("SandsOV2BR", "No", "No"),
("SandsOF2BR", "Yes", "Yes"),
("Tides2BR", "Yes", "No"),
("Tides3BR", "Yes", "Yes"),
("SandsOV2BR", "Yes", "No"),
("SandsOF3BR", "No", "No"),
("Tides3BR", "Yes", "Yes")

INSERT INTO season (start_date, end_date) VALUES
('2020-01-01', '2020-03-31'),
('2020-04-01', '2020-05-31'),
('2020-06-01', '2020-08-31'),
('2020-09-01', '2020-10-31'),
('2020-11-01', '2020-12-31')

INSERT INTO property_rate (rate) VALUES
(400),
(450),
(375),
(425),
(350),
(375),
(475),
(525),
(425),
(475),
(375),
(400),
(600),
(650),
(575),
(625),
(550),
(575),
(625),
(450),
(500),
(475),
(525),
(425),
(475),
(375),
(400),
(400),
(450),
(375),
(425),
(350),
(375)

INSERT INTO reservation (deposit, arrival_date, departure_date, pet_type, pet_deposit, cleaning_fee, rental_rate, payment_method) VALUES
-- need to adjust cleaning fees
(100, 2019-01-06, 2019-01-13, NULL, NULL, 75, 375, "Cash"),
(100, 2019-01-13, 2019-01-27, NULL, NULL, 75, 800, "AMEX"),
(100, 2019-01-20, 2019-02-03, NULL, NULL, 75, 750, "Check"),
(100, 2019-02-03, 2019-02-24, "cat", 150, 75, 1050, "Check"),
(100, 2019-02-17, 2019-02-24, "dog", 150, 75, 375, "Visa"),
(100, 2019-02-10, 2019-02-24, NULL, NULL, 75, 900, "AMEX"),
(100, 2019-02-24, 2019-03-03, NULL, NULL, 75, 350, "PayPal"),
(100, 2019-03-03, 2019-03-10, NULL, NULL, 75, 375, "Visa"),
(100, 2019-03-17, 2019-03-24, NULL, NULL, 75, 450, "MasterCard"),
(100, 2019-04-07, 2019-04-14, NULL, NULL, 75, 525, "MasterCard"),
(100, 2019-04-07, 2019-04-17, "dog", 150, 75, 400, "Check"),
(100, 2019-04-14, 2019-04-21, NULL, NULL, 75, 400, "MasterCard"),
(100, 2019-05-05, 2019-05-19, "cat", 150, 75, 950, "AMEX")
(100, 2019-05-05, 2019-05-12, NULL, NULL, 75, 400, "MasterCard"),
(100, 2019-05-05, 2019-05-19, NULL, NULL, 75, 950, "PayPal"),
(100, 2019-05-05, 2019-05-12, NULL, NULL, 75, 525, "Cash"),
(100, 2019-05-12, 2019-05-19, NULL, NULL, 75, 400, "MasterCard"),
(100, 2019-05-12, 2019-05-19, NULL, NULL, 75, 400, "Visa"),
(100, 2019-05-19, 2019-05-26, "dog", 150, 75, 425, "Visa"),
(100, 2019-06-02, 2019-06-16, NULL, NULL, 75, 1200, "PayPal"),
(100, 2019-06-02, 2019-06-23, NULL, NULL, 75, 1950, "PayPal"),
(100, 2019-06-09, 2019-06-23, "dog", 150, 75, 500, "Check"),
(100, 2019-06-16, 2019-06-23, NULL, NULL, 75, 500, "MasterCard"),
(100, 2020-01-05, 2020-01-12, NULL, NULL, 75, 375, "Check"),
(100, 2020-01-19, 2020-02-02, NULL, NULL, 75, 900, "MasterCard"),
(100, 2020-02-02, 2020-02-09, NULL, NULL, 75, 350, "PayPal"),
(100, 2020-02-09, 2020-02-16, "dog", 150, 75, 375, "Check"),
(100, 2020-03-02, 2020-03-23, "cat", 150, 75, 1200, "AMEX")


